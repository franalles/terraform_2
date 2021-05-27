resource "oci_database_autonomous_database" "test_autonomous_database" {
    #Required
    compartment_id = var.compartment_ocid
    cpu_core_count = "1"
    db_name = "TestDatabase"

    #Optional
    admin_password = "PB7J06TfG29c"
    db_version = var.ATP_database_db_version
    license_model = var.ATP_database_license_model
    data_storage_size_in_tbs = var.ATP_database_data_storage_size_in_tbs
    
}