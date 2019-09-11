class Spree::ContactsController < Spree::StoreController
  def new
    @contact = Spree::Contact.new
  end

  def create
    @contact = Spree::Contact.create(contact_params)
    ContactMailer.with(user: current_spree_user).thank_you_email(@contact).deliver_now
    flash[:notice] = "Message sent successfully"
    redirect_to root_path
  end
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :message, :image)
    end
end