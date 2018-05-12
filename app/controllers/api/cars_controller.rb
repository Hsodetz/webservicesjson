class Api::CarsController < ApplicationController

 def index
    @cars = Car.all
    render json: @cars
  end
 
  def show
  end
 
  def create
    @car = Car.new(user_params)
 
    if @car.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end
 
  def update
    if @car.update(user_params)
      render json: @car, status: :ok
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end
 
  def destroy
    @car.destroy
    head :no_content
  end
 
  private
    def set_user
      @car = Car.find(params[:id])
    end
 
    def user_params
      params.require(:car).permit(:marca, :modelo, :color, :hp)
    end

end
