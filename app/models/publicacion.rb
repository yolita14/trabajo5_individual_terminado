class Publicacion < ApplicationRecord
    has_and_belongs_to_many :etiqueta 
    accepts_nested_attributes_for :etiqueta
    has_many :usuario, through: :tableros
    has_one_attached :foto

end
