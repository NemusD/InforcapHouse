# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Feature < ApplicationRecord
    #Validaciones
    validates :name, presence: true, uniqueness: true
end
