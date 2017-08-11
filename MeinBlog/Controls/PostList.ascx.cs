using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MeinBlog.Models;

namespace MeinBlog.Controls
{
    public partial class PostList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<BlogPost> LoadPosts()
        {
            return new List<BlogPost>
            {
                new BlogPost(1,"Titel 1", LoremNET.Lorem.Words(300), "David Tielke", DateTime.Now.Date),
                new BlogPost(2,"Titel 2", LoremNET.Lorem.Words(300), "David Tielke", DateTime.Now.Date),
                new BlogPost(3,"Titel 3", LoremNET.Lorem.Words(300), "David Tielke", DateTime.Now.Date),
                new BlogPost(4,"Titel 4", LoremNET.Lorem.Words(300), "David Tielke", DateTime.Now.Date),
                new BlogPost(5,"Titel 5", LoremNET.Lorem.Words(300), "David Tielke", DateTime.Now.Date),
            };
        }
    }
}