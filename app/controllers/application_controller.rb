class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_for_cancel_back_to_show, :only => [:delete, :update]
  before_filter :check_for_cancel_back_to_index, :only => [:create]

def check_for_cancel_back_to_show
  if params[:commit] == "Cancel"
    redirect_to :action => 'show'
  end
end

def check_for_cancel_back_to_index
  if params[:commit] == "Cancel"
    redirect_to :action => 'index'
  end
end

end
