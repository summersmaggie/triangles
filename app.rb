require('sinatra')
require('sinatra-contrib')
also_reload('lib/**/*.rb')
require('./lib/triangles')
require('pry')