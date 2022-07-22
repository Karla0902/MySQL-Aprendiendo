DESCRIBE city;
-- esto es un comentario
/*
ID	int
Name	char(35)
CountryCode	char(3)
District	char(20)
Population	int
*/
-- crud - > read (lee el contenido de la tabla / orden by orden el contenido )
SELECT ID,Name,CountryCode,District,Population FROM city ORDER BY ID DESC;
Call city_GetAll();
CALL city_GetById(4081);

-- esto es un select 

-- crud- >create (Crea un nuevo registo, debes de respetar el orden y condicionantes de la columna)
 INSERT INTO city (Name, CountryCode, District, Population)
 values ("Karla", "AFG", "Kabul", 100000); 
 Call City_Insert ("Jimy", "PSE" ,"kira", 50000);


 
 -- esto es un insert 
 
 -- crud- > UPDATE ( Atualizar un registro ya existente)
 UPDATE city SET Name = "Kira", 
				 CountryCode = "PSE",
                 District = "Atizapan",
                 Population = 111000
                 WHERE ID = 4080;
			
CALL city_Update (4081, "Jaime", "PSE","Tlalnepantla", 111000);


-- crud-> DELETE (elimina registro)
DELETE FROM city WHERE ID = 4075;







