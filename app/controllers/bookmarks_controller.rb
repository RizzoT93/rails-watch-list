class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmarks = Bookmark.new(bookmark_params)
    @bookmarks.save
    redirect_to bookmark_path
  end

  def destroy
    @bookmarks = Bookmark.find(params[:id])
    @bookmarks = Bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
