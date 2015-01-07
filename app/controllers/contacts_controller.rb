class ContactsController < ApplicationController
  def index
    @contacts = Contact.sorted
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new({:name => "Default"})
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Page created successfully."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def delete
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      flash[:notice] = "Contact updated successfully."
      redirect_to(:action => 'show', :id => @contact.id)
    else
      render 'edit'
    end
  end

  def destroy
    contact = Contact.find(params[:id]).destroy
    flash[:notice] = "Contact updated successfully."
    redirect_to(:action => 'index')
  end
end
