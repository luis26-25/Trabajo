class Asistenciaalumno < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :horario
end
