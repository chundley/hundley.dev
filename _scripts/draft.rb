require 'date'

def new_draft
  post_name = ARGV[0]
  post_file_name = post_name + ".md"
  d = DateTime.now
  post_d = d.strftime("%Y-%m-%dT%H:%M:%SZ")

  out_file = File.new("_drafts/" + post_file_name, "w")
  out_file.puts("---")
  out_file.puts("layout: post")
  out_file.puts("title: " + post_name)
  out_file.puts("date: " + post_d)
  out_file.puts("author: ")
  out_file.puts("---")
  out_file.puts("Lorem ipsum dolar")
  out_file.close
  puts("Created '" + post_file_name + "' in _drafts folder")
end
new_draft