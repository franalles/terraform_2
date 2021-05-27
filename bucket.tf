resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = var.compartment_ocid
    name = "Bucket"
    namespace = "ax3jtjrhgkjy"

   
}