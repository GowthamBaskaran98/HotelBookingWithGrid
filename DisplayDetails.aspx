<%@ Page Title="" Language="C#" MasterPageFile="~/Sites.Master" AutoEventWireup="true" CodeBehind="DisplayDetails.aspx.cs" Inherits="WebApplication2.DisplayDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="userDetail" runat="server" AutoGenerateColumns="False" DataKeyNames="firstName">
                <Columns>
                    <asp:TemplateField HeaderText="FirstName" runat="server">
                <itemtemplate>  
                                <asp:Label ID="FirstName" runat="server" Text='<%# Bind("firstName") %>'></asp:Label>  
                            </itemtemplate>
            </asp:TemplateField>
                     <asp:TemplateField HeaderText="LastName" runat="server">
                  <itemtemplate>  
                                <asp:Label ID="LastName" runat="server" Text='<%# Bind("lastName") %>'></asp:Label>  
                            </itemtemplate>
            </asp:TemplateField>
                    <asp:TemplateField HeaderText="MobilePhone" runat="server">
                <itemtemplate>  
                                <asp:Label ID="MobileNumber" runat="server" Text='<%# Bind("mobileNumber") %>'></asp:Label>  
                            </itemtemplate>
                        </asp:TemplateField>
                <asp:TemplateField HeaderText="password" runat="server">
                <itemtemplate>  
                                <asp:Label ID="password" runat="server" Text='<%# Bind("password") %>'></asp:Label>  
                            </itemtemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="gmail" runat="server">
                <itemtemplate>  
                                <asp:Label ID="gmail" runat="server" Text='<%# Bind("gmail") %>'></asp:Label>  
                            </itemtemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="userType" runat="server">
                <itemtemplate>  
                                <asp:Label ID="userType" runat="server" Text='<%# Bind("userType") %>'></asp:Label>  
                            </itemtemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
</asp:Content>
