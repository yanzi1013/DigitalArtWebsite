<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="DigitalArtWebsite.Gallery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="mb-4">
        <h1 class="section-heading">Gallery</h1>
        <p class="section-subtitle">Discover pastel artworks from the database. Each piece includes a title, description, and category.</p>
    </section>

    <asp:Label ID="GalleryMessage" runat="server" CssClass="success-message" Visible="false" />

    <asp:Repeater ID="ArtworkRepeater" runat="server">
        <HeaderTemplate>
            <div class="card-grid">
        </HeaderTemplate>
        <ItemTemplate>
            <article class="art-card">
                <asp:Image ID="ArtworkImage" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("ImagePath") %>' AlternateText='<%# Eval("Title") %>' />
                <div class="art-card-content">
                    <h3 class="art-card-title"><%# Eval("Title") %></h3>
                    <div class="art-card-meta"><%# Eval("Category") %></div>
                    <p class="art-card-description"><%# Eval("Description") %></p>
                </div>
            </article>
        </ItemTemplate>
        <FooterTemplate>
            </div>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
