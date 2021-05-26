output "ad"{

    value = data.oci_identity_availability_domains.ad.availability_domains

}

output "compute"{

   value = distinct(data.oci_core_shapes.lab_shapes.shapes[*].name)
}

output "images"{

value = "${data.oci_core_images.lab_images.images[0].display_name} ${data.oci_core_images.lab_images.images[0].id}"
}
