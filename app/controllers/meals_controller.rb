class MealsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @meals = Meal.all.order("id DESC")
    @meals_like = Meal.limit(10).includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find(params[:id])
    @comments = @meal.comments
    @comment = Comment.new
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def create
    meal = Meal.new(meals_params)
    meal.user_id = current_user.id
    if meal.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def update
    meal = Meal.find(params[:id])
    if meal.update(meals_params)
      redirect_to :action => "show", :id => meal.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    redirect_to action: :index
  end
  
  def search
    @results = @q.result.sort {|a,b| b.liked_users.size <=> a.liked_users.size}
  end

  private
  
  def set_q
    @q = Meal.ransack(params[:q])
  end
  
  def meals_params
    params.require(:meal).permit(:name, :image, :feeling, :ingredient, :time, :kinds, :dish)
  end

end
