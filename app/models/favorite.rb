# == Schema Information
#
# Table name: favorites
#
#  id               :integer          not null, primary key
#  amount_requested :string
#  user_id          :integer
#  item_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :item

end
