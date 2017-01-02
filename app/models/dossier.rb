class Dossier < ApplicationRecord

  has_many :biens, dependent: :destroy
end
