class Profile < ApplicationRecord
  # has_one_attached :images
  has_many_attached :images

  # def self.search(search)
  #   if search
  #         Profile.where("name LIKE '%#{search}%'")
  #   else
  #         Profile.all
  #   end
  # end
  # scope :with_gender, ->(genders) { where('gender = ?', param)}
  # scope :with_gender, ->(genders) { where("name LIKE '%#{params}%'") }
  # def self.with_gender(search)
  #   if search
  #     Profile.where("gender LIKE '%#{search}%'")
  #   else
  #     Profile.all
  #   end
  # end
end
