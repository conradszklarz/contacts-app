class Api::ContactsController < ApplicationController
  def all_of_the_contacts_for_me
    @contacts = Contact.all
    render 'belonging_to_us.json.jbuilder'
  end
end
