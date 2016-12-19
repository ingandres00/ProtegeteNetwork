class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :statuses

  validates :nombre_usuario, presence: true

  validates :apellido_usuario, presence: true

  validates :apodo, presence: true,
                    uniqueness: true,
                    format: {
                      with: /[a-zA-Z0-9_-]+/,
                      message:'Debe estar formateado correctamente'
                    }

  def nombre_completo
    nombre_usuario + " " + apellido_usuario
  end

end
