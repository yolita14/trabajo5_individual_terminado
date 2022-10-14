class Tablero < ApplicationRecord
  belongs_to :publicacion
  belongs_to :usuario
end
