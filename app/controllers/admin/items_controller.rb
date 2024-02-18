class Admin::ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :show]
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item)
    else
      render :new
    end
  end
  
  def index
    @items = Item.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    redirect_to admin_item_path(@item)
  end
  
  private
  
  def set_item
    @item = Item.find(params[:id])
  end
  
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :is_active, :genre_id, :image)
  end
end
