get '/menu/new' do
  erb :new_menu
end

post '/menu/new' do
  @menu = Menu.create(params[:menu])
  @menu.user_id = current_user.id
  redirect '/'
end

get '/menu/:id' do
  session[:current_menu] = current_menu.id
  erb :menu
end 

