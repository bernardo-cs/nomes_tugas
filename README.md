![Alt text](http://www.net-bebes.com/wp-content/uploads/2009/10/definirSexo.jpg)

# Nomes Tugas: Uma gem que te destingue gajos de gajas

> Bibilioteca tem dois ficheiros com nomes de meninos e meninas em portugês
> os nomes foram tirados deste site http://nomesportugueses.blogspot.pt/p/nomes-masculinos-z.html
> 
> Se quiserem adicionar (ou melhorar o que quer que seja) nomes façam pull request ;)


## Instalar

Está disponivel no rubygems.org:

    $ gem install aiss

## Utilização
#Vai retornar "male":
	NomesTugas.identify_gender "Bernardo" 
#Vai retornar "Female":
	NomesTugas.identify_gender "Madalena" 
#Vai retornar "not_sure":
	NomesTugas.identify_gender "badjoras" 

## Sobre
> Fiz esta gem para conseguir enviar mails mais pessoais e diferenciar "A madalena" de "O Rui"