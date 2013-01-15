require 'rack/contrib/try_static'

configure :production do
  require 'newrelic_rpm'
end

use Rack::TryStatic, 
    :root => "_site",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

run lambda { [404, {'Content-Type' => 'text/html'}, ['whoops! Not Found']]}