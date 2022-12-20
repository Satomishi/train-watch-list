class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(bookmark_params)
    raise
    list = List.find(params(:list_id))
    @bookmark.list = list
    if @bookmark.save
      redirect_to list_path(list)
    else
      render :new, error: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
