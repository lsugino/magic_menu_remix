post '/items/new' do
  @item = Item.create(params[:item])
  erb :_item, :layout => false
end

post '/item' do
  @menuitem = MenuItem.create(item_id: params["item_id"], menu_id: session[:current_menu])
  erb :_menuitem, :layout => false
end

delete '/item' do
  MenuItem.destroy(params["id"])
end
