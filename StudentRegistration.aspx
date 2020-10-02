<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="CrewInfoMS.StudentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <h1>Student Information </h1>
    <div class="form-group">
        <label for="name">Student Name </label>
        <input type="text" class="form-control" runat="server" id="name" placeholder="Enter Student Name">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Display="Dynamic" ControlToValidate="name" ErrorMessage="Field can't be empty "></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
        <label for="roll">Roll No </label>
        <input type="text" runat="server" class="form-control" id="roll" placeholder="Enter roll no">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" Display="Dynamic" ControlToValidate="roll" ErrorMessage="Field can't be empty "></asp:RequiredFieldValidator>
   
    </div>
    <div class="form-group">
        <label for="email">Email No </label>
        <input type="text" runat="server" class="form-control" id="email" placeholder="Enter Email Address">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" Display="Dynamic" ControlToValidate="email" ErrorMessage="Field can't be empty "></asp:RequiredFieldValidator>
   
    </div>
    <div class="form-group">
        <label for="active">Active </label>
        <input type="checkbox" runat="server"  id="active" placeholder="Enter active No">
    </div>

    <div class="form-group">
        <label for="semister">Semester </label>
        <input type="text" runat="server" class="form-control" id="semister" placeholder="Enter Semester">
    </div>


    <asp:Button ID="saveButton" class="btn btn-primary" runat="server" Text="Save" OnClick="saveButton_Click" />
     
    <br />
    <asp:Label ID="messageLabel" runat="server" ></asp:Label>

</asp:Content>
