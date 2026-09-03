using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace DigitalArtWebsite
{
    public partial class Admin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddArtworkButton_Click(object sender, EventArgs e)
        {
            string title = ArtworkTitle.Text.Trim();
            string description = ArtworkDescription.Text.Trim();
            string category = ArtworkCategory.Text.Trim();
            string imagePath = ArtworkImagePath.Text.Trim();

            if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(description))
            {
                ShowMessage("Please provide a title and description for the artwork.");
                return;
            }

            string query = "INSERT INTO Artworks (Title, Description, ImagePath, Category) VALUES (@Title, @Description, @ImagePath, @Category)";
            string connectionString = ConfigurationManager.ConnectionStrings["ArtGalleryConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Title", title);
                command.Parameters.AddWithValue("@Description", description);
                command.Parameters.AddWithValue("@ImagePath", imagePath);
                command.Parameters.AddWithValue("@Category", category);

                connection.Open();
                command.ExecuteNonQuery();
            }

            ClearArtworkForm();
            ShowMessage("Artwork saved successfully.");
        }

        protected void AddPostButton_Click(object sender, EventArgs e)
        {
            string title = PostTitle.Text.Trim();
            string content = PostContent.Text.Trim();
            string postDateText = PostDate.Text.Trim();
            DateTime postDate = DateTime.Now;

            if (!string.IsNullOrWhiteSpace(postDateText) && !DateTime.TryParse(postDateText, out postDate))
            {
                ShowMessage("Enter a valid date in yyyy-MM-dd format or leave it blank.");
                return;
            }

            if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(content))
            {
                ShowMessage("Please provide a title and content for the post.");
                return;
            }

            string query = "INSERT INTO Posts (Title, Content, PostDate) VALUES (@Title, @Content, @PostDate)";
            string connectionString = ConfigurationManager.ConnectionStrings["ArtGalleryConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Title", title);
                command.Parameters.AddWithValue("@Content", content);
                command.Parameters.AddWithValue("@PostDate", postDate);

                connection.Open();
                command.ExecuteNonQuery();
            }

            ClearPostForm();
            ShowMessage("Post saved successfully.");
        }

        private void ClearArtworkForm()
        {
            ArtworkTitle.Text = string.Empty;
            ArtworkDescription.Text = string.Empty;
            ArtworkCategory.Text = string.Empty;
            ArtworkImagePath.Text = string.Empty;
        }

        private void ClearPostForm()
        {
            PostTitle.Text = string.Empty;
            PostContent.Text = string.Empty;
            PostDate.Text = string.Empty;
        }

        private void ShowMessage(string message)
        {
            AdminMessage.Text = message;
            AdminMessage.Visible = true;
        }
    }
}
