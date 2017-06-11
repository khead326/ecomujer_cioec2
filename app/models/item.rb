# == Schema Information
#
# Table name: items
#
#  id               :integer          not null, primary key
#  product          :string
#  product_category :string
#  origin           :string
#  format           :string
#  price            :string
#  quantity         :string
#  image            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  category_id      :integer
#

class Item < ApplicationRecord
  validates :product, :category_id, :origin, :format, :price, presence: true
  has_many :favorites, :dependent => :destroy
  belongs_to :category

end
