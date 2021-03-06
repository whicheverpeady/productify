# == Schema Information
#
# Table name: lists
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string
#  category_id :integer
#

class List < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :items, dependent: :destroy
  validates :title, presence: true, uniqueness: true
end
