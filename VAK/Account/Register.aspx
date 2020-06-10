<%@ Page Title="Εγγραφή" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Δημιουργία νέου λογαριασμού.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <%--Username Selection--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">Όνομα χρήστη</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="Το πεδίο όνομα χρήστη είναι υποχρεωτικό." />
            </div>
        </div>
        <%--Password Selection--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Κωδικός</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Το πεδίο κωδικός είναι υποχρεωτικό." />
            </div>
        </div>
        <%--Confirm Password Selection--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Επιβεβαίωση κωδικού</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Το πεδίο επιβεβαίωσης κωδικού είναι υποχρεωτικό." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Ο κωδικός και η επιβεβαίωση κωδικού δεν ταιριάζουν." />
            </div>
        </div>
        <br />
        <%--VAK Type Selection--%>
        <div class="form-group">
            <asp:Label runat="server" Font-Bold="true" CssClass="col-md-2 control-label">Προτιμήσεις εκμάθησης: </asp:Label> 
            <div class="col-md-10">
                <asp:RadioButtonList ID="VAKRadioButtonList" runat="server">
                <asp:ListItem Value="Visual">Σας αρέσει να διαβάζετε μόνοι με ηρεμία. Κατανοείτε κάτι όταν η ύλη είναι οργανωμένη σωστά, με παραδείγματα και διαγράμματα.</asp:ListItem>
                <asp:ListItem Value="Auditory">Σας αρέσει να ακούτε κάποιον καθηγητή να εξηγεί το αντικείμενο ώστε να μην χάνετε την προσοχή σας.</asp:ListItem>
                <asp:ListItem Value="Kinesthetic">Σας αρέσει να ενεργείτε ώστε να μάθετε κάτι. Δεν μπορείτε να καθόσαστε άπραγοι.</asp:ListItem></asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="VAKFieldValidator" runat="server" ControlToValidate="VAKRadioButtonList" CssClass="text-danger" ErrorMessage="Παρακαλώ διαλέξτε τρόπο εκμάθησης."></asp:RequiredFieldValidator>
            </div>
        </div>
        <%--Past Knowledge Level Selection--%>
        <div class="form-group">
            <asp:Label runat="server" Font-Bold="true" CssClass="col-md-2 control-label">Επίπεδο προηγούμενης γνώσης: </asp:Label> 
            <div class="col-md-10">
                <asp:RadioButtonList ID="PastKnowledgeLevel" runat="server">
                <asp:ListItem Value="Low"> Χαμηλό</asp:ListItem>
                <asp:ListItem Value="Medium"> Μέτριο</asp:ListItem>
                <asp:ListItem Value="High"> Υψηλό</asp:ListItem></asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="PastKnowledgeFieldValidator" runat="server" ControlToValidate="PastKnowledgeLevel" CssClass="text-danger" ErrorMessage="Παρακαλώ διαλέξτε το επίπεδο προηγούμενης γνώσης σας."></asp:RequiredFieldValidator>
            </div>
        </div>
        <%--VAK Type Selection--%>
        <%--<div class="form-group">
            <asp:Label runat="server" Font-Bold="true" CssClass="col-md-2 control-label">VAK Type: </asp:Label> 
            <div class="col-md-10">
                <asp:Label runat="server">Visual</asp:Label>
                <asp:RadioButton ID="Visual" runat="server" GroupName="VAKType"/>
                You understand things better when they are presented to you by utilizing examples,pictures,diagrams,graphs,charts etc.
                <br />
                <asp:Label runat="server">Auditory</asp:Label>
                <asp:RadioButton ID="Auditory" runat="server" GroupName="VAKType"/>
                You grasp the meaning of a subject when someone takes time to explain it to you. You prefer to listening rather than reading for hours.
                <br />
                <asp:Label runat="server">Kinesthetic </asp:Label>
                <asp:RadioButton ID="Kinesthetic" runat="server" GroupName="VAKType"/>
                You like to actively interact or tend to lose concentration if there is little or no external stimulation or movement.
            </div>
        </div> --%>
        <%--Past Knowledge Level Selection--%>
        <%--<div class="form-group">
            <asp:Label runat="server" Font-Bold="true" CssClass="col-md-2 control-label">Level of past knowledge: </asp:Label> 
            <div class="col-md-10">
                <br />
                <asp:Label runat="server">Low </asp:Label>
                <asp:RadioButton ID="LowKnowledge" runat="server" GroupName="PastKnowledge"/>
                <asp:Label runat="server"> Medium </asp:Label>
                <asp:RadioButton ID="MediumKnowledge" runat="server" GroupName="PastKnowledge"/>
                <asp:Label runat="server"> High </asp:Label>
                <asp:RadioButton ID="HighKnowledge" runat="server" GroupName="PastKnowledge"/>
            </div>
        </div> --%>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Εγγραφή" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>

