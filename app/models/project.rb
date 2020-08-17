class Project < ApplicationRecord
    validates_presence_of :name, :description, :begin, :end, :state
   
    enum state: [ "propuesta", "en progreso", "terminado" ]
    #  enum status: [ :active, :archived ]
    # 0: propuesta
    # 1: en progreso
    # 2: terminado
end
