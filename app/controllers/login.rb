get '/login' do
  redirect '/' if session[:user_id]
  erb :login
end

post '/login' do
  @user = User.find_by(name: params[:name])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/'
  else
    flash[:password_wrong] = "YOU\'RE WRONG!"
    redirect '/login'
  end
end