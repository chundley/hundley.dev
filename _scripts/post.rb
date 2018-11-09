require 'date'

def new_post
  post_name = ARGV[0]
  d = DateTime.now
  file_d = d.strftime("%Y-%m-%d")
  post_d = d.strftime("%Y-%m-%dT%H:%M:%SZ")

  final_name = "_posts/" + file_d + "-" + post_name + ".md"
  out_file = File.new(final_name, "w")

  out_file.puts("---")
  out_file.puts("layout: post")
  out_file.puts("title: " + post_name)
  out_file.puts("date: " + post_d)
  out_file.puts("author: ")
  out_file.puts("---")
  out_file.puts("Lorem ipsum dolar")
  out_file.close
  puts("Created '" + final_name + "' in _posts folder")
end
new_post
