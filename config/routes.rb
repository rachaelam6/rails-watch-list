Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end



  # root to: "lists#index":

  # This line sets the root or homepage route of your application.
  # It maps the root URL ("/") to the index action of the ListsController.

  # resources :lists, except: [:edit, :update] do:

  # This line establishes the resourceful routes for the List model.
  # The resources method automatically generates routes for all the default CRUD actions
  # However, the except option is used to exclude the edit and update actions from being generated.

  # The do...end block is used to nest additional routes within the lists resource.

  # resources :bookmarks, only: [:new, :create]:

  # This line establishes resourceful routes for the Bookmark model nested within the List model.
  # It generates routes for the new and create actions of the BookmarksController, specifically for the context of a specific List.

  # resources :bookmarks, only: :destroy:

  # This line establishes resourceful routes for the Bookmark model.
  # It generates a route for the destroy action of the BookmarksController.

  # The resources method automatically generates routes based on the RESTful conventions, which map HTTP verbs and URLs to controller actions.
  # By defining these routes, you can handle requests to different URLs and perform the appropriate actions
  # in your controllers. The routes file serves as a central configuration for mapping incoming requests
  # to the corresponding controllers and actions in your Rails application.


  # The reason why resources :bookmarks, only: :destroy is placed outside the do...end block for lists is that it
  # represents a separate resource that is not directly related to the List model.

  # Here's the rationale behind the placement:

  # resources :lists, except: [:edit, :update] do ... end:

  # This block establishes a nested resource relationship between lists and bookmarks within the do...end block.
  # It indicates that bookmarks are associated with lists and should be nested under lists in the URL structure.
  # The nested routes, such as lists/:list_id/bookmarks, imply that bookmarks are scoped within the context of a specific list.

  # resources :bookmarks, only: :destroy:

  # This line is placed outside the do...end block to define routes for the Bookmark model that are not nested within a specific List.
  # It generates a route for the destroy action of the BookmarksController that operates independently of any particular List.
  # The URL for destroying a bookmark might be something like /bookmarks/:id, not /lists/:list_id/bookmarks/:id.
  # By separating the resources :bookmarks, only: :destroy line from the do...end block,
  # you allow for both nested and non-nested routes related to bookmarks.
  # This structure provides flexibility and allows you to handle bookmarks within the context of a list,
  # as well as bookmarks independently.
