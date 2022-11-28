programa
{
inclua biblioteca Util --> u
  cadeia convidados[100]
	
  inteiro opcoes  
	
  cadeia nome
	
  cadeia sl
	
  cadeia remova
	
  inteiro esp = 0
  
  inteiro numero_convidados = 0
	
  funcao inicio()
	{
	 faca {
	 	
		escreva("\nFESTA \n")
		escreva("1: Cadastro \n")
		escreva("2: Remover Cadastro \n")
		escreva("3: Sair \n")
		
		se(100-numero_convidados<100 ){
	 		escreva(esp)
	 	}
	 	se(100-numero_convidados<10){
	 		escreva(esp)
	 	}
		
		leia(opcoes)

			escolha(opcoes){
	
			caso 1: 
				limpa()
				escreva("Cadastrar\n")
				escreva("Qual o nome do convidado? ")
				leia(nome)
				para(inteiro i=0; i < 100; i++){
				se(convidados[i] == "")
				{
						convidados[i] = nome

						se(numero_convidados>i){
						numero_convidados=numero_convidados
						pare
						}
            numero_convidados=i+1
						pare
				}
					
				}
				
				

				pare
				
			caso 2:
				limpa()
				escreva("Remover\n")
				escreva("Nome do usuario que você deseja remover: ")
				leia(remova)
				para(inteiro j=0; j <= numero_convidados; j++){
					se(convidados[j] == remova)
					{
						convidados[j] = ""
					}
				}
				pare

			caso 3:
				escreva("Até um outro dia!")
				pare
				
			caso contrario: 
				escreva("Função não existente \n")
				u.aguarde(1000)
				limpa()
				pare
			}
		 
	 }enquanto(opcao != 3)
		
	   
	}
}