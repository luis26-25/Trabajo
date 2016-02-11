class Horario < ActiveRecord::Base
  belongs_to :turno
  belongs_to :curso
end
