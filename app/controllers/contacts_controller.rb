class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
     @contact = Contact.new(contact_params)
     if @contact.save
          ContactMailer.sent(@contact).deliver
          ContactMailer.received_email(@contact).deliver
          #ContactMailer.received_email(@inquiry).deliver 
          flash[:success] = "Thanks!! We'll be in touch."
          redirect_to root_url
     end
  end

  private

      def contact_params
            params.require(:contact).permit(:name, :age, :email, :content)
      end
  
  
end
