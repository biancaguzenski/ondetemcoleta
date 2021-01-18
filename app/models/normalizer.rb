class Normalizer
    def normalize(string)
        string.to_s.parameterize(separator: " ").upcase
    end

    def normalize_phone(phone)
        phone.tr('^0-9', '')  
    end
end