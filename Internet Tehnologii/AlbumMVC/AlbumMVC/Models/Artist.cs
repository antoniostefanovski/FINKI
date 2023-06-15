using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AlbumMVC.Models
{
    public class Artist
    {
        [Key]
        public int Id { get; set; }
        [Display(Name="Artist Name")]
        public string Name { get; set; }
        public virtual List<Album> Albums { get; set; }

    }
}