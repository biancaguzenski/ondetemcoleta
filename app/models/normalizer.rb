class Normalizer
    def normalize(string)
        string.to_s.parameterize(separator: " ").upcase
    end

    def normalize_int(integer)
        if integer.include? "(" || ")"
            integer.delete "(" ")"
        end
    end
end