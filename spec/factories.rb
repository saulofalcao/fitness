FactoryGirl.define do 
	factory :quarto do
		id 	1
		id 	2
		id 	3
	end
end
#let(:quarto).create
#q=Reserva.available("2013-11-01","2013-11-02")
#if q.empty?
#	print("error - quarto vazio\n")
#end

#q_available=q.first.id

FactoryGirl.define do 
	factory :reserva do
	start_date	"2013-11-01"
	end_date	"2013-11-02"
#	quarto_id	q_available
	end
end