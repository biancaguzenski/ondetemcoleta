require 'rails_helper'

feature "User clicks insert item button" do
    scenario "sees form for new collection point" do
        visit root_path

        click_on "INSERIR NOVO PONTO DE COLETA"

        expect(page).to have_current_path(new_collection_point_path)
    end
end