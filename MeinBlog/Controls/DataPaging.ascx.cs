using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeinBlog.Controls
{
    public partial class DataPaging : System.Web.UI.UserControl
    {
        public int TotalCount { get; set; }
        public int CurrentPage { get; set; }
        public int PageSize { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}