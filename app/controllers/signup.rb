get '/user/new' do
  erb :signup
end

post '/user/new' do
  @user = User.new(params[:user])
  if @user.valid?
    @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    flash[:user_errors] = @user.errors.messages
    redirect '/user/new'
  end
end