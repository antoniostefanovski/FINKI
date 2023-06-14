using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AlbumMVC.Models
{
    public class Album
    {
        [Key]
        public int Id { get; set; }
        [Display(Name="Album Name")]
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string AlbumArtURL { get; set; }
        public int ArtistId { get; set; }
        public virtual Artist Artist { get; set; }
        public int GenreId { get; set; }
        public virtual Genre Genre { get; set; }
    }
}