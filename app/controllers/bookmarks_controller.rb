class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end


# In your BookmarksController, the set_list method is called only for the new and create actions because those actions require
# the @list variable to be set before performing certain operations.

# before_action :set_list, only: [:new, :create]:

# This line specifies that the set_list method should be called as a before_action before the new and create actions are executed.
# The before_action callback allows you to run a specific method before executing the specified controller actions.
# In this case, it ensures that the @list variable is set correctly for the new and create actions.
# def new:

# The new action is responsible for rendering the form to create a new bookmark.
# By calling set_list before the new action, you ensure that the appropriate @list is set, which is required to correctly render the form.

# def create:

# The create action handles the creation of a new bookmark.
# By calling set_list before the create action, you ensure that the corresponding @list is set and accessible within the action.
# This allows you to associate the newly created bookmark with the correct @list by assigning @bookmark.list = @list.
