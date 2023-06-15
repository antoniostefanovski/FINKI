using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libraries.Models
{
    public class AuthorBook
    {
        public int AuthorId { get; set; }
        public int BookId { get; set; }
        public List<Book>  Books { get; set; }
    }
}