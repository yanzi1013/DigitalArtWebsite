using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace DigitalArtWebsite
{
    public partial class Gallery : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadArtworks();
            }
        }

        private void LoadArtworks()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ArtGalleryConnection"].ConnectionString;
            string query = "SELECT ArtworkID, Title, Description, ImagePath, Category FROM Artworks ORDER BY ArtworkID DESC";

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            {
                DataTable table = new DataTable();
                adapter.Fill(table);

                if (table.Rows.Count == 0)
                {
                    GalleryMessage.Text = "No artworks are available yet. Add new pieces on the Admin page.";
                    GalleryMessage.Visible = true;
                }
                else
                {
                    ArtworkRepeater.DataSource = table;
                    ArtworkRepeater.DataBind();
                    GalleryMessage.Visible = false;
                }
            }
        }
    }
}
