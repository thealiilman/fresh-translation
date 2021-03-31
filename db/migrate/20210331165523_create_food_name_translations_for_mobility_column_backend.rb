class CreateFoodNameTranslationsForMobilityColumnBackend < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :name_de, :string
    add_column :foods, :name_en, :string
    add_column :foods, :name_ie, :string
  end
end
