class LikesController < ApplicationController
  before_action :authenticate_user!
  
    def create
      @likes = current_user.likes.build(like_params)
      @post = @like.post
      if @like.save
<<<<<<< Updated upstream
=======
        # redirect_to like_path
>>>>>>> Stashed changes
        respond_to :js
      end
    end
  
    def destroy
      @likes = Like.find_by(id: params[:id])
      @post = @like.post
      if @like.destroy
        respond_to :js
      end
    end

    private
      def like_params
        params.permit(:post_id)
      end
  end
  
end
