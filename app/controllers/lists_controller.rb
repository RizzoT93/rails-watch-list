class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.new(lists_params)
    @lists.save
    redirect_to lists_path
  end

  def show
    @lists = List.find(params[:id])
  end

  private

  def lists_params
    params.require(:lists).permit(:name)
  end
end
