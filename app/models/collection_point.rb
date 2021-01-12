class CollectionPoint < ApplicationRecord

    validates :name, :state, :city, :address, presence: true
    #validates :name, :state, :city, :address, format: { with: /\A[a-zA-Z]+\z/,
    #message: "Insira no formato válido" }
    validates :state, length: { maximum: 2, message: "Insira no formato válido" }
    #validates :phone, numericality: { only_integer: true }
    #validates :phone, length: { in: 8..11 }
    
    before_save :upcase_fields

    def upcase_fields
       self.name = self.name.parameterize(separator: ' ')
       self.name.upcase!

       self.state = self.state.parameterize(separator: ' ')
       self.state.upcase!

       self.city = self.city.parameterize(separator: ' ')
       self.city.upcase!

       self.address = self.address.parameterize(separator: ' ')
       self.address.upcase!
    end
end
