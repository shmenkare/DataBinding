<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataBinding._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
</body>
</html>
<asp:sqldatasource ID="SqlDataSourceProvincias" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DataBindingDB %>" 
        SelectCommand="SELECT [Nombre], [ID] FROM [Provincias]"></asp:sqldatasource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceProvincias" 
        DataTextField="Nombre" DataValueField="ID" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceLocalidades" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DataBindingDB %>" 
        SelectCommand="SELECT [Nombre], [ID] FROM [Localidades] WHERE ([IDProvincia] = @IDProvincia)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="IDProvincia" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSourceLocalidades" DataTextField="Nombre" 
        DataValueField="ID">
    </asp:DropDownList>
    </form>

