class ResourcePagesController < ApplicationController
  before_action :signed_in_user, only: [:agents]

  def agents
  end

  def travelers
  end

  private 
  	def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
end
