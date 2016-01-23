class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update]

  def index
    @book = Book.all
  end

  def show

  end

  def edit

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end

  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:booktitle, :bookdescription)
  end

end
