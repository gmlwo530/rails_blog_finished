class PostsController < ApplicationController
    def index
    end
    
    def new
        @post = Post.new    
    end
    
    def create
        #form_tag
        
        post = Post.new(title: params[:title], content: params[:content])
        post.save
        
        redirect_to posts_index_path
        #form_for
    end
end
