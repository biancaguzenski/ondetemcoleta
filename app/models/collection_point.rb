class CollectionPoint < ApplicationRecord

    validates :name, :state, :city, :address, presence: true
    validates :name, format: { with: /\A[[a-zA-Z-\s]+[:word:]]+\z/, message: "Insira nome sem carctetes especiais" }
    validates :state, length: { maximum: 2, message: "Insira estado no formato sigla" }
    #validates :phone, numericality: { only_integer: true }
    #validates :phone, length: { in: 8..11 }
    
    before_save :upcase_fields

    def upcase_fields
       self.name = Normalizer.new.normalize(self.name)

       self.state = Normalizer.new.normalize(self.state)

       self.city = Normalizer.new.normalize(self.city)

       self.address = Normalizer.new.normalize(self.address)

       self.phone = Normalizer.new.normalize(self.phone)
    end
end
