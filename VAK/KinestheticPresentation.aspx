<%@ Page Title="KinestheticPresentation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="KinestheticPresentation.aspx.cs" Inherits="KinestheticPresentation" %>

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
        <div id="theory" runat="server" visible="false">
            <div id="music" runat="server" visible="true"  style="float:right;position:sticky;top:100px;">
                    <h3>Μουσική και Σημειώσεις</h3>
                    <asp:Literal ID="VideoLiteral" runat="server"></asp:Literal>
                    <br />
                    <h4>Κρατήστε τις σημειώσεις σας εδώ:</h4>
                    <style>.NotesTextbox { min-width: 100%;min-height:300px; }</style>
                    <asp:TextBox ID="Notes" runat="server" Width="500" TextMode="MultiLine" BackColor="#ffffcc" BorderStyle="Dotted" BorderWidth="2px" BorderColor="#996600" CssClass="NotesTextbox"></asp:TextBox>
                    <br /><br />
                    <asp:Button ID="SaveNotes" runat="server" Text="Αποθήκευση Σημειώσεων" OnClick="SaveNotesButton" CssClass="btn btn-default" />
            </div>
            <div style="float:left;">
                <asp:Image runat="server" ImageUrl="~/Images/kinestcheticv2.jpg" Width="760px"/><br />
            </div>
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        </div>
    </div>
    <div id="AuthenticationError" runat="server" visible="false">
        <br />
        <p>Δεν επιτρέπεται η πρόσβαση χωρίς σύνδεση!<br />
        Παρακαλώ πραγματοποιείστε <a runat="server" href="~/Account/Login">σύνδεση</a> ή κάντε <a runat="server" href="~/Account/Register">εγγραφή</a>.</p>
    </div>
</asp:Content>
