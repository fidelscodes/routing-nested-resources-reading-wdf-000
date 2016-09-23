class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

#   def posts_index
#     @author = Author.find(params[:id])
#     @posts = @author.posts
#     render template: 'posts/index'
#   end

#   def post
#     @auhtor = Author.find(params[:id])
#     # Note that because ids are unique by table, we can go direclty to Post.find
#     # No need for @author.posts.find...
#     @post = Post.find(params[:id])
#     # This works just as well without the key of template:
#     render 'posts/show'

    # rendering posts this way isn't really the responsibility of the authors_controller, though...
  end
end
