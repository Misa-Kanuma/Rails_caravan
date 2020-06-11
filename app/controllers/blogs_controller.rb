class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def index
    # 記事を全件取得
    @blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  end

  def create
  end

  def edit
  end

def cr4eate
  	log = Blog.new(blog_paragrams)
  	blog.save
  	redirect_to blogs_path
  end

  private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
end
end