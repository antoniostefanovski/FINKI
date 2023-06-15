using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Libraries.Models
{
    public class Author
    {
        [Key]
        public int Id { get; set; }
        [Display(Name="Author Name")]
        public string Name { get; set; }
        [Display(Name = "Author Description")]
        public string Description { get; set; }
        public virtual List<Book> Books { get; set; }
    }
}