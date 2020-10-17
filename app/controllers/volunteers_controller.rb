class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(permitted_params)

    if @volunteer.save!
      flash[:success] = @volunteer
      redirect_to controller: :volunteers, action: :index

    else
      flash[:error] = @volunteer.errors
      redirect_to controller: :volunteers, action: :new
    end
  end

  def show
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end

  def update
    @volunteer = Volunteer.find(params[:id])

    if @volunteer.update!(permitted_params)
      flash[:success] = @volunteer
      redirect_to controller: :volunteers, action: :index

    else
      flash[:error] = @volunteer.errors
      redirect_to controller: :volunteers, action: :edit
    end
  end

  def destroy
  end

  def permitted_params
    params.require(:volunteer).permit(:first_name, :last_name, :phone_number, :email, :address, :is_active, :date_of_birth)
  end
end
