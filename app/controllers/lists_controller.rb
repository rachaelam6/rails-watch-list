class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end


# def show
#   @bookmark = Bookmark.new
# end

# This code is responsible for handling the show action when a user requests to view a specific list.

# Inside the show method, a new instance of the Bookmark model is created and assigned to the instance variable @bookmark.
# By initializing a new Bookmark object, you're likely preparing to use it in the view associated with the show action.
# It's common to use this approach to enable users to add new bookmarks related to the displayed list.
# By creating a new Bookmark instance in this action, you can then pass it to the view,
# allowing you to generate a form or provide a way for users to interact with bookmarks specific to the displayed list.
# Essentially, this code is preparing an instance of the Bookmark model in the show action,
# likely to enable the creation of new bookmarks associated with the current list being displayed.


# In your lists_controller.rb, the list_params method is defined to permit and extract specific parameters from the params hash.
# This method is typically used to ensure that only the allowed parameters are passed when creating or updating a list.

# def create
#   @list = List.new(list_params)
#   if @list.save
#     redirect_to list_path(@list)
#   else
#     render :new, status: :unprocessable_entity
#   end
# end

# In the create method, a new instance of the List model is created. The list_params method is then invoked to extract the permitted parameters
# and assign them to the newly created @list object.

# def list_params
#   params.require(:list).permit(:name, :photo)
# end

# The list_params method is a private method that permits and extracts the parameters necessary
# for creating or updating a list.

# params.require(:list) specifies that the params hash must contain a key called :list.
# This ensures that the parameters passed for creating or updating a list must be nested under the :list key.

# .permit(:name, :photo) allows the :name and :photo attributes to be accessed from the permitted parameters.
# Only these attributes will be allowed, and any other parameters will be ignored for security reasons.
# This prevents unwanted or malicious parameters from being processed.

# By using the list_params method, you enforce strong parameters and ensure that only the permitted attributes are used for creating or updating a list,
# which helps protect your application from potential security risks.
