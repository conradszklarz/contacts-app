class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    contact_id = params["id"]
    @contact = Contact.find(contact_id)
    render 'show.json.jbuilder'
  end

  def create
    @contact = Contact.new(
                           first_name: params[:first_name],
                           last_name: params[:last_name],
                           email: params[:email])
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find[contact_id]

    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email

    @contact.save
    render 'show.json.jbuilder'
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find(contact_id)
    @contact.destroy
    render json: {message: "Contact successfully destroyed."}
  end
end

