class Spree::ContactsController < ApplicationController
  def new
    @contact = Spree::Contact.new
  end

  def create
    @contact = Spree::Contact.create(contact_params)
    redirect_to root_path
  end
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message, :image)
    end
end