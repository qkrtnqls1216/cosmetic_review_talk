use review;
--girl
CREATE TABLE skin (
	skinId INT PRIMARY KEY AUTO_INCREMENT,
    skinName VARCHAR(255) NOT NULL,
    skinMl VARCHAR(10),
    skinPrice VARCHAR(20),
    skinBrand VARCHAR(50)
);

CREATE TABLE base (
	baseId INT PRIMARY KEY AUTO_INCREMENT,
    baseName VARCHAR(255) NOT NULL,
    baseMl VARCHAR(10),
    basePrice VARCHAR(20),
    baseBrand VARCHAR(50)
);


CREATE TABLE lip (
	lipId INT PRIMARY KEY AUTO_INCREMENT,
    lipName VARCHAR(255) NOT NULL,
    lipMl VARCHAR(10),
    lipPrice VARCHAR(20),
    lipBrand VARCHAR(50)
);

CREATE TABLE eye (
	eyeId INT PRIMARY KEY AUTO_INCREMENT,
    eyeName VARCHAR(255) NOT NULL,
    eyeMl VARCHAR(10),
    eyePrice VARCHAR(20),
    eyeBrand VARCHAR(50)
);

DROP TABLE boyskin;
DROP TABLE boybase;
DROP TABLE boylip;
DROP TABLE boyeye;
--boy

CREATE TABLE boyskin (
	boyskinId INT PRIMARY KEY AUTO_INCREMENT,
    boyskinName VARCHAR(255) NOT NULL,
    boyskinMl VARCHAR(10),
    boyskinPrice VARCHAR(20),
    boyskinBrand VARCHAR(50)
);

CREATE TABLE boybase (
    boybaseId INT PRIMARY KEY AUTO_INCREMENT,
	boybaseName VARCHAR(255) NOT NULL,
    boybaseMl VARCHAR(10),
    boybasePrice VARCHAR(20),
    boybaseBrand VARCHAR(50)
);

CREATE TABLE boylip (
	boylipId INT PRIMARY KEY AUTO_INCREMENT,
    boylipName VARCHAR(255) NOT NULL,
    boylipMl VARCHAR(10),
    boylipPrice VARCHAR(20),
    boylipBrand VARCHAR(50)
);

CREATE TABLE boyeye (
	boyeyeId INT PRIMARY KEY AUTO_INCREMENT,
    boyeyeName VARCHAR(255) NOT NULL,
    boyeyeMl VARCHAR(10),
    boyeyePrice VARCHAR(20),
    boyeyeBrand VARCHAR(50)
);
