class ChangeGenderToBeStringInProfiles < ActiveRecord::Migration[5.2]
  def change
    change_column :profiles, :gender, :string
  end
end
