class Post < ApplicationRecord
  extend Mobility
  translates :title, :description, backend: :table
end
