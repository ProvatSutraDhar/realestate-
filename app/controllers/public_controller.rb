class PublicController < ApplicationController
  def main
    if account_signed_in?
      redirect_to dashboard_path, flash: {success: "Successfully Signed in. Welcome to Real Estate!" }
    end
      @properties = Property.latest
  end
end
