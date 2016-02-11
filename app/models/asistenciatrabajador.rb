class Asistenciatrabajador < ActiveRecord::Base
  belongs_to :trabajador
  belongs_to :horario
end
