require 'rack/contrib/try_static'

use Rack::TryStatic, 
  :urls => %w(/css /js /img /blog),
  :root => "public",
  :try => ['.html', 'index.html', '/index.html']

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}