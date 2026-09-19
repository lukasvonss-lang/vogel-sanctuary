Dir.glob("_pics/*.{jpg,jpeg,png,webp,JPG,PNG}").each do |path|
  basename = File.basename(path) # 1789363069002.jpg WITH extension
  id = File.basename(path, ".*") # just 1789363069002
  out = "_posts/2000-01-01-#{id}.md"
  next if File.exist?(out)

  File.write(out, <<~MD)
    ---
    layout: post
    post_id: post#{id}
    title: "Art ##{id}"
    permalink: /Posts/#{id}
    image: /_pics/#{basename}
    thumbnail: /Thumbnails/#{id}.jpg
    description: "No description yet"
    ---
  MD
end
