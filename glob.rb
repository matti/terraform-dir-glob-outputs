require "json"

params = JSON.parse(STDIN.read)

files = Dir.glob(params["pattern"])

result = {
  files: files.join("//")
}

puts result.to_json
