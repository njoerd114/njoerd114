apiVersion = "tf.upbound.io/v1beta1"
kind = "Workspace"
metadata = {
  name = "demo"
}
spec = {
  forProvider = {
    source = "Inline"
    module = """\
variable "installation_id" {
  type = string
  default = "foo"
}

resource "random_pet" "random_pet" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    random_id = var.installation_id
  }
}

output "pet_name" {
  value = random_pet.random_pet.id
}
"""
}
writeConnectionSecretToRef = {
    name = "demo"
    namespace: "default"
}
}
