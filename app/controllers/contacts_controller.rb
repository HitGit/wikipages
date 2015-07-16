class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    @contact = Contact.new
    # render('contacts/index.html.erb')
  end


  def new
    @contact = Contact.new
    # render('contacts/new.html.erb')
  end


  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = "Your contact was added to Wikipages!"
      # redirect_to("/contacts/#{@contact.id}")
      redirect_to contacts_path(@contact)
    else
      # render('contacts/new.html.erb')
      render 'new'
    end
  end


  def show
    @contact = Contact.find(params[:id])
    # render('contacts/show.html.erb')
  end



  def edit
    @contact = Contact.find(params[:id])
    # render('contacts/edit.html.erb')
  end


  def update
    @contact = Contact.find(params[:id])
    if @contact.update(params[:contact])
      flash[:notice] = "Your contact was updated!"
      # redirect_to("/contacts/#{@contact.id}")
      redirect_to contact_path(@contact)
    else
      # render('contacts/edit.html.erb')
      render 'edit'
    end
  end


  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      flash[:notice] = "Your contact was deleted!"
      redirect_to '/contacts'
    else
      redirect_to :back
    end
  end


end


