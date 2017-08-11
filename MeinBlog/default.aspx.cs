using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using MeinBlog.Models;

namespace MeinBlog
{
    public partial class _default : System.Web.UI.Page
    {
        public List<BlogPost> Posts { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Posts = new List<BlogPost>
            {
                new BlogPost(1,"Titel 1", LoremNET.Lorem.Words(300), "David Tielke", DateTime.Now.Date.AddMonths(-1)),
                new BlogPost(2,"Titel 2", LoremNET.Lorem.Words(300), "Jan Laberbacke", DateTime.Now.Date.AddMonths(-2)),
                new BlogPost(3,"Titel 3", LoremNET.Lorem.Words(300), "Jan Klugscheißer", DateTime.Now.Date.AddMonths(-3)),
                new BlogPost(4,"Titel 4", LoremNET.Lorem.Words(300), "Jan BLAH BLAH", DateTime.Now.Date.AddMonths(-4)),
                new BlogPost(5,"Titel 5", LoremNET.Lorem.Words(300), "Stefan Hatrecht", DateTime.Now.Date.AddMonths(-5)),
            };
        }

        public IEnumerable<BlogPost> LoadPosts([Control("ddlAutor")] string autor,
            [Control("ddlMonth")] int? month)
        {
            var posts = Posts.AsEnumerable();
            if (autor != "Alle")
            {
                posts = posts.Where(p => p.Autor == autor);
            }

            if (month != 0)
            {
                posts = posts.Where(p => p.Date.Month == month);
            }
            return posts;
        }

        public IEnumerable<string> LoadAutors()
        {
            var autors = Posts
                .Select(p => p.Autor)
                .Distinct()
                .OrderBy(a => a)
                .ToList();
            autors.Insert(0, "Alle");
            return autors;
        }

        public IEnumerable<Month> LoadMonth()
        {
            var month = Posts
                .Select(p => p.Date.Month)
                .Distinct()
                .OrderBy(m => m)
                .Select(m => new Month
                {
                    Number = m,
                    Text = new DateTime(1, m, 1).ToString("MMMM", 
                    CultureInfo.CreateSpecificCulture("de"))
                }).ToList();

            month.Insert(0, new Month
            {
                Number = 0,
                Text = "Alle"
            });
            return month;
        }

        protected int GetTotalCount()
        {
            return 0;
        }
    }
}