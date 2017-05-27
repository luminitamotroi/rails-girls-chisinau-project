class DomainsController < ApplicationController

	 def filter
	  @updates = Update.where({:domain => params[:domain_type]}).order(id: :desc).limit(200)
	end
end