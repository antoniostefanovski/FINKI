using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Libraries.Models
{
    public class Library
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
        public string ImageURL { get; set; }
        public virtual List<Book> Books { get; set; }
        
    }
}