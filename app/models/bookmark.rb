class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum: 6}
  validates :movie_id, uniqueness: {scope: :list_id, message: "is already in the list"}
end


# The second validation in the Bookmark model is validating the uniqueness of the movie_id attribute within
# the scope of the list_id attribute.

# validates is a method provided by Rails for performing validations on model attributes.

# :movie_id is the attribute being validated.
# uniqueness is a validation option that ensures the value of movie_id is unique within a specific scope.

# {scope: :list_id, message: "is already in the list"} is a hash that defines the options for uniqueness validation.

# scope: :list_id specifies that the uniqueness should be scoped to the list_id attribute.
# In other words, each combination of movie_id and list_id must be unique.

# message: "is already in the list" sets the error message that will be displayed if the validation fails.
# It informs the user that the movie is already present in the list.
