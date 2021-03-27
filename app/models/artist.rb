# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  bio        :string
#  birthdate  :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artist < ApplicationRecord
  has_many(:paintings, { :class_name => "Painting", :foreign_key => "artist_id", :dependent => :destroy })
end
