class UsersController < ApplicationController

    def index
        @user = User.all
    end

    
    def show
        @user = User.find(params[:id])
        @comment = Comment.new
    end

   
     
    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

def create
    @user = User.new(user_params
        # name: params[:name],
        # game: params[:game]
    )
    if  @user.save
         redirect_to root_path, notice: 'User was successfully created.'
      else
        render :new
      end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        redirect_to @user
    else
        render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy.
    redirect_to root_path
  end



  private
  def user_params
    params.require(:user).permit(:name, :game)
  end

end
