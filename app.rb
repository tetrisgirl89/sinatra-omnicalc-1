require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square") do
  @num_user = params.fetch("number").to_i
  @num_square = params.fetch("number").to_f ** 2
  erb(:square_results)
end


get("/square/new") do
  erb(:square)
end
