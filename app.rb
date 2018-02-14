require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_things.rb')

get('/') do
  @list = Item.all()
  erb(:list)
end

post('/') do
  name = params["name"]
  item = Item.new(name)
  item.save()
  @list = Item.all()
  erb(:list)
end
