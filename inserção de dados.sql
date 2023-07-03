## Inserindo dados na tabela movies ##
use cinevault;

select * from movies;

## populando a tabela com o comando insert into:

insert into movies (type, name, genre, streaming_platforms, total_ep, atual_ep, current_season, total_seasons, last_view) 
	values (0, 'The Big Bang Theory', 'Comedy','HBO MAX', 279, 8, 1, 12, current_timestamp());
    
insert into movies (type, name, genre, streaming_platforms, total_ep, atual_ep, current_season, total_seasons, last_view) 
	values (0, 'Todo Mundo Odeia o Chris', 'Comedy','HBO MAX', 88, 9, 1, 4, current_timestamp());
    

insert into movies (type, name, genre, streaming_platforms, last_view) 
	values (1, 'Atavar 2', 'Ficção científica/Action','Disney+', current_timestamp());

    insert into movies (type, name, genre, streaming_platforms, last_view) 
	values (1, 'Blade Runner 2049', 'Ficção científica','Netflix', current_timestamp());