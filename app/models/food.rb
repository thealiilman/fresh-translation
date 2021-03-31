class Food < ApplicationRecord
  extend Mobility
  translates :name, backend: :column
end
