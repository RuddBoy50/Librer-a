show databases;
use Libreria;
show tables;

describe tbl_ope_Libro;
describe tbl_cat_editorial;
insert into tbl_cat_editorial values (null,"Grupo Planeta",1);
insert into tbl_cat_editorial values (null,"Albatros",1);
insert into tbl_cat_editorial values (null,"Salamandra",1);

describe tbl_cat_idioma;
insert into tbl_cat_idioma values (null,"Español",1);
insert into tbl_cat_idioma values (null,"Ingles",1);
insert into tbl_cat_idioma values (null,"Frances",1);

describe tbl_cat_genero;
insert into tbl_cat_genero values (null,"Terror",1);
insert into tbl_cat_genero values (null,"Ciencia-Ficcion",1);
insert into tbl_cat_genero values (null,"Romance",1);

select * from tbl_cat_genero;
select * from tbl_cat_idioma;
select * from tbl_cat_editorial;

CALL InsertarLibro('Don quijote',1,1,1,250, 100,1);

CALL MostrarLibrosActivos();

CALL ModificarLibro(1,'Don Quijote de la Mancha',1,2,2,125,45);

CALL VentaLibro(1, 10);

select * from tbl_hist_ventas;

CALL MostrarVentasHistoricas();
