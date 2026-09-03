<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DigitalArtWebsite.Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="mb-4">
        <h1 class="section-heading">Admin</h1>
        <p class="section-subtitle">Add new artworks and inspiration posts directly into the database.</p>
    </section>

    <asp:Label ID="AdminMessage" runat="server" CssClass="success-message" Visible="false" />

    <div class="admin-grid">
        <section class="form-section">
            <h2 class="section-heading">Add artwork</h2>
            <div class="panel-body">
                <asp:Label ID="LabelArtworkTitle" runat="server" AssociatedControlID="ArtworkTitle" CssClass="label" Text="Title" />
                <asp:TextBox ID="ArtworkTitle" runat="server" CssClass="form-control" />

                <asp:Label ID="LabelArtworkDescription" runat="server" AssociatedControlID="ArtworkDescription" CssClass="label" Text="Description" />
                <asp:TextBox ID="ArtworkDescription" runat="server" TextMode="MultiLine" CssClass="form-control" />

                <asp:Label ID="LabelArtworkCategory" runat="server" AssociatedControlID="ArtworkCategory" CssClass="label" Text="Category" />
                <asp:TextBox ID="ArtworkCategory" runat="server" CssClass="form-control" />

                <asp:Label ID="LabelArtworkImagePath" runat="server" AssociatedControlID="ArtworkImagePath" CssClass="label" Text="Image path" />
                <asp:TextBox ID="ArtworkImagePath" runat="server" CssClass="form-control" TextMode="SingleLine" />

                <asp:Button ID="AddArtworkButton" runat="server" CssClass="btn-primary-custom" Text="Save artwork" OnClick="AddArtworkButton_Click" />
            </div>
        </section>

        <section class="form-section">
            <h2 class="section-heading">Add post</h2>
            <div class="panel-body">
                <asp:Label ID="LabelPostTitle" runat="server" AssociatedControlID="PostTitle" CssClass="label" Text="Title" />
                <asp:TextBox ID="PostTitle" runat="server" CssClass="form-control" />

                <asp:Label ID="LabelPostContent" runat="server" AssociatedControlID="PostContent" CssClass="label" Text="Content" />
                <asp:TextBox ID="PostContent" runat="server" TextMode="MultiLine" CssClass="form-control" />

                <asp:Label ID="LabelPostDate" runat="server" AssociatedControlID="PostDate" CssClass="label" Text="Date" />
                <asp:TextBox ID="PostDate" runat="server" CssClass="form-control" TextMode="SingleLine" Placeholder="yyyy-MM-dd" />

                <asp:Button ID="AddPostButton" runat="server" CssClass="btn-primary-custom" Text="Save post" OnClick="AddPostButton_Click" />
            </div>
        </section>
    </div>
</asp:Content>
