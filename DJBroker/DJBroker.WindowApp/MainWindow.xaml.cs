using DJBroker.Common;
using DJBroker.Model;
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
using System.Windows.Threading;

namespace DJBroker.WindowApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private MemberData member;
        private int newArrivalChatCount = 0;
        
        public MainWindow()
        {
            try
            {
                InitializeComponent();
                DispatcherTimer timer = new DispatcherTimer(new TimeSpan(0, 0, 1), DispatcherPriority.Normal, delegate
                {
                    this.dateText.Content = "เวลา " + DateTime.Now.ToString("HH:mm:ss");
                    this.dateText2.Content = "วันที่ " + DateTime.Now.ToShortDateString();
                }, this.Dispatcher);
                if (DataCommon.Exists("DATA.MEMBER"))
                {
                    member = (MemberData)DataCommon.Get("DATA.MEMBER");
                    lblName.Content = member.MEMBER_NAME + " " + member.MEMBER_SURENAME;
                    lblUsername.Content = member.MEMBER_USER;
                    
                    if (member.ROLE_CODE.ToUpper() != "ADMIN")
                    {
                        btnMember.Visibility = System.Windows.Visibility.Hidden;
                        btnInsureCompany.Visibility = System.Windows.Visibility.Hidden;
                        btnCar.Visibility = System.Windows.Visibility.Hidden;
                    }
                    
                    InitializeChat();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void Image_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            PopupChangePassword popup = new PopupChangePassword();
            popup.ShowDialog();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Login l = new Login();
            l.Show();
        }

        private void UpdateChatMenuButtonContent() {
            lblChatMenuText.Content = string.Format("ChatBox ({0})", newArrivalChatCount); 
        }

        private void InitializeChat()
        { 
            pageChat.StartChatEngine(this, member.MEMBER_USER);
            pageChat.ConnectSuccess = () => {
                Dispatcher.Invoke(() =>
                {
                    btnChat.IsEnabled = true;
                });
            };
            pageChat.ConnectionClosed= () =>
            {
                Dispatcher.Invoke(() => { 
                    btnChat.IsEnabled = false;
                    MessageBox.Show("Chat server is closed.");                
                });

            };
            pageChat.ConnectionFailed = () => {
                Dispatcher.Invoke(() => { 
                    btnChat.IsEnabled = false;
                    MessageBox.Show("Fail to connect to chat server.");
                });
            };
            pageChat.MessageUpdated = (c, m) => {
                //ถ้า หน้าจอ chat ปิดอยู่ เวลาข้อมูลเข้า จะ + จำนวนข้อความเข้าที่ปุ่ม
                Dispatcher.Invoke(() => {
                    if (this.pageChat.Visibility == System.Windows.Visibility.Hidden) {
                    newArrivalChatCount++;
                    UpdateChatMenuButtonContent();
                } });
            };
        }

        private void btnInsureCompany_Click(object sender, RoutedEventArgs e)
        {
            this.pageCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageCheckInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsure.Visibility = System.Windows.Visibility.Visible;
            this.pageInsureCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageMember.Visibility = System.Windows.Visibility.Hidden;
            this.pageChat.Visibility = System.Windows.Visibility.Hidden;
        }

        private void btnCar_Click(object sender, RoutedEventArgs e)
        {
            this.pageCar.Visibility = System.Windows.Visibility.Visible;
            this.pageCheckInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsureCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageMember.Visibility = System.Windows.Visibility.Hidden;
            this.pageChat.Visibility = System.Windows.Visibility.Hidden;
        }

        private void btnInsure_Click(object sender, RoutedEventArgs e)
        {
            this.pageCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageCheckInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsureCar.Visibility = System.Windows.Visibility.Visible;
            this.pageMember.Visibility = System.Windows.Visibility.Hidden;
            this.pageChat.Visibility = System.Windows.Visibility.Hidden;
        }

        private void btnCheck_Click(object sender, RoutedEventArgs e)
        {
            this.pageCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageCheckInsure.Visibility = System.Windows.Visibility.Visible;
            this.pageInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsureCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageMember.Visibility = System.Windows.Visibility.Hidden;
            this.pageChat.Visibility = System.Windows.Visibility.Hidden;
        }

        private void btnMember_Click(object sender, RoutedEventArgs e)
        {
            this.pageCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageCheckInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsureCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageMember.Visibility = System.Windows.Visibility.Visible;
            this.pageChat.Visibility = System.Windows.Visibility.Hidden;
        }

        private void btnChat_Click(object sender, RoutedEventArgs e)
        {
            this.pageCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageCheckInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsure.Visibility = System.Windows.Visibility.Hidden;
            this.pageInsureCar.Visibility = System.Windows.Visibility.Hidden;
            this.pageMember.Visibility = System.Windows.Visibility.Hidden;
            this.pageChat.Visibility = System.Windows.Visibility.Visible;
            newArrivalChatCount = 0;
            UpdateChatMenuButtonContent();
        }

    }
}
