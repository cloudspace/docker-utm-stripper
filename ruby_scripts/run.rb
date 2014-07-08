require 'uri'

uri = URI.parse(ARGV[0])
clean_key_vals = URI.decode_www_form(uri.query).reject{|k, _| k.start_with?('utm_')}
uri.query = URI.encode_www_form(clean_key_vals)
puts uri.to_s