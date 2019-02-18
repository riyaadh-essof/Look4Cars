namespace Look4Cars.Results
{
    public class Error
    {
        public string FieldCategory { get; set; }
        public string FieldName { get; set; }
        public string FieldStatusCode { get; set; }
        public string Description { get; set; }

        public Error(string fieldCategory, string fieldName, string fieldStatusCode, string description)
        {
            FieldCategory = fieldCategory;
            FieldName = fieldName;
            FieldStatusCode = fieldStatusCode;
            Description = description;
        }
    }
}