class SparrowsController < ApplicationController
  def index
    @sparrows = Sparrow.all
  end

  def show
    @sparrow = Sparrow.find(params[:id])
  end

  def new
    @sparrow = Sparrow.new
  end

  def create
    @sparrow = Sparrow.new(sparrow_params)

    if @sparrow.save
      redirect_to sparrow_path(@sparrow)
    else
      render :new
    end
  end

  def update
    if @sparrow.update(sparrow_params)
      redirect_to sparrow_path(@sparrow)
    else
      render :edit
    end
  end

  private

  def sparrow_params
    params.permit(:name, :email, :phone_number)
  end
end
