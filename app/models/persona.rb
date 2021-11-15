class Persona < ApplicationRecord
    validates :name, presence: { :message => "No puede estar vacio"}
    validates :last_name, presence: { :message => "No puede estar vacio"}
    validates :email, presence: { :message => "No puede estar vacio"}
    validates :password, presence: { :message => "No puede estar vacio"}, length: {minimum: 8, :message => "Es demaciado corta, minimo 8 caracteres"}
    validates :date, presence: { :message => "No puede estar vacio"}
    has_many :appointment
    accepts_nested_attributes_for :appointment
end
