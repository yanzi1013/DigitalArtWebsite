<%@ Page Title="Inspiration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inspiration.aspx.cs" Inherits="DigitalArtWebsite.Inspiration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="mb-4">
        <h1 class="section-heading">Inspiration</h1>
        <p class="section-subtitle">Read artist posts from the database, including project stories, creative prompts, and release notes.</p>
    </section>

    <asp:Label ID="InspirationMessage" runat="server" CssClass="success-message" Visible="false" />

    <asp:Repeater ID="PostRepeater" runat="server">
        <HeaderTemplate>
            <div class="post-list">
        </HeaderTemplate>
        <ItemTemplate>
            <article class="inspiration-card">
                <div class="inspiration-card-content">
                    <h3 class="post-title"><%# Eval("Title") %></h3>
                    <div class="post-meta"><%# Eval("PostDate", "{0:MMMM d, yyyy}") %></div>
                    <p class="post-content"><%# Eval("Content") %></p>
                </div>
            </article>
        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
