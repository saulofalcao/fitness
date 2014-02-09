require 'spec_helper'

describe "Testar Reservas" do
	subject {page}
	before { visit '/reservas/new' }
	let(:submit) {"Buscar Quartos"}


	describe "Ver se tem elementos basicos" do
  		
  		it {should have_title('Nova Reserva')}
  
    	it {should have_content("Escolha uma data")}
    end

    describe "- Clicar botao Buscar Quartos sem informacao nenhuma" do
    	 	it "deve continuar na mesma página e mostrar uma mensagem" do
    		click_button "Buscar Quartos"
			should have_title("Nova Reserva")
		   	should have_content("Escolha uma data")
		   	should have_selector('div.alert.alert-error')
   			#expect { click_button submit}.not_to change(Reserva,:count)
    	end
    end

############## Data de Chegada ##################
    describe "Preencher data de chegada com texto" do
    	it "deve avisar que data está inválida" do
    		fill_in "Data de Chegada", with: "22/12/2013"
    		click_button "Buscar Quartos"
    		should have_title("Nova Reserva")
    	end

    end

    describe "Preencher a data de Chegada mas não a de saída" do
    	it "deve avisar que está faltando a data de saída" do
    		fill_in "Data de Chegada", with: "22/12/2015"
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")
    	end
    end

############## Data de saída ##########
    describe "Preencher a data de Saida mas não a de chegada" do
    	it "deve avisar que está faltando a data de chegada 
    							(mostrar um flash de erro)" do
    		fill_in "Data de Saída", with: "22/12/2015"
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")	
    	end
    end

    describe "Preencher a data de Saida com texto" do
    	it "deve exibir mensagem de erro e continuar na mesma página" do
    		fill_in "Data de Saída", with: "gfafqwad"
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")	
    		should have_title("Nova Reserva")
    	end
    end

    ########## Ambas as Datas ##########
    describe "Preencher as duas datas com texto" do
    	it "deve exibir mensagem de erro e continuar na mesma página" do
    		fill_in "Data de Chegada", with: "22/12/2015"
    		fill_in "Data de Saída", with: "25/12/2015"
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")	
    	end
    end

    describe "Preencher as datas de forma invertida (chegada maior que saída)" do
    	it "deve exibir mensagem de erro e continuar na mesma página" do
    		fill_in "Data de Chegada", with: "25/12/2015"
    		fill_in "Data de Saída", with: "22/12/2015"
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")	
    	end
    end

    describe "Preencher a data de chegada menor que a data de hoje" do
    	it "deve exibir mensagem de erro e continuar na mesma página" do
    		fill_in "Data de Chegada", with: 1.day.ago.strftime("%d/%m/%Y")
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")	
    	end
    end

    describe "Preencher a data de saída menor que a data de hoje" do
    	it "deve exibir mensagem de erro e continuar na mesma página" do
    		fill_in "Data de Saída", with: 1.day.ago.strftime("%d/%m/%Y")
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")	
    	end
    end

    describe "Preencher a data de saída menor que a data de chegada" do
    	it "deve exibir mensagem de erro e continuar na mesma página" do
    		fill_in "Data de Chegada", with: 2.days.from_now.strftime("%d/%m/%Y")
    		fill_in "Data de Saída", with: 1.day.from_now.strftime("%d/%m/%Y")
    		click_button "Buscar Quartos"
    		should have_selector("div.alert.alert-error")
    		should have_title("Nova Reserva")	
    	end
    end



end






    	

=begin
    	fill_in "Data de Chegada", with: "2014-12-25"
    	fill_in "Data de Saida", with: "2014-12-27"
    	click_button "Buscar Quartos"
=end



	

    

