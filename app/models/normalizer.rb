class Normalizer
    def normalize(string)
        string.parameterize(separator: "").upcase
    end
end