USE world;
DESCRIBE country;

-- crud- >read
	SELECT 
		Code,
		Name
		,Continent
		,Region
		,SurfaceArea
		,IndepYear
		,Population
		,LifeExpectancy
		,GNP
		,GNPOld
		,LocalName
		,GovernmentForm
		,HeadOfState
		,Capital
		,Code2
	FROM country ORDER BY Code DESC;
    

    -- crude-> create
INSERT INTO country (Code
		,Name
		,Continent
		,Region
		,SurfaceArea
		,IndepYear
		,Population
		,LifeExpectancy
		,GNP
		,LocalName
		,GovernmentForm
		,HeadOfState
		,Capital
		,Code2)
VALUES ("KCM"
		,"Kira"
		,"Europe"
		,"SouthernEurope"
		,101172.00
		,1994
		,10640000
		,75.5
		,3377.00
		,"Rossija" 
		,"FederalRepulic"
		,"VladimirPutin"
		,3580
		,"KC");
CALL country_GetAll();

UPDATE country SET region = "Eastern Europe"
                   ,SurfaceArea = 102173.08
                WHERE code= "KCM";

CALL countrylanguage_GetAll();
DESCRIBE countrylanguage;

UPDATE countrylanguage SET IsOfficial = "T"
                   ,percentage = 5.2
                WHERE countrycode = "ABW"
                AND language = "Dutch";
    
    
USE world;




