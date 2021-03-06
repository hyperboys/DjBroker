﻿using DJBroker.Common;
using DJBroker.DAL;
using DJBroker.Model;
using DJBroker.WindowApp.Popup;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DJBroker.WindowApp.Panel
{
    /// <summary>
    /// Interaction logic for InsureCarPage.xaml
    /// </summary>
    public partial class InsureCarPage : UserControl
    {
        public InsureCarPage()
        {
            try
            {
                InitializeComponent();
                DataTable listCar = new CarDAL().GetComboBoxCarName();
                cbbCarName.ItemsSource = listCar.DefaultView;

                MemberData member = (MemberData)DataCommon.Get("DATA.MEMBER");
                if (!member.ROLE_CODE.ToUpper().Equals("ADMIN"))
                {
                    btnImport.Visibility = System.Windows.Visibility.Hidden;
                    btnAdd.Visibility = System.Windows.Visibility.Hidden;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void grdInsure_Loaded(object sender, RoutedEventArgs e)
        {
            ReloadData();
        }

        private void ReloadData()
        {
            try
            {
                DataTable listMember = new InsureCarDAL().GetAll();
                grdInsure.ItemsSource = listMember.DefaultView;
                DataCommon.Set("LIST_INSURE_CAR", listMember);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void Add_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            PopupInsureCar popup = new PopupInsureCar();
            popup.ShowDialog();
            ReloadData();
        }

        private void Image_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                DataTable listItem = (DataTable)DataCommon.Get("LIST_INSURE_CAR");
                var results = (from myRow in listItem.AsEnumerable()
                               where myRow.Field<string>("COMPANY_CODE").ToUpper().Contains(txtCompanyCode.Text.ToUpper())
                               && myRow.Field<string>("COMPANY_FULLNAME").ToUpper().Contains(txtCompanyName.Text.ToUpper())
                               && myRow.Field<string>("CAR_YEAR").ToUpper().Contains(cbbCarYear.Text == "กรุณาเลือก" ? "" : cbbCarYear.Text)
                               && myRow.Field<string>("CAR_NAME").Contains(cbbCarName.Text)
                               && myRow.Field<string>("CAR_MODEL").Contains(cbbCarModel.Text)
                               && myRow.Field<string>("CAR_ENGINE").Contains(cbbCarEngine.Text)
                               && myRow.Field<string>("INSURE_CAR_STATUS").ToUpper().Contains(cbbStatus.Text == "ใช้งาน" ? "A" : "I")
                               select myRow);
                if (results.Count() > 0)
                {
                    grdInsure.ItemsSource = results.CopyToDataTable<DataRow>().DefaultView;
                }
                else
                {
                    grdInsure.ItemsSource = null;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string code = ((DataRowView)grdInsure.SelectedItem).Row.ItemArray[0].ToString();
                InsureCarData item = new InsureCarDAL().GetItem(code);
                DataCommon.Set("INSURE_CAR_EDIT", item);
                PopupInsureCar pop;
                MemberData member = (MemberData)DataCommon.Get("DATA.MEMBER");
                if (!member.ROLE_CODE.ToUpper().Equals("ADMIN"))
                {
                    pop = new PopupInsureCar("VIEW");
                }
                else
                {
                    pop = new PopupInsureCar("EDIT");
                }
                pop.ShowDialog();
                ReloadData();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void Excel_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                PopupImportExcel popup = new PopupImportExcel();
                popup.ShowDialog();
                ReloadData();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void cbbCarName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataTable listCar = new CarDAL().GetComboBoxCarModel(cbbCarName.SelectedValue.ToString());
            cbbCarModel.ItemsSource = listCar.DefaultView;
            cbbCarEngine.ItemsSource = null;
        }

        private void cbbCarModel_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataTable listCar = new CarDAL().GetComboBoxCarEngine(cbbCarName.SelectedValue.ToString(), cbbCarModel.SelectedValue.ToString());
            cbbCarEngine.ItemsSource = listCar.DefaultView;
        }

        private void Reset_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                ReloadData();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
