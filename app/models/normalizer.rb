class Normalizer
    def normalize(string)
        string.to_s.parameterize(separator: " ").upcase
    end

    def normalize_phone(phone)
        if phone.include? "(" || ")"
            phone.delete "(" ")"
        end
    end
end