using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DJBroker.Model
{
    public class ChatClient
    {
        public string RoomId {get; set;}
        public string ClientId { get; set; }
        public string ClientName { get; set; }
        public bool IsUnread { get; set; }
        public string LastMessage { get; set; }
        public string LastMessageDateTime { get; set; }
        public List<ChatMessage> Messages { get; set; }

    }
}
