
using Microsoft.AspNet.SignalR.Client;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using DJBroker.WindowApp;
using DJBroker.WindowApp.Popup;
using DJBroker.Model;

namespace DJBroker.WindowApp.Panel
{
    /// <summary>
    /// Interaction logic for AllChatsPage.xaml
    /// </summary>
    public partial class AllChatsPage : UserControl
    {
        
        public ChatClientEngine ChatEngine { get; private set; }
        public List<PopupChat> PopupChats { get; private set; }

        public AllChatsPage()
        {
            InitializeComponent();
            PopupChats = new List<PopupChat>();

        }

        public void StartChatEngine(Window window, string userName = "Admin") {
            ChatEngine = new ChatClientEngine(window);
            ChatEngine.MessageUpdated = (chatClient, message) => {
                DistributeMessage(chatClient, message);
                MessageUpdated(chatClient,message);
                listView.Items.Refresh();
            };
            ChatEngine.ConnectionSuccess = (clientId) => { ConnectSuccess(); };
            ChatEngine.ConnectionFailed = () => { ConnectionFailed(); };
            ChatEngine.ConnectionClosed = () => { ConnectionClosed(); };
            listView.ItemsSource = ChatEngine.ChatClients;
            ChatEngine.Connect(userName);
        }

        
        private void DistributeMessage(ChatClient chatClient, ChatMessage message) {
            var popupChat = PopupChats.Find(pc => pc.ChatClient.ClientId == chatClient.ClientId);
            if (popupChat == null) return;
            popupChat.AddDisplayMessage(message);
        }
   

        public Action<ChatClient, ChatMessage> MessageUpdated { get; set; }
        public Action ConnectionFailed { get; set; }
        public Action ConnectSuccess { get; set; }
        public Action ConnectionClosed { get; set; }

        private void ViewChat(object sender, RoutedEventArgs e)
        {
            var chatClient = (ChatClient)((Button)sender).DataContext;
            var popupChat = PopupChats.Find(pc => pc.ChatClient.ClientId == chatClient.ClientId);
            if (popupChat != null) {
                popupChat.Focus();
                return;
            }

            var popup = new PopupChat(chatClient, ChatEngine);
            popup.Closed += Popup_Closed;
            PopupChats.Add(popup);
            popup.Show();
            
        }

        private void Popup_Closed(object sender, EventArgs e)
        {
            PopupChats.Remove((PopupChat)sender);
        }
    }
}
