module ApplicationHelper
	def manipular_funcionario?
		if user_signed_in? and current_user.funcionario != nil 
			current_user.funcionario.setores[0].manipular_funcionario 
		end
	end

	def manipular_cliente?
		if user_signed_in? and current_user.funcionario != nil 
			current_user.funcionario.setores[0].manipular_cliente 
		end
	end

	def manipular_produto?
		if user_signed_in? and current_user.funcionario != nil
			current_user.funcionario.setores[0].manipular_produto 
		end
	end

	def produtos_carrinho
		return 0 unless session[:cart].present?
		session[:cart].values.sum.to_s
	end
end
