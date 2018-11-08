require 'date'

def new_post
  post_name = ARGV[0]
  puts post_name
  d = DateTime.now
  file_d = d.strftime("%Y-%m-%d")
  post_d = d.strftime("%Y-%m-%dT%H:%M:%SZ")

  out_file = File.new("_posts/" + file_d + "-" + post_name + ".md", "w")

  out_file.puts("---")
  out_file.puts("layout: post")
  out_file.puts("date: " + post_d)
  out_file.puts("author: ")
  out_file.puts("---")
  out_file.puts("Lorem ipsum dolar")
  out_file.close

end
new_post