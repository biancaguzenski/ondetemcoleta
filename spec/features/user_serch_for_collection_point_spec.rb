require 'rails_helper'

feature "User clicks search button" do
    scenario "sees all collection points listed" do
        visit root_path
        fill_in("search", with: 'John')
        find_button('BUSCAR').click

        #expect(page).to have_current_path(collection_points_path)
    end
end