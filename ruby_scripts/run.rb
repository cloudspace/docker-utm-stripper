require 'uri'
uri = URI.parse(URI.decode(ARGV[0]))
if uri.query
  clean_key_vals = URI.decode_www_form(uri.query).reject{|k, _| k.start_with?('utm_')}
  uri.query = URI.encode_www_form(clean_key_vals)
end
puts "{\"url\": \"#{uri.to_s}\"}"