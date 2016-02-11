class Trabajador < ActiveRecord::Base
  belongs_to :user
  has_one :departamento
  has_many :cursos
end
