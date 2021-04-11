class Food < ApplicationRecord
  extend Mobility
  translates :name, backend: :column, fallbacks: { ie: :en }
end
