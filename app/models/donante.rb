class Donante < ActiveRecord::Base
#valida que el codigo de donante sea unico
validates :codigo, uniqueness: true

end
