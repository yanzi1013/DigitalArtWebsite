-- SQL script to create the ArtGallery database schema and sample data

IF DB_ID('ArtGallery') IS NULL
BEGIN
    CREATE DATABASE ArtGallery;
END
GO

USE ArtGallery;
GO

IF OBJECT_ID('dbo.Artworks', 'U') IS NOT NULL
    DROP TABLE dbo.Artworks;

IF OBJECT_ID('dbo.Posts', 'U') IS NOT NULL
    DROP TABLE dbo.Posts;

CREATE TABLE dbo.Artworks (
    ArtworkID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(150) NOT NULL,
    Description NVARCHAR(1000) NOT NULL,
    ImagePath NVARCHAR(500) NOT NULL,
    Category NVARCHAR(100) NULL
);

CREATE TABLE dbo.Posts (
    PostID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(150) NOT NULL,
    Content NVARCHAR(MAX) NOT NULL,
    PostDate DATETIME NOT NULL
);

INSERT INTO dbo.Artworks (Title, Description, ImagePath, Category) VALUES
('Morning Bloom', 'A soft pastel study that balances floral shapes with calming texture.', 'Content/images/placeholder.svg', 'Botanical'),
('Daydream Sketch', 'A light and airy composition with a gentle color palette designed for soothing display.', 'Content/images/placeholder.svg', 'Illustration'),
('Quiet Studio', 'Modern pastel artwork with a warm glow and comfortable composition.', 'Content/images/placeholder.svg', 'Interior');

INSERT INTO dbo.Posts (Title, Content, PostDate) VALUES
('Why Pastel Works', 'Pastel tones help create calm, elegant online galleries that feel approachable and warm.', GETDATE()),
('Color Story Tips', 'Use a limited palette and soft gradients to keep your artwork consistent and professional.', DATEADD(day, -5, GETDATE())),
('New Artwork Process', 'Our gallery is built so team members can add new artwork entries quickly through the admin page.', DATEADD(day, -12, GETDATE()));