<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrewInfoMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <p>
        <br />
        <asp:GridView ID="crewInfo" runat="server" AutoGenerateColumns="false" CellPadding="4" DataKeyNames="CrewName" 
            
            OnRowCommand="crewInfo_RowCommand" OnRowEditing="crewInfo_RowEditing" OnRowUpdating="crewInfo_RowUpdating"
            OnRowCancelingEdit="crewInfo_RowCancelingEdit"
            OnRowDeleting="crewInfo_RowDeleting"
            ForeColor="#333333" GridLines="None" ShowFooter="true" ShowHeaderWhenEmpty="true">
            <%-- Theme Properties --%>
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

             <Columns>
                
                 <asp:TemplateField HeaderText="Crew Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CrewName") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="name" Text='<%# Eval("CrewName") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="nameFooter" runat="server" ForeColor="#003300" Text=""></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Address") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="address" Text='<%# Eval("Address") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="addressFooter" ForeColor="#003300" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="email" Text='<%# Eval("Email") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="emailFooter" ForeColor="#003300" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Phone") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="phone" Text='<%# Eval("Phone") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="phoneFooter" ForeColor="#003300" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Active">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Active") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="active" Text='<%# Eval("Active") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="activeFooter" ForeColor="#003300" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Create Date">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CreateDate") %>' runat="server" />
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="date" Text='<%# Eval("CreateDate") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="dateFooter" ForeColor="#003300" runat="server" />
                        </FooterTemplate>
                    
                    </asp:TemplateField>
                 

                     <asp:TemplateField>
                        <ItemTemplate>
                          
                            <asp:ImageButton ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>

             </Columns>
        </asp:GridView>

        <br/>
        <asp:Label ID="lblmessage" runat="server" Text="" ForeColor="Green" ></asp:Label>
        <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red" ></asp:Label>
        
    </p>


</asp:Content>
