class Departamentotrabajador < ActiveRecord::Base
  belongs_to :departamento
  belongs_to :trabajador
end
