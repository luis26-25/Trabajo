class Departamento < ActiveRecord::Base
  belongs_to :trabajador
  has_many :departamentotrabajadors
end	
