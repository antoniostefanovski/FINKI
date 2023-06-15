using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AlbumMVC.Models
{
    public class Genre
    {
        [Key] 
        public int Id { get; set; }
        [Display(Name="Genre")]
        public string Name { get; set; }
        public string Description { get; set; }
        public virtual List<Album> Albums { get; set; }
        public virtual List<Store> Stores { get; set; }
    }
}