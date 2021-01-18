class Normalizer
    def normalize(string)
        string.to_s.parameterize(separator: " ").tr('^A-Za-z', '').upcase
    end

    def normalize_phone(phone)
        phone.tr('^0-9', '')  
    end
end