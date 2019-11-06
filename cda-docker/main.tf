provider "cda" {
  cda_server     = "http://localhost/cda"
  user           = "100/AUTOMIC/AUTOMIC"
  password       = "automic"  
	
  default_attributes = { // default_attributes can be used to set the 'folder' and 'owner' attributes globally for the template.
    folder = "DEFAULT"
    owner  = "100/AUTOMIC/AUTOMIC"
  }
}

provider "docker" {
  host = "http://lefdo01-1120189:4243"
}
