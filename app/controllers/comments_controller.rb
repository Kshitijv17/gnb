class CommentsController < ApplicationController
    # before_action :set_user
    
    # def index
    #     @user = User.all
    # end

    def show
        @user = User.find(params[:id])
        @comment = Comment.new
    end
     
    def new
        @user = User.new
    end

    def create
        @user = User.find(params[:user_id])
        @comment = @user.comments.new(comment_params)
        if @comment.save
          redirect_to @user, notice: 'Comment was successfully created.'
        else
          redirect_to @user, alert: 'Comment could not be created.'
        end
      end

    def destroy
        @user = User.find(params[:user_id])
        @comment = @user.comments.find(params[:id])
        @comment.destroy
        redirect_to user_path(@user), notice: 'Comment was successfully deleted.'
      end
  
    private
    # def set_user
        # @user = User.find(params[:user_id])
    #   end

      def comment_params
        params.require(:comment).permit(:commenter, :aunty)
      end
  end
  