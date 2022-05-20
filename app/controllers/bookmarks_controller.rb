class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    @bookmark.save
    redirect_to list_path(@list)
  end

  def show
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.find(params[:list_id])
  end

  def index
    @bookmarks = Bookmark.all
  end
end
