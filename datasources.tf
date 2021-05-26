data "oci_identity_regions" "ociregions"{

}

data "oci_identity_availability_domains" "ad"{

    compartment_id = var.tenancy_ocid
}

data "oci_identity_api_keys" "api_keys"{

    user_id = var.user_ocid

}


data "oci_core_shapes" "lab_shapes"{
    compartment_id = var.compartment_ocid
    filter{
        name = "name"
        values = ["VM.Standard.E2.1.Micro"]
    }
}



data "oci_core_images" "lab_images"{

    compartment_id = var.compartment_ocid
    shape = local.myshape
    operating_system = "Oracle Linux"

}