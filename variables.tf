variable "tenancy_ocid"{}
variable "compartment_ocid"{}
variable "user_ocid"{}
variable "fingerprint"{}
variable "private_key_path"{}
variable "region"{}
variable "ssh_pkey"{}
variable "ssh_private_key_path"{}



variable "ATP_database_license_model" {

default = "LICENSE_INCLUDED"

}



variable "ATP_database_db_version" {

default = "19c"

}


variable "ATP_database_data_storage_size_in_tbs" {
default = 0.1

}