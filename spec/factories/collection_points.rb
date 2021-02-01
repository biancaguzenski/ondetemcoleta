FactoryBot.define do
    factory :collection_points do
        name { FFaker::Lorem.word }
        city { FFaker::AddressBR.city }
        address { FFaker::AddressBR::full_address }
        state { FFaker::AddressBR::state_abbr }
    end
end