class Estudiante < ActiveRecord::Base
  belongs_to :departamento
  belongs_to :user
end
