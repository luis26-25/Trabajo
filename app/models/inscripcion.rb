class Inscripcion < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :curso
end
