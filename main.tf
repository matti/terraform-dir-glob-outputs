data "external" "glob" {
  program = ["ruby", "${path.module}/glob.rb"]

  query = {
    pattern = "${var.pattern}"
  }
}
