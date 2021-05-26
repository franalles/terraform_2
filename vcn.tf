resource "oci_core_vcn" "lab_vcn"{

    compartment_id = var.compartment_ocid
    cidr_block = "10.200.0.0/16"
    display_name = "StudentAC_vcn"

}

resource "oci_core_internet_gateway" "internet-gateway" {
  compartment_id = var.compartment_ocid
  display_name   = "Internet Gateway"
  enabled        = "true"
  vcn_id         = oci_core_vcn.lab_vcn.id
}

resource "oci_core_route_table" "public-rt" {
  display_name   = "Route Table"
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.lab_vcn.id

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.internet-gateway.id
  }
}