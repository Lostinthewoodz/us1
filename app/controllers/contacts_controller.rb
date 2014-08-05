class ContactsController < ApplicationController
  def show
    @contact = Contact.find(params[:id])
    
  end

  def index
    @contact = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_email(@contact).deliver
      redirect_to root_path
    else
      @feed_items = []
      redirect_to contact_path
    end
  end
  
  def destroy
    @contact = contact.find(params[:id])
    @contact.destroy
  end

  private

    def contact_params
      params.require(:contact).permit(:title, :content, :email)
    end
end