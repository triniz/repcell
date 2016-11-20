class ContactsController < ApplicationController
  def new
      @contact = Contact.new
  end

  def create
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
          flash[:notice] = "Merci! Votre message a été envoyé avec succès."
      else
          flash.now[:error] = 'Le message n''a pas été envoyé'
          render :new
      end
  end
end
