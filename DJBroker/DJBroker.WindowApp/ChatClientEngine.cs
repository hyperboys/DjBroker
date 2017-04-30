
using Microsoft.AspNet.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Threading;
using DJBroker.Model;

namespace DJBroker.WindowApp
{
    public class ChatClientEngine : IDisposable
    {
        private const string CHAT_HUB = "ChatHub";
        private const string GET_FROM_USER = "GetFromUser";
        private const string GET_MESSAGE = "GetMessage";
        private const string SENT_TO_CLIENT = "SendToClient";
        private const string START_ADMIN = "StartAdmin";

        public string ServerUri { get; private set; }
        public IHubProxy HubProxy { get; set; }
        public HubConnection Connection { get; set; }
        public string UserName { get; set; }
        public ObservableCollection<ChatClient> ChatClients { get; set; }
        public string focusClientId { get; set; }
        

        public Action<ChatClient,ChatMessage> MessageUpdated { get; set; }
        public Action<string> ConnectionSuccess { get; set; }
        public Action ConnectionFailed { get; set; }
        public Action ConnectionClosed { get; set; }

        private Window _mainWindow;

        public ChatClientEngine(Window mainWindow, string userName ="") {
            ServerUri = ConfigurationManager.AppSettings["ChatServerUri"];
            _mainWindow = mainWindow;
            UserName = userName;
            MessageUpdated = (chatClient, message) => { };
            ConnectionSuccess = (connectionId) => { };
            ConnectionFailed = () => { };
            ConnectionClosed = () => { };
            ChatClients = new ObservableCollection<ChatClient>();
        }
        
        public void SendToClient(string message, string clinetId) {
            HubProxy.Invoke(SENT_TO_CLIENT, UserName, message, clinetId);
        }

        private void AddMessageToRoom(string roomId, string clientId, string fromName, string messageText, string dt, bool isAdminMessage) {
            var message = new ChatMessage()
            {
                From = fromName,
                Message = messageText,
                SentDateTime = dt,
                IsAdminMessage = false
            };
            var isExistChatClient = ChatClients.Any(i => i.RoomId == roomId);
            var chatClient = isExistChatClient
                ? ChatClients.First(i => i.RoomId == roomId)
                : new ChatClient()
                {
                    RoomId = roomId,
                    ClientId = clientId,
                    ClientName = fromName,
                    Messages = new List<ChatMessage>()
                };
            
            chatClient.LastMessage = messageText;
            chatClient.LastMessageDateTime = dt;
            chatClient.Messages.Add(message);

            if (!isExistChatClient)
            {
                ChatClients.Add(chatClient);
            }

            MessageUpdated(chatClient, message);
        }

        public async void Connect(string userName)
        {
            UserName = userName;
            Connection = new HubConnection(ServerUri);
            
            Connection.Closed += Connection_Closed;
            Connection.StateChanged += Connection_StateChanged;
            HubProxy = Connection.CreateHubProxy(CHAT_HUB);
            //Handle incoming event from server: use Invoke to write to console from SignalR's thread
            HubProxy.On<string, string, string, string, string>(GET_FROM_USER,
                (roomId, clientId, fromName, messageText, dt) =>
                _mainWindow.Dispatcher.Invoke(() => AddMessageToRoom(roomId, clientId, fromName, messageText, dt, false))
                );

                
            HubProxy.On<bool,string, string, string, string, bool>(GET_MESSAGE,
                (isPublic, roomId,  fromName, messageText, dt, isAdmin) =>
                _mainWindow.Dispatcher.Invoke(() => AddMessageToRoom(roomId, "", fromName, messageText, dt, isAdmin))
                );
            try
            {
                await Connection.Start();
            }
            catch (HttpRequestException)
            {
                ConnectionFailed();
            }
            
        }

        private void Connection_StateChanged(StateChange stateChanging)
        {
            if (stateChanging.NewState == ConnectionState.Connected) {
                ConnectionSuccess(Connection.ConnectionId);
                HubProxy.Invoke(START_ADMIN, UserName);
            }
        }

        private void Connection_Closed()
        {
            ConnectionClosed();
        }

        public void Dispose()
        {
            if (Connection != null) {
                Connection.Stop();
                Connection.Dispose();
            }
        }
    }
}
