class ItemsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @items = Item.all

    render("items/index.html.erb")
  end

  def show
    @item = Item.find(params[:id])


    render("items/show.html.erb")
  end

  def new
    @item = Item.new

    render("items/new.html.erb")
  end

  def create
    @item = Item.new

    @item.product = params[:product]
    @item.product_category = params[:product_category]
    @item.origin = params[:origin]
    @item.format = params[:format]
    @item.price = params[:price]
    @item.quantity = params[:quantity]
    @item.image = params[:image]
    @item.category_id = params[:category_id]

    save_status = @item.save

    if save_status == true
      redirect_to("/items/#{@item.id}", :notice => "Item created successfully.")
    else
      render("items/new.html.erb")
    end
  end

  def edit
    @item = Item.find(params[:id])

    render("items/edit.html.erb")
  end

  def update
    @item = Item.find(params[:id])

    @item.product = params[:product]
    @item.product_category = params[:product_category]
    @item.origin = params[:origin]
    @item.format = params[:format]
    @item.price = params[:price]
    @item.quantity = params[:quantity]
    @item.image = params[:image]

    save_status = @item.save

    if save_status == true
      redirect_to("/items/#{@item.id}", :notice => "Item updated successfully.")
    else
      render("items/edit.html.erb")
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    if URI(request.referer).path == "/items/#{@item.id}"
      redirect_to("/", :notice => "Item deleted.")
    else
      redirect_to(:back, :notice => "Item deleted.")
    end
  end
end
