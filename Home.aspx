<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DigitalArtWebsite.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <h1>Soft pastel digital art to inspire your next creative moment.</h1>
                <p class="section-subtitle">Explore pastel illustrations, modern artworks, and inspiring stories in a calm, inviting gallery experience.</p>
                <p>
                    <a class="btn-primary-custom" href="Gallery.aspx">Browse the gallery</a>
                    <a class="btn-secondary-custom" href="Inspiration.aspx">Read inspiration</a>
                </p>
            </div>
            <div class="col-lg-5 mt-4 mt-lg-0">
                <asp:Image ID="HomeHeroImage" runat="server" ImageUrl="~/Content/images/placeholder.svg" AlternateText="Soft pastel artwork sample" CssClass="img-fluid" />
            </div>
        </div>
    </section>

    <section class="mb-5">
        <h2 class="section-heading">Every artwork tells a story</h2>
        <p class="section-subtitle">Our collection combines soft textures, humid tones, and thoughtful composition to create work that feels both modern and comforting.</p>
    </section>

    <div class="card-grid">
        <article class="art-card">
            <div class="art-card-content">
                <h3 class="art-card-title">Featured Collections</h3>
                <p class="art-card-description">Choose from gallery pieces, sketches, and color stories designed to fit calm interiors and creative workspaces.</p>
            </div>
        </article>
        <article class="art-card">
            <div class="art-card-content">
                <h3 class="art-card-title">Digital Inspiration</h3>
                <p class="art-card-description">Read behind-the-scenes posts, creative prompts, and seasonal notes from our artists.</p>
            </div>
        </article>
        <article class="art-card">
            <div class="art-card-content">
                <h3 class="art-card-title">Fast updates</h3>
                <p class="art-card-description">New artworks and posts are added regularly so visitors always discover fresh soft pastel creations.</p>
            </div>
        </article>
    </div>
</asp:Content>
