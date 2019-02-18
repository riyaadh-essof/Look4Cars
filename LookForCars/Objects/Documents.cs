using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class Documents
    {
        public string DocumentCategory { get; set; }
        public string DocumentDescription { get; set; }
        public string Base64EncodedDocument { get; set; }
        public string FileExtension { get; set; }
        public string DocumentGUID { get; set; }

        public Documents(string documentCategory, string documentDescription, string base64EncodedDocument, string fileExtension, string documentGUID)
        {
            DocumentCategory = documentCategory;
            DocumentDescription = documentDescription;
            Base64EncodedDocument = base64EncodedDocument;
            FileExtension = fileExtension;
            DocumentGUID = documentGUID;
        }
    }
}