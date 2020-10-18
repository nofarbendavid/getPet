class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(permitted_params)

    if @person.save!
      flash[:success] = @person
      redirect_to controller: :people, action: :index

    else
      flash[:error] = @person.errors
      redirect_to controller: :people, action: :new
    end

  end

  def show
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    @person.update!(permitted_params)
    if @person.save!
      flash[:success] = @person
      redirect_to controller: :people, action: :index

    else
      flash[:error] = @person.errors
      redirect_to controller: :people, action: :edit
    end

  end

  def destroy
  end

  def permitted_params
    params.require(:person).permit(:first_name, :last_name, :phone_number, :email, :address, :is_banned, :date_of_birth)
  end

end
