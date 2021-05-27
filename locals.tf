
locals {

    myshape = distinct(data.oci_core_shapes.lab_shapes.shapes[*].name)[0]
    #myimage = data.oci_core_images.lab_images.images[0].id
    myimage = "ocid1.image.oc1.sa-santiago-1.aaaaaaaaktowcbqtdwc7tecu6nxysjp6pxzmk6zspiih3hujf77ekbw7f2ba"
}