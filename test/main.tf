module "glob" {
  source = ".."

  pattern = "**/*"
}

output "out" {
  value = {
    files = "${module.glob.files}"
  }
}
