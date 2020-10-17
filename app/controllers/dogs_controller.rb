class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @sizes = Size.all.with_order
    @breeds = Breed.all
  end

  def new
    @dog = Dog.new
    @sizes = Size.all.with_order
    @breeds = Breed.all
  end


  def create
    @dog = Dog.new(permitted_params)

    if @dog.save!
      flash[:success] = @dog
      redirect_to controller: :dogs, action: :index

    else
      flash[:error] = @dog.errors
      redirect_to controller: :dogs, action: :new
    end
  end

  def show
  end

  def edit
    @dog = Dog.find(params[:id])
    @sizes = Size.all.with_order
    @breeds = Breed.all
  end

  def update
    @dog = Dog.find(params[:id])

    if @dog.update!(permitted_params)
      flash[:success] = @dog
      redirect_to controller: :dogs, action: :index

    else
      flash[:error] = @dog.errors
      redirect_to controller: :dogs, action: :edit
    end

  end

  def destroy
  end

  private
  def permitted_params
    params.require(:dog).permit(:name, :date_of_birth, :size_id, :is_male, :is_fixed, :is_vaccinated, :description)
  end

end
