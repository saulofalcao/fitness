require 'spec_helper'

describe "StaticPages" do

  describe "Home Page - StaticPages#home" do
    it "deve conter no título 'Reservas'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
    	visit '/static_pages/home'
    	page.should have_title("Reservas")
    end

  end

  describe "Página Ajuda  - static_pages/ajuda" do
    it "deve ter o conteúdo Ajuda" do
      visit '/static_pages/ajuda'
      expect(page).to have_content('Ajuda')
    end

  end
end
