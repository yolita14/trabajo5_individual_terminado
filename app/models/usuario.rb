class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :publicacions, through: :tableros
  accepts_nested_attributes_for :publicacions 
  enum rol: [:fotografo, :administrador]
  after_initialize do
    if self.new.record?
      self.rol ||= :fotografo
    end
  end
end
