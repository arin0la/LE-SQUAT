class ToiletsController < ApplicationController
  before_action :set_toilet_id, only: [:show, :edit, :update]

  def show

  end

  def index
    @toilets = Toilet.all
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user = current_user
    if @toilet.save
      redirect_to toilet_path(@toilet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update
    @toilet = Toilet.update(toilet_params)
    redirect_to toilet_path(@toilet)
  end

  def destroy

  end

  private

  def set_toilet_id
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:name, :description, :price)
  end
end
