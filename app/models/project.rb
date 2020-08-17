class Project < ApplicationRecord
    #  enum status: [ :active, :archived ]
    # 0: propuesta
    # 1: en progreso
    # 2: terminado

    enum state: [ "propuesta", "en progreso", "terminado" ]
end
