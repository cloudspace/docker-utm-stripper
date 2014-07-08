require 'uri'
puts "1"
puts ARGV[0]
uri = URI.parse(URI.decode(ARGV[0]))
puts "2"
puts uri
if uri.query
  puts "3"
  puts uri.query
  clean_key_vals = URI.decode_www_form(uri.query).reject{|k, _| k.start_with?('utm_')}
  puts "4"
  puts clean_key_vals
  uri.query = URI.encode_www_form(clean_key_vals)
  puts "5"
  puts uri.query
  puts "6"
  puts uri
end
puts uri.to_s