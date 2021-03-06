class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]
  before_action :admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Product was successfully added.'
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = 'Product successfully updated.'
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = 'Product successfully deleted.'
      redirect_to '/'
    end
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.js
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
