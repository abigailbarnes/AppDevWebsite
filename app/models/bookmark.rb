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
end
