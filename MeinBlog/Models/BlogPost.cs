using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MeinBlog.Models
{
    public class BlogPost
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Text { get; set; }
        public string Autor { get; set; }
        public DateTime Date { get; set; }

        public BlogPost()
        {
            
        }

        public BlogPost(int id, string title, string text, string autor, DateTime date)
        {
            Id = id;
            Title = title;
            Text = text;
            Autor = autor;
            Date = date;
        }
    }
}