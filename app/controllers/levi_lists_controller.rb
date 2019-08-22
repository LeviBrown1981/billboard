class LeviListsController < ApplicationController
  before_action :set_levi_list, only: [:show, :edit, :update, :destroy]
  
  def index
    @levi_lists = Levi_list.all
  end

  def show
  end

  def new
    @levi_lists = Levi_list.new
  end

  def create
    @levi_list =Levi_list.new(levi_list_params)
    if levi_list.save
      redirect_to levi_lists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
   if @levi_list.update(levi_list_params) 
    redirect_to levi_lists_path
   else
    render :edit
   end
  end
  
  def destroy
    @levi_list.destroy
    redirect_to levi_lists_path
  end

  private
  def set_levi_list
    @levi_list = Levi_list.find(params[:id])
  end

  def levi_list_params
    params.require(:artist, :song, :avatar)
  end
end
