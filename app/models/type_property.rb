class TypeProperty < ApplicationRecord
    #Validaciones
    validates :name, presence: true, uniqueness: true

end
