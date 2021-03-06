﻿using DJBroker.Common;
using DJBroker.DAL;
using DJBroker.Model;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace DJBroker.WindowApp.Popup
{
    /// <summary>
    /// Interaction logic for PopupMember.xaml
    /// </summary>
    public partial class PopupMember : Window
    {
        private MemberData member;
        public PopupMember()
        {
            try
            {
                InitializeComponent();
                MemberData member = (MemberData)DataCommon.Get("DATA.MEMBER");
                if (member.ROLE_CODE.ToUpper() == "ADMIN") 
                {
                    btnReset.Visibility = Visibility.Visible;
                }
                if (DataCommon.Exists("MEMBER_EDIT"))
                {
                    member = (MemberData)DataCommon.Get("MEMBER_EDIT");
                    txtName.Text = member.MEMBER_NAME;
                    txtSureName.Text = member.MEMBER_SURENAME;
                    txtUser.Text = member.MEMBER_USER;
                    cbbRole.SelectedIndex = member.ROLE_CODE.ToUpper() == "ADMIN" ? 1 : 2;
                    cbbStatus.SelectedIndex = member.MEMBER_STATUS == "A" ? 0 : 1;
                }
                else
                {
                    txtUser.IsEnabled = true;
                    btnReset.Visibility = Visibility.Hidden;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (txtName.Text == "")
                {
                    MessageBox.Show("กรุณากรอก ชื่อ");
                    return;
                }
                if (txtSureName.Text == "")
                {
                    MessageBox.Show("กรุณากรอก นามสกุล");
                    return;
                }
                if (txtUser.Text == "")
                {
                    MessageBox.Show("กรุณากรอก Username");
                    return;
                }
                if (cbbRole.Text == "กรุณาเลือก")
                {
                    MessageBox.Show("กรุณาเลือก Role");
                    return;
                }
                if (MessageBox.Show("ยืนยันการบันทึกข้อมูล", "การบันทึกข้อมูล", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
                {
                    bool complete = false;
                    MemberDAL dal = new MemberDAL();
                    if (cbbRole.Text.Equals("กรุณาเลือก"))
                    {
                        MessageBox.Show("กรุณาเลือก Role ก่อนบันทึก");
                        return;
                    }
                    if (DataCommon.Exists("MEMBER_EDIT"))
                    {
                        member = (MemberData)DataCommon.Get("MEMBER_EDIT");
                        member.MEMBER_NAME = txtName.Text;
                        member.ROLE_CODE = cbbRole.Text;
                        member.MEMBER_STATUS = cbbStatus.Text == "ใช้งาน" ? "A" : "I";
                        member.MEMBER_SURENAME = txtSureName.Text;
                        dal.UpdateMember(member);
                        DataCommon.Remove("MEMBER_EDIT");
                        complete = true;
                    }
                    else
                    {
                        if (dal.GetMember(txtUser.Text) == null)
                        {
                            member = new MemberData();
                            member.MEMBER_NAME = txtName.Text;
                            member.ROLE_CODE = cbbRole.Text;
                            member.MEMBER_STATUS = cbbStatus.Text == "ใช้งาน" ? "A" : "I";
                            member.MEMBER_SURENAME = txtSureName.Text;
                            member.MEMBER_PASSWORD = txtUser.Text;
                            member.MEMBER_USER = txtUser.Text;
                            new MemberDAL().InsertMember(member);
                            complete = true;
                        }
                        else
                        {
                            MessageBox.Show("Username นี้ซ้ำในระบบ กรุณาเปลี่ยน Username");
                        }
                    }
                    if (complete)
                    {
                        MessageBox.Show("บันทึกข้อมูลสำเร็จ");
                        this.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnReset_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                MemberDAL dal = new MemberDAL();
                member = (MemberData)DataCommon.Get("MEMBER_EDIT");
                member.MEMBER_PASSWORD = member.MEMBER_USER;
                dal.UpdateMember(member);
                DataCommon.Remove("MEMBER_EDIT");
                MessageBox.Show("บันทึกข้อมูลสำเร็จ");
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
