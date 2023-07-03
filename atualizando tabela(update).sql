## Atualizando a tabela com o comando update ##
## É de suma importância que todo comando "update" ou "delete" seja filtrado com a condição "where", para evitar alterações indesejadas ou perda de dados!!

use cinevault;

update movies set atual_ep = 12 ## atualizando o ep atual para 11
where movies.id = 1; ## onde o id é igual a 1(da série em questão). Outra prática seria usar a coluna "name"

update movies set name = 'Avatar 2'
where movies.id = 5

