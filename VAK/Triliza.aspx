<%@ Page Title="Triliza" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Triliza.aspx.cs" Inherits="Triliza" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <br />
        <asp:Label ID="title" runat="server" Font-Names="Matura MT Script Capitals" Font-Italic="True" Font-Size="XX-Large" >Tic-Tac-Toe</asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="button1_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <asp:Button ID="Button2" runat="server" OnClick="button2_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <asp:Button ID="Button3" runat="server" OnClick="button3_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="button4_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <asp:Button ID="Button5" runat="server" OnClick="button5_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <asp:Button ID="Button6" runat="server" OnClick="button6_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <br  />
        <asp:Button ID="Button7" runat="server" OnClick="button7_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <asp:Button ID="Button8" runat="server" OnClick="button8_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <asp:Button ID="Button9" runat="server" OnClick="button9_Click" Width="50px" Height="50px" Font-Names="Matura MT Script Capitals" Font-Size="X-Large" Text="--" />
        <br />
        <br />
        <asp:Button ID="reset" runat="server" OnClick="Reset_Click" Width="125px" Height="40px" Font-Size="X-Large" Font-Names="Matura MT Script Capitals" Font-Italic="True" Text="Reset" />
    </div>
</asp:Content>
