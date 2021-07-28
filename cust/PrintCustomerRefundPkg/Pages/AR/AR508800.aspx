<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="AR508800.aspx.cs" Inherits="Page_AR508800" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
                     TypeName="PX.PrintCustomerRefund.Ext.CustomerRefundMassPrint"
                     PrimaryView="Filter">
        <CallbackCommands>

        </CallbackCommands>
    </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Filter" Width="100%" Height="100px" AllowAutoHide="false">
        <Template>
            <px:PXLayoutRule runat="server" StartRow="True"/>
            <px:PXSelector runat="server" ID="slBranchID" DataField="BranchID" CommitChanges="True"/>
            <px:PXSelector runat="server" ID="slPaymentMethodID" DataField="PaymentMethodID" CommitChanges="True"  AutoRefresh="True"/>
            <px:PXSelector runat="server" ID="slCashAccountID" DataField="CashAccountID" CommitChanges="True" AutoRefresh="True"/>
            <px:PXTextEdit runat="server" ID="txtLastCheckNbr" DataField="LastCheckNbr"/>
        </Template>
<AutoSize Enabled="True" Container="Window" />
    </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
        <Levels>
            <px:PXGridLevel DataMember="Refunds">
                <Columns>
                    <px:PXGridColumn DataField="Selected" Type="CheckBox" TextAlign="Center"/>
                    <px:PXGridColumn DataField="RefNbr"/>
                    <px:PXGridColumn DataField="CustomerID"/>
                    <px:PXGridColumn DataField="AdjDate"/>
                    <px:PXGridColumn DataField="CuryOrigDocAmt"/>
                </Columns>
            </px:PXGridLevel>
        </Levels>
        <AutoSize Container="Window" Enabled="True" MinHeight="150"/>
        <ActionBar >
        </ActionBar>
    </px:PXGrid>
</asp:Content>