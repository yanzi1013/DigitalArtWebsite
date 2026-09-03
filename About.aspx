<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DigitalArtWebsite.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <h1>About our soft pastel art collection</h1>
                <p class="section-subtitle">We create gentle digital artworks and storytelling posts that blend color, texture, and emotion for beautiful online presentation.</p>
            </div>
            <div class="col-lg-5 mt-4 mt-lg-0">
                <asp:Image ID="AboutHeroImage" runat="server" ImageUrl="~/Content/images/placeholder.svg" AlternateText="About soft pastel art" CssClass="img-fluid" />
            </div>
        </div>
    </section>

    <section class="mb-5">
        <h2 class="section-heading">Our mission</h2>
        <p class="section-subtitle">We prepare a digital gallery experience where every artwork and post reflects calm energy, carefully chosen color palettes, and approachable creativity.</p>
    </section>

    <div class="card-grid">
        <article class="art-card">
            <div class="art-card-content">
                <h3 class="art-card-title">Thoughtful artwork</h3>
                <p class="art-card-description">Each piece is designed to feel welcoming and softly expressive, with pastel textures that work well on screens and prints.</p>
            </div>
        </article>
        <article class="art-card">
            <div class="art-card-content">
                <h3 class="art-card-title">Designed to evolve</h3>
                <p class="art-card-description">This site is built to grow with your gallery. Artwork records, categories, and post content are all editable through the admin panel.</p>
            </div>
        </article>
    </div>
</asp:Content>
