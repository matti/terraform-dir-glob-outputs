output "files" {
  value = "${split("//", data.external.glob.result["files"])}"
}

output "dirs" {
  value = "${split("//", data.external.glob.result["dirs"])}"
}
