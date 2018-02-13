require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')
require('pry')

get('/') do
  erb(:input)
end

post('/output') do
  @side1 = params.fetch("side1").to_i
  @side2 = params.fetch("side2").to_i
  @side3 = params.fetch("side3").to_i
  new_triangle = Triangle.new(@side1, @side2, @side3)
  @output = new_triangle.calculate
  erb(:output)
end
