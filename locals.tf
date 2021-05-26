
locals {

    myshape = distinct(data.oci_core_shapes.lab_shapes.shapes[*].name)[0]
    #myimage = data.oci_core_images.lab_images.images[0].id
    myimage = "ocid1.image.oc1.iad.aaaaaaaaspm3ehadnfgxlw6t5be5afemrzqqdfdprcd6eqkph4p5ad3b62xq"
}