class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
  
    @oneProduct = Product.find_by(id:params[:id])
    
  end

  def new
    @productCategories = Category.all
  end

  def edit
    @ProductToEdit = Product.find_by(id:params[:id])
  end

  def create
    @productCategory = Category.find(params[:category].to_i)
    puts @productCategory.name
    @newProduct = Product.new(name:params[:name], description:params[:description], pricing:params[:price], category: @productCategory)
      if(@newProduct.save)
        
         redirect_to('/')
      else
        flash[:errors] = @newProduct.errors.full_messages
        redirect_to('/products/new')
      end

  end

  def update
    @updatedProduct = Product.find_by(id:params[:id])
    if @updatedProduct.update(name:params[:name], description:params[:description], pricing:params[:price])
      redirect_to('/')
    end
  end

  def destroy
    Product.find_by(id:params[:id]).destroy
    redirect_to('/')

  end

  def back
    redirect_to('/')
  end
end 