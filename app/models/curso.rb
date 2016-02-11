class Curso < ActiveRecord::Base
  belongs_to :trabajador
  belongs_to :aula

  default_value_for :cantidad_inscritos, 0
end
