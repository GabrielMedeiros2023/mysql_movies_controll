
############ PROCEDURE PARA CONSULTAR USUARIOS QUE ASSISTIRAM FILMES/SERIES ########################

delimiter //

create procedure consulta_assistidos (
in p_NameUser varchar(50), -- parâmetro de entrada(de quem o procedimento deve buscar)
out p_totalwatched int, -- saída(retorno com o total assistido)
out p_lastwatched varchar(100), -- saída(retorna o nome do ultimo titulo assistido)
out p_nameUsr varchar(50), -- saída(retorna o nome do usuario)
out p_messege varchar(50)
)

begin -- inicio do bloco

 -- condicional para se o usuario não existe na tabela.
 
	declare usrExists int default 0;
    select count(*) into usrExists
    from movies_watched
    where user = p_NameUser;
    
if (usrExists = 0) THEN
set p_messege = 'Usuario não existe!';

else
 ## Consulta o nome do usuário
	select p_NameUser into p_nameUsr; -- insere o dado da variável nameuser na variável nameusr, para que seja mostrado o nome do usuario no resultado da consulta. 
    
 ## Consulta o total de filmes/series assistidos pelo usuario
 	select count(*) into p_totalwatched -- o comando count faz a contagem de quantos titulos foi assistido pelo usuario que foi filtado na clausula where.
    from movies_watched 
    where user =  p_NameUser;

## Consulta o ultimo titulo assistido pelo usuario    
	select titulo into p_lastwatched -- joga o titulo(filme/serie) dentro da variavel "p_lastwatched"(UltimoAssistido)
    from movies_watched 
    where user = p_NameUser
    order by watched_date DESC -- ordenando pela data que foi assistido.
	limit 1;
    
      set p_messege = 'Consulta bem-sucedida!';

   end if;
    	
 end;
 
delimiter ;



-- Chamando a procedure com os devidos parâmetros de entrada e saída

call consulta_assistidos('juriri', @p_totalwatched, @p_lastwatched, @p_nameUsr, @p_messege );
call consulta_assistidos('Gabriel', @p_totalwatched, @p_lastwatched, @p_nameUsr, @p_messege );

-- Por fim consultando o resultado da chamada.
select @p_nameUsr as Usuario, @p_totalwatched as Total_Assistidos, @p_lastwatched as Ultimo_assistido, @p_messege as Mensagem



