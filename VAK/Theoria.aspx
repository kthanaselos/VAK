<%@ Page Title="Theoria" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Theoria.aspx.cs" Inherits="Theoria" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Θεωρία</h2>
    <div id="PresentationMenu" runat="server">
        <h3>Διαλέξτε κατηγορία εκμάθησης: </h3>
        <a runat="server" href="~/VisualPresentation">Visual</a>
        <a runat="server" href="~/AuditoryPresentation">Auditory</a>
        <a runat="server" href="~/KinestheticPresentation">Kinesthetic</a>
    </div>
    <div id="AuthenticationError" runat="server" visible="false">
        <p>Δεν επιτρέπεται η πρόσβαση χωρίς σύνδεση!<br />
        Παρακαλώ πραγματοποιείστε <a runat="server" href="~/Account/Login">σύνδεση</a> ή κάντε <a runat="server" href="~/Account/Register">εγγραφή</a>.</p>
    </div>
</asp:Content>
