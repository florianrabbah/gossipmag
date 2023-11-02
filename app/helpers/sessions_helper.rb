module SessionsHelper


  def some_method
    # une méthode et son code
  end


  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end




end