resource "oci_core_instance" "test_instance" {
    #Required
    availability_domain = data.oci_identity_availability_domains.ad.availability_domains[0]["name"]
    compartment_id = var.compartment_ocid
    shape = local.myshape
    subnet_id = oci_core_subnet.lab_subnet.id

    create_vnic_details {
        subnet_id = oci_core_subnet.lab_subnet.id
    }

    source_details {
        source_id = local.myimage
        source_type = "image"

    }

    metadata = {
        ssh_authorized_keys = var.ssh_pkey
    }


    provisioner "local-exec" {
        command = "echo ${self.display_name} - ${self.public_ip} > instance.txt"
    }

    connection {
        type        = "ssh"
        host        = "${self.public_ip}"
        user        = "ubuntu"
        private_key = "${file(var.ssh_private_key_path)}"
    }

    provisioner "remote-exec" { 
        inline = [ "sudo apt-get update","sudo apt-get install -y nginx", "sudo apt-get install -y vim", 
        "sudo mv /var/www/html/index.nginx-debian.html /var/www/html/index.html", 
        "sudo iptables -I INPUT -p tcp --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT",
        "sudo iptables -I OUTPUT -p tcp --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT"] 
    }

}


