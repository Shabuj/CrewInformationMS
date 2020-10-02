<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="studentDetails.aspx.cs" Inherits="CrewInfoMS.studentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <asp:Label ID="Label1" runat="server" Text="Student Details"></asp:Label>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="240px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateRows="False" DataKeyNames="email" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Vertical" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" style="margin-right: 116px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
            <ControlStyle ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="roll_No" HeaderText="Roll" SortExpression="roll_No">
            <ControlStyle ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email">
            <ControlStyle ForeColor="Black" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="active" HeaderText="Active" SortExpression="active">
            <ControlStyle ForeColor="Black" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="semister" HeaderText="Semister" SortExpression="semister">
            <ControlStyle ForeColor="Black" />
            </asp:BoundField>
            <asp:CommandField ShowInsertButton="True" HeaderText="Insert" >
            <FooterStyle Font-Bold="True" ForeColor="#00CC00" HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>

    <br/>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="541px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="roll_No" HeaderText="Roll" SortExpression="roll_No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email"  SortExpression="email">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="active" HeaderText="Active" SortExpression="active">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="semister" HeaderText="Semister" SortExpression="semister">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>

    <br />
    <asp:Label ID="msgid" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrewInformationConnectionString2 %>" DeleteCommand="DELETE FROM [student_tbl] WHERE [id] = @id" InsertCommand="INSERT INTO [student_tbl] ([name], [roll_No], [email], [active], [semister]) VALUES (@name, @roll_No, @email, @active, @semister)" SelectCommand="SELECT * FROM [student_tbl]" UpdateCommand="UPDATE [student_tbl] SET  [name] = @name, [roll_No] = @roll_No,[email] = @email, [active] = @active, [semister] = @semister WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="roll_No" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="active" Type="Boolean" />
            <asp:Parameter Name="semister" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="roll_No" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="active" Type="Boolean" />
            <asp:Parameter Name="semister" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
