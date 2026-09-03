using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace DigitalArtWebsite
{
    public partial class Inspiration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPosts();
            }
        }

        private void LoadPosts()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ArtGalleryConnection"].ConnectionString;
            string query = "SELECT PostID, Title, Content, PostDate FROM Posts ORDER BY PostDate DESC";

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
            {
                DataTable table = new DataTable();
                adapter.Fill(table);

                if (table.Rows.Count == 0)
                {
                    InspirationMessage.Text = "No posts are available yet. Add new posts on the Admin page.";
                    InspirationMessage.Visible = true;
                }
                else
                {
                    PostRepeater.DataSource = table;
                    PostRepeater.DataBind();
                    InspirationMessage.Visible = false;
                }
            }
        }
    }
}
