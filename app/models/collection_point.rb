class CollectionPoint < ApplicationRecord

    validates :name, :state, :city, :address, presence: true
    validates :name, format: { with: /\A[\p{L}\p{M}\-]+\z/, message: "Nome: Apenas letras." }
    validates :phone, numericality: { only_integer: true, message: "Telefone: Apenas números." }, 
              :allow_blank => true, length: { in: 8..10, message: "Telefone: Insira telefone válido." }
    
    before_save :normalize_fields

    def normalize_fields
       self.name = Normalizer.new.normalize(self.name)

       self.state = Normalizer.new.normalize(self.state)

       self.city = Normalizer.new.normalize(self.city)

       self.address = Normalizer.new.normalize(self.address)

       #self.phone = Normalizer.new.normalize_phone(self.phone)
    end
end
