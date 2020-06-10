<%@ Page Title="AuditoryPresentation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AuditoryPresentation.aspx.cs" Inherits="AuditoryPresentation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="presentation" runat="server">
        <asp:Timer ID="Timer1" runat="server" Enabled="false" Interval="1000" ontick="Timer1_Tick"></asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <asp:Label ID="Label1" runat="server"></asp:Label>
            </ContentTemplate>
            <Triggers>
               <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick">
               </asp:AsyncPostBackTrigger>
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:Button runat="server" ID="StartTimer" OnClick="StartTimerButton" Text="Έναρξη χρόνου και εμφάνιση θεωρίας" CssClass="btn btn-default" />
        <asp:Button runat="server" ID="StopTimer" OnClick="StopTimerButton" Text="Tερματισμός και αποθήκευση χρόνου" Enabled="false" CssClass="btn btn-default" />
        <br />
        <br />
        <div id="theory" runat="server" visible="false" style="background-color: #B4DADD;">
            <h3>English Tenses</h3>
            <asp:Literal ID="VideoLiteral" runat="server"></asp:Literal>
            <img src="Images/Teacher.jpg" alt="teacher" style="width: 30%; margin-left:100px;">
            <br />
            <b>Timestamps:</b><br />
            0:00 - Introduction<br />
            1:05 - Present Simple<br />
            2:43 - Present Continuous<br />
            4:44 - Past Simple<br />
            6:03 - Past Continuous<br />
            9:04 - Present Perfect Simple<br />
            12:48 - Present Perfect Continuous<br />
            15:18 - Past Perfect<br />
            17:20 - Past Perfect Continuous<br />
            18:47 - Comparison of the 4 perfect tenses<br />
            19:58 - Future Simple<br />
            25:46 - Recap of Future Simple<br />
            26:42 - Future Continuous<br />
            28:42 - Future Perfect & Future Perfect Continuous
            <br />
            <h3>Stative Verbs</h3>
            <asp:Literal ID="VideoLiteral2" runat="server"></asp:Literal>
            <br />
        </div>
    </div>
    <div id="AuthenticationError" runat="server" visible="false">
        <br />
        <p>Δεν επιτρέπεται η πρόσβαση χωρίς σύνδεση!<br />
        Παρακαλώ πραγματοποιείστε <a runat="server" href="~/Account/Login">σύνδεση</a> ή κάντε <a runat="server" href="~/Account/Register">εγγραφή</a>.</p>
    </div>
</asp:Content>
