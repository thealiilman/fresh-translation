class Post < ApplicationRecord
  extend Mobility
  translates :title, dirty: false, backend: :table
  translates :description, backend: :table
end
