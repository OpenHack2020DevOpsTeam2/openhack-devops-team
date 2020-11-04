using System;
using System.Collections.Generic;
using System.Text;

namespace poi.Models
{
This is a breaking change
    public class BaseDataObject
    {
        public string Id { get; set; }

        public BaseDataObject()
        {
            Id = Guid.NewGuid().ToString();
        }
    }
}
