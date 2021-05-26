resource "oci_core_subnet" "lab_subnet" {
    #Required
    cidr_block = "10.200.99.0/24"
    compartment_id = var.compartment_ocid
    display_name = "StudentAC_subnet"
    vcn_id = oci_core_vcn.lab_vcn.id
    route_table_id    = oci_core_route_table.public-rt.id
    security_list_ids = [oci_core_security_list.security-list.id]

} 
