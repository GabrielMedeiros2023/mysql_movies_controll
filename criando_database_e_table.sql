## criando o database:
create database CineVault;
use CineVault;

## criando a entidade(tabela), seus atributos e tipos:

create table movies (
	id int auto_increment primary key,   ##identificador unico do filme ou série
    type tinyint,      ## tipo: serie = 0, filme = 1
    name varchar(50) not null, 
    genre varchar(30),    #gênero
    streaming_platforms varchar(100),    #plataformas de streaming disponíveis
    total_ep int,         #total de episódios 
    atual_ep int,         #episódio atual
    current_season int,  #temporada atual
    total_seasons int, #total de temporadas
    last_view datetime default current_timestamp         #data do ultimo episídeo assistido
    )
    