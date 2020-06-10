<%@ Page Title="Test" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Ερωτήσεις</h3>
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
    <asp:Button runat="server" ID="StartTimer" OnClick="StartTimerButton" Text="Start time and show questions" CssClass="btn btn-default" />
    <hr />
    <div id="questions" runat="server" visible="false">
        <asp:Label runat="server" ID="QuestionID" Visible="false" />
        <asp:Label runat="server" ID="Question" Font-Bold="True">Question goes here?</asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="AnswerA" runat="server" GroupName="AnswerList" Value="A" />
        <asp:Label runat="server" ID="PossibleAnswer1" AssociatedControlID="AnswerA">Possible Answer 1</asp:Label>
        <br />
        <asp:RadioButton ID="AnswerB" runat="server" GroupName="AnswerList" Value="B" />
        <asp:Label runat="server" ID="PossibleAnswer2" AssociatedControlID="AnswerB">Possible Answer 2</asp:Label>
        <br />
        <asp:RadioButton ID="AnswerC" runat="server" GroupName="AnswerList" Value="C" />
        <asp:Label runat="server" ID="PossibleAnswer3" AssociatedControlID="AnswerC">Possible Answer 3</asp:Label>
        <br />
        <asp:RadioButton ID="AnswerD" runat="server" GroupName="AnswerList" Value="D"/>
        <asp:Label runat="server" ID="PossibleAnswer4" AssociatedControlID="AnswerD">Possible Answer 4</asp:Label>
        <br />
        <br/>
        <asp:Button runat="server" ID="submitAnswer" Text="Submit Answer" OnClick="SubmitAnswer" CssClass="btn btn-default"/>
    </div>

    <!--
        <div class="col-md-10">
        <asp:RadioButtonList ID="AnswerList" runat="server">
        <asp:ListItem Value="A">A</asp:ListItem>
        <asp:ListItem Value="B">B</asp:ListItem>
        <asp:ListItem Value="C">C</asp:ListItem></asp:RadioButtonList>
        <asp:ListItem Value="D">D</asp:ListItem></asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="AnswerListValidator" runat="server" ControlToValidate="AnswerList" CssClass="text-danger" ErrorMessage="Please choose an answer!"></asp:RequiredFieldValidator>
    </div>
    -->
</asp:Content>
