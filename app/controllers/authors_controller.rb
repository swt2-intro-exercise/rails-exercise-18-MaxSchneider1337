class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save

    else
      render 'new'
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end

  private

    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end

end
