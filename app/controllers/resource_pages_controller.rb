class ResourcePagesController < ApplicationController
  before_action :signed_in_user, only: [:agents,:rail]

  def agents
  end

  def travelers
  end

  def rail
  end

  def cruise
  end

  def tour
  end

  def airline
  end

  def car
  end





  private 
  	def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
end
