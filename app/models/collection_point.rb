class CollectionPoint < ApplicationRecord

    validates :name, :state, :city, :address, presence: true
    
    validates :name, format: { with: /\A[\p{L}\p{M}\-\s]+\z/, 
<<<<<<< HEAD
                                     message: "Nome: Apenas letras, espaços e traços." },
                    
                                     length: { minimum: 2, message: "Nome: Mínimo de dois caracteres." }
=======
                                     message: "Nome: Apenas letras, espaços e traços." }
>>>>>>> parent of b1acbaa... Changed validations for name and city size + tests.

    validates :city, format: { with: /\A[\p{L}\p{M}\-\s]+\z/, 
                                     message: "Cidade: Apenas letras, espaços e traços." }

    validates :address, format: { with: /\A[\p{L}\p{M}\-\s\,0-9]+\z/, 
                                        message: "Endereço: Apenas letras, espaços e vírgulas." }
                                        
    validates :phone, :allow_blank => true, 
                      length: { within: 3..15, message: "Telefone válido: Entre 3 e 15 caracteres." }, 
                      format: { with: /\A[\d\-()]+\z/, 
                                message: "Telefone: Apenas números." }
    
    before_save :normalize_fields

    def normalize_fields
       self.name = Normalizer.new.normalize(self.name)

       self.state = Normalizer.new.normalize(self.state)

       self.city = Normalizer.new.normalize(self.city)

       self.address = Normalizer.new.normalize(self.address)

       self.phone = Normalizer.new.normalize_phone(self.phone)
    end
end
