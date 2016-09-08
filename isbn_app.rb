require "sinatra"
require_relative "app_isbn2.rb"

get "/" do
erb :isbn_app_input
end
post "/isbn" do
	isbn = params[:valid]
	numbers = valid_isbn_10_or_13(isbn)
	if numbers == true
		numbers = "valid"
	else numbers == false
		numbers = "invalid"
	end
	"ISBN #{numbers}"


	
end