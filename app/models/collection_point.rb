class CollectionPoint < ApplicationRecord

    validates :name, :state, :city, :address, presence: true
    validates :name, format: { with: /\A[\p{L}\p{M}\-]+\z/, message: "Nome: Apenas letras, espaços e traços." }
    validates :phone, :allow_blank => true, length: { within: 3..15, message: "Telefone válido: Entre 3 e 15 caracteres." }
    
    before_save :normalize_fields

    def normalize_fields
       self.name = Normalizer.new.normalize(self.name)

       self.state = Normalizer.new.normalize(self.state)

       self.city = Normalizer.new.normalize(self.city)

       self.address = Normalizer.new.normalize(self.address)

       self.phone = Normalizer.new.normalize_phone(self.phone)
    end
end
