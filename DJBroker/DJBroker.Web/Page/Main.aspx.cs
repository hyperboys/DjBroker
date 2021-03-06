﻿using DJBroker.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DJBroker.Web.Page
{
    public partial class Main : System.Web.UI.Page
    {
        private static InsureCarDAL insureCarDAL;
        private static string CAR_YEAR;
        private static string CAR_NAME;
        private static string CAR_MODEL;
        private static string EVENT;
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                if (!Page.IsPostBack)
                {
                    MainView.ActiveViewIndex = 0;
                    insureCarDAL = new InsureCarDAL();
                    DataTable dt = insureCarDAL.GetComboBoxCarYear();
                    foreach (DataRow row in dt.Rows)
                    {
                        ddlCarYear.Items.Add(new ListItem(row[0].ToString(), row[0].ToString()));
                    }
                    ddlCarYear.DataBind();
                    EVENT = "";
                }

                if (Request.Url.ToString().Contains("btnSearch") || EVENT == "Click")
                {
                    Session["DATA"] = insureCarDAL.GetAllCondition(CAR_YEAR, CAR_NAME, CAR_MODEL);
                    HttpContext.Current.Response.Redirect("Detail.aspx");
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void ddlCarYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = insureCarDAL.GetComboBoxCarName(ddlCarYear.Text);
                CAR_YEAR = ddlCarYear.Text;

                ddlCarName.Items.Clear();
                ddlCarModel.Items.Clear();

                ddlCarName.Items.Add(new ListItem("กรุณาเลือก", "กรุณาเลือก"));
                ddlCarModel.Items.Add(new ListItem("กรุณาเลือก", "กรุณาเลือก"));

                if (dt != null)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        ddlCarName.Items.Add(new ListItem(row[0].ToString(), row[0].ToString()));
                    }
                    ddlCarName.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void ddlCarName_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = insureCarDAL.GetComboBoxCarModel(ddlCarYear.Text, ddlCarName.Text);
                CAR_NAME = ddlCarName.Text;
                ddlCarModel.Items.Clear();
                ddlCarModel.Items.Add(new ListItem("กรุณาเลือก", "กรุณาเลือก"));
                if (dt != null)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        ddlCarModel.Items.Add(new ListItem(row[0].ToString(), row[0].ToString()));
                    }
                    ddlCarModel.DataBind();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void ddlCarModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            CAR_MODEL = ddlCarModel.Text;
        }

        [WebMethod]
        public static string Process()
        {
            EVENT = "Click";
            return "";
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            this.HiddenField1.Value = "cus";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            this.HiddenField1.Value = "staff";
            MainView.ActiveViewIndex = 1;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

            int index = Int32.Parse(e.Item.Value);
            MainView.ActiveViewIndex = index;
        }
    }
}