<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3.aspx.vb" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="389px" Width="1063px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="amobile" HeaderText="amobile" SortExpression="amobile" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Tbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Tbl] ([name], [address], [city], [state], [mobile], [amobile], [pincode], [email]) VALUES (@name, @address, @city, @state, @mobile, @amobile, @pincode, @email)" ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [name], [address], [city], [state], [mobile], [amobile], [pincode], [email] FROM [Tbl]" UpdateCommand="UPDATE [Tbl] SET [name] = @name, [address] = @address, [city] = @city, [state] = @state, [mobile] = @mobile, [amobile] = @amobile, [pincode] = @pincode, [email] = @email WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="amobile" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="amobile" Type="String" />
                <asp:Parameter Name="pincode" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
