resource "oci_database_autonomous_database" "test_autonomous_database" {
    #Required
    compartment_ocid = var.compartment_ocid
    cpu_core_count = "1"
    db_name = "Test Database"

    #Optional
    admin_password = "password"
    autonomous_database_id = oci_database_autonomous_database.test_autonomous_database.id

   
  
}