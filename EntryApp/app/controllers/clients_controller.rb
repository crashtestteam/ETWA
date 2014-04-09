class ClientsController < ApplicationController
def new
	@client = User.new
end
end
