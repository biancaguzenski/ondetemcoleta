class CollectionPoint < ApplicationRecord

    validates :name, :state, :city, :address, presence: true
    validates :name, format: { with: /\A[[a-zA-Z-\s]+[:word:]]+\z/, message: "Nome: Apenas letras" }
    
    before_save :normalize_fields

    def normalize_fields
       self.name = Normalizer.new.normalize(self.name)

       self.state = Normalizer.new.normalize(self.state)

       self.city = Normalizer.new.normalize(self.city)

       self.address = Normalizer.new.normalize(self.address)

       #self.phone = Normalizer.new.normalize_phone(self.phone)
    end
end
