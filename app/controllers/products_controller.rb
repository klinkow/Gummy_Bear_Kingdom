class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end
  def show
    @product = Product.find(params[:id])
    render :show
  end
  def new
    @product = Product.new
    render :new
  end

  def info
    render :info
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product added."
      redirect_to  products_path
    else
      render :new
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product updated."
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product deleted."
    redirect_to products_path
  end
end

private
  def product_params
    params.require(:product).permit(:name, :cost, :coo, :image)
  end
end
