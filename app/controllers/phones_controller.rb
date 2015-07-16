class PhonesController < ApplicationController
  def new
    @contact = Contact.find(params[:contact_id])
    @phone = @contact.phones.build

    # contact = Contact.find(params[:contact_id])
    # @phone = contact.phones.new
    # render('phones/new.html.erb')
  end


  def create
    @contact = Contact.find params[:contact_id]
    @phone = @contact.phones.build(params[:phone])
    if @phone.save
      # render('phones/success.html.erb')
      render 'success'
    else
      # render('phones/new.html.erb')
      render 'new'
    end
  end


  def edit
    @phone = Phone.find(params[:id])
    # render('phones/edit.html.erb')
  end


  def update
    @phone = Phone.find(params[:id])
    if @phone.update(params[:phone])
      # render('phones/success.html.erb')
      render 'success'
    else
      # render('phones/edit.html.erb')
      render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    # render ('phones/destroy.html.erb')
  end

end