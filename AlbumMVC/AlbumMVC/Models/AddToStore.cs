using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AlbumMVC.Models
{
    public class AddToStore
    {
        public int storeId { get; set; }
        public int albumId { get; set; }
        public List<Album> albums { get; set; }
    }
}