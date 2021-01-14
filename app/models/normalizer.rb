class Normalizer
    def normalize(string)
        string.to_s.parameterize(separator: " ").upcase
    end
end