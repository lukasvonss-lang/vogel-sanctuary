Dir.glob("_pics/*.{jpg,jpeg,png,webp,JPG,PNG}").each do |path|
  id = File.basename(path, ".*")
  out = "_posts/2000-01-01-#{id}.md"
  next if File.exist?(out)

  File.write(out, <<~MD)
    ---
    layout: post
    post_id: post#{id}
    title: "Art ##{id}"
    image: "/#{path}"
    thumbnail: "/Thumbnails/#{id}.jpg"
    description: "No description yet"
    ---
  MD
end
