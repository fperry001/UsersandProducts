class WelcomeController < ApplicationController
  def index
  	@product =Product.new
  end

  def users
  	if params[:name] != nil && params[:age] != nil
  	user = User.create(name: params[:name], age: params[:age])
  	redirect_to users_path
  end 
		@users = User.all
  end


def show_user
	@user= User.find(params[:id])
end

def edit_user
	@user= User.find(params[:id])
	user.update(name:params[:name], age:params[:age])
	redirect_to users_path

end

def update_user
	user= User.find(params[:id])
	user.update(name: params[:name], age: params[:age])
	redirect to show_user_path(id: user.id)
	end







  def create_products
  	product=Product.create(product_params)
  	redirect_to products_path
  end

  def products
  	@products = Product.all
  end

  def show_product
  	@product= Product.find(params[:id])
  end

  private

  def product_params
  	params.require(:product).permit(:name, :price, :quantity)
end

end
