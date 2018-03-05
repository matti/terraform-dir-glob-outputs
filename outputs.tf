output "files" {
  value = "${split("//", data.external.glob.result["files"])}"
}
