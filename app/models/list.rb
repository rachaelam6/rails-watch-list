class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end


# has_many :bookmarks, dependent: :destroy:

#   This line establishes a one-to-many association between the List model and the Bookmark model.
#   It indicates that a list can have multiple bookmarks associated with it.
#   The dependent: :destroy option specifies that if a list is destroyed, all associated bookmarks should also be destroyed.

# has_many :movies, through: :bookmarks, dependent: :destroy:

#   This line establishes a many-to-many association between the List model and the Movie model.
#   It indicates that a list can have multiple movies associated with it through the Bookmark model.
#   The dependent: :destroy option specifies that if a list is destroyed,
#   all associated bookmarks (and indirectly, the associated movies) should also be destroyed.
