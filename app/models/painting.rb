# == Schema Information
#
# Table name: paintings
#
#  id           :integer          not null, primary key
#  date_painted :date
#  image        :string
#  museum       :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  artist_id    :integer
#
class Painting < ApplicationRecord



end
