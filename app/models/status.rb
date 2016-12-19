class Status < ApplicationRecord

  belongs_to :user

  validates :contenido, presence: true
                        lenght: { minimum:2 }

  validates :user_id, presence: true 
end
