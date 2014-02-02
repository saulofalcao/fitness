module ApplicationHelper
	# Retorna o título completo para cada página
	def full_title(page_title)
		base_title = "Sistema de Reservas"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
end
