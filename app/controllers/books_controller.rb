class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
  end

  def create
    @book = Book.create(params[:book])
    if @book.errors.empty?
      redirect_to book_path(@book)
    else
      render "new"
    end
  end

  def show
    unless @book = Book.where(id: params[:id]).first
      render text: "Page not found", status: 404
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
