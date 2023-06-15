using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Libraries.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        [StringLength(5)]
        [Display(Name ="Book Code")]
        public string BookCode { get; set; }
        public int AuthorId { get; set; }
        public virtual Author Author { get; set; }
        public virtual List<Library> Libraries { get; set; }
    }
}