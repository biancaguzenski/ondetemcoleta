require 'rails_helper'

feature "User clicks search button" do
    scenario "sees all collection points listed" do
        visit home_path
        
        find_button('BUSCAR').click

        expect(page).to have_current_path(collection_points_path)
    end
end