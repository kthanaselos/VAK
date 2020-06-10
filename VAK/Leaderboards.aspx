<%@ Page Title="Πίνακας Βαθμολογιών" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Leaderboards.aspx.cs" Inherits="Leaderboards" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <asp:PlaceHolder ID="LeaderboardsTable" runat="server"></asp:PlaceHolder>
    
</asp:Content>
