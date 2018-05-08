Rails.application.routes.draw do
  namespace :api do
    get '/first_contact' => 'contacts#first'
    get '/all_contacts' => 'contacts#all_of_the_contacts_for_me'
  end
end
