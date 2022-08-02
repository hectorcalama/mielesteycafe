class Usuario < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :ci_usuario, :dv_usuario, :nombre_usuario, :apellidos_usuario, :fechanac_usuario, :telefono_usuario, :email_usuario, :imagen_usuario, :domicilio_usuario, :region_usuario, :comuna_usuario, :tipo_usuario, :password, :password_confirmation, :vigencia_usuario, presence: true
  validates :email_usuario, presence: true, uniqueness: { case_sensitive: false}, format: { with: EMAIL_REGEX }

  before_save :email_lowercase

  def email_lowercase
    email.downcase!
  end
  end
