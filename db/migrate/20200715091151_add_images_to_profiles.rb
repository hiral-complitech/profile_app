class AddImagesToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :images, :text
  end
end
