require 'json'
require 'fileutils'

pics_dir = "_pics"
posts_dir = "_posts"
FileUtils.mkdir_p(posts_dir)

Dir.glob("#{pics_dir}/*.{jpg,jpeg,png,webp,gif}").each do |img_path|
  name = File.basename(img_path, ".*")
  next if File.exist?("#{posts_dir}/#{name}.md") # don't overwrite

  File.write("#{posts_dir}/#{Time.now.strftime('%Y-%m-%d')}-#{name}.md", <<~MD)
    ---
    layout: pic
    title: "#{name.gsub('-',' ').capitalize}"
    image_path: "/#{img_path}"
    date: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}
    ---
  MD
end
