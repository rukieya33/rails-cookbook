class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    redirect_to bookmark_path(@bookmarks)
  end
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create

    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.create(bookmark_params)
    @bookmark.category = @category

    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

 def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :category_id, :recipe_id)
  end

end
