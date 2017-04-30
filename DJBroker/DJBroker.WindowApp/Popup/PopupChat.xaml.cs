using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;
using DJBroker.Model;

namespace DJBroker.WindowApp.Popup
{
    /// <summary>
    /// Interaction logic for PopupChat.xaml
    /// </summary>
    public partial class PopupChat : Window
    {
        public PopupChat()
        {
            InitializeComponent();
        }
        private ChatClientEngine _chatEngine;
        public ChatClient ChatClient { get; private set; }

        public PopupChat(ChatClient client, ChatClientEngine chatEngine)
        {
            InitializeComponent();
            _chatEngine = chatEngine;
            Title = client.ClientName;
            ChatClient = client;
            client.Messages.ForEach(i => AddDisplayMessage(i));
        }

        private void SendButton_Click(object sender, RoutedEventArgs e)
        {
            var chatMessage = new ChatMessage()
            {
                From = "Admin",
                SentDateTime = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"),
                Message = MessageTextBox.Text,
                IsAdminMessage = true
            };
            _chatEngine.SendToClient(chatMessage.Message, ChatClient.ClientId);
            MessageTextBox.Clear();
            MessageTextBox.Focus();
        }

        public void AddDisplayMessage(ChatMessage chatMessage)
        {
            richTextBox.AppendText(string.Format("{0} [{1:dd/MM/yyyy HH:mm:ss}] : {2} \r", chatMessage.From, chatMessage.SentDateTime, chatMessage.Message));
            richTextBox.ScrollToEnd();
        }
    }
}
