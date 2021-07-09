class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params[:id])
   if @contact
      render json: {
        post: @contact
      }
    else
      render json: {
        status: 500,
        errors: ['Could not find a contact with that id']
      }
    end
  end

  def index
    if params[:user_id].present?
      @contacts = Contact.filter_by_user(params[:user_id])
    end
    if params[:incident_id].present?
      @contacts = Contact.filter_by_incident(params[:incident_id])
    end
    if @contacts
      render json: {
        contacts: @contacts
      }
    else
      render json: {
        status: 500,
        errors: ['No contacts found for that incident']
      }
    end
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: {
        status: :created,
        post: @contact
      }
    else 
      render json: {
        status: 500,
        errors: @contact.errors.full_messages
      }
    end
  end
private
  
  def contact_params
    params.require(:contact).permit(:name, :jobtitle, :organization, :email, :phone, :type, :incident_id, :user_id, )
  end

end