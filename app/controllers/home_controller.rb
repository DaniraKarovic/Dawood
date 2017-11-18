class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def sendemail
    mail_params
    
  end

  private
  def mail_params
    params.require(:mail).permit(:name, :email, :message)
  end
end
