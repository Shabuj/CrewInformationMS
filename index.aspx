<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CrewInfoMS.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:Label ID="crud" runat="server" BackColor="White" Text="CRUD of CREW "></asp:Label>
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="307px" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="email" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted" style="margin-right: 69px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" >
            <ControlStyle Font-Bold="True" ForeColor="Lime" />
            </asp:BoundField>
            <asp:BoundField DataField="roll_No" HeaderText="Roll No" SortExpression="roll_No" >
            <ControlStyle ForeColor="#003300" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" >
            <ControlStyle ForeColor="#003300" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="active" HeaderText="Active" SortExpression="active" >
            <ControlStyle ForeColor="Red" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="semister" HeaderText="Semister" SortExpression="semister" >
            <ControlStyle ForeColor="Red" />
            </asp:BoundField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertRowStyle BackColor="#009900" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>

    <asp:Label ID="msg" runat="server" Text=""></asp:Label>

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="591px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="No." InsertVisible="False" ReadOnly="True" SortExpression="id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="roll_No" HeaderText="Roll No" SortExpression="roll_No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="active" HeaderText="Active" SortExpression="active">
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
            <asp:BoundField DataField="semister" HeaderText="Semester" SortExpression="semister">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True">
            <ItemStyle BackColor="White" BorderColor="White" BorderStyle="None" Font-Bold="False" ForeColor="#009900" HorizontalAlign="Justify" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrewInformationConnectionString %>" DeleteCommand="DELETE FROM [student_tbl] WHERE [email] = @email" InsertCommand="INSERT INTO [student_tbl] ([name], [roll_No], [email], [active], [semister]) VALUES (@name, @roll_No, @email, @active, @semister)" SelectCommand="SELECT * FROM [student_tbl]" UpdateCommand="UPDATE [student_tbl] SET  [name] = @name, [roll_No] = @roll_No,[email] = @email, [active] = @active, [semister] = @semister WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="email" Type="String" />
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
