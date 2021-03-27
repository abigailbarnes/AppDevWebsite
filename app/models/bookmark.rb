# == Schema Information
#
# Table name: bookmarks
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  painting_id :integer
#  user_id     :integer
#
class Bookmark < ApplicationRecord

  belongs_to(:painting, { :required => false, :class_name => "Painting", :foreign_key => "painting_id" })

  belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id" })
end
