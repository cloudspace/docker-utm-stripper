require 'uri'
uris = URI.extract(ARGV[0])
uri = URI.decode(uris[0])
uri = URI.parse(uri)
if uri.query
  clean_key_vals = URI.decode_www_form(uri.query).reject{|k, _| k.start_with?('utm_')}
  uri.query = URI.encode_www_form(clean_key_vals)
end
puts uri.to_s