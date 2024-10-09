apiVersion = "pkg.crossplane.io/v1"
kind = "Provider"
metadata = {
  name = "provider-terraform"
}
spec = {
  package = "xpkg.upbound.io/upbound/${metadata.name}:v0.18.0"
}
