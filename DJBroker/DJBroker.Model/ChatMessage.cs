using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DJBroker.Model
{
    public class ChatMessage
    {
        public string From { get; set; }
        public string Message { get; set; }
        public string SentDateTime { get; set; }
        public bool IsAdminMessage { get; set; }
    }
}
