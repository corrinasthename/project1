class UsersController < ApplicationController
  # The controller for users.  Makes an implicit call to render "views/users/method_name.html.erb" at the end of every method.

  def index
    @users = Dog.all # Get's all the Users in our database and assigns it the the instance variable @user.
  end

  def new
    @user = Dog.new #Creates an empty user object.
  end

  def show
    @user = Dog.find(params[:id]) # Query for the user with the id that is in params
  end

  def create
    @user = Dog.create(dog_params)
    if @user.save #If saving the user was successful
      redirect_to @user #Go to the show view of the user
    else
      render "new" #Go to the new view for the user
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age)
  end

end
