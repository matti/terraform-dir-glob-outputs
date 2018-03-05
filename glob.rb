require "json"

params = JSON.parse(STDIN.read)

results = Dir.glob(params["pattern"])

files, dirs = [], []
for result in results do
  files << result if File.file?(result)
  dirs << result if File.directory?(result)
end

result = {
  files: files.join("//"),
  dirs: dirs.join("//")
}

puts result.to_json
