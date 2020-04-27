    ***Create database***
CREATE SCHEMA `pharmacie` ;


    ***Create table commande***
CREATE  TABLE `pharmacie`.`commande` (
  `Nom` VARCHAR(254) NOT NULL ,
  `Id` INT NOT NULL ,
  `Date` DATETIME NOT NULL ,
  PRIMARY KEY (`Id`) );

    *** SELECT table***
SELECT * FROM commande


   ***     attribuer 
INSERT INTO `pharmacie`.`commande` (`Nom`, `Id`, `Date`)
 VALUES ('XXX', '2', '2020-04-04 00:00:00');

INSERT INTO `pharmacie`.`commande` (`Nom`, `Id`, `Date`) 
VALUES ('YYY', '3', '2020-05-10 00:00:00 ');

INSERT INTO `pharmacie`.`commande` (`Nom`, `Id`, `Date`)
VALUES ('ZZZ', '4', '2020-06-11 00:00:00');

  ***UPDATE***
update commande set Nom='hhh'
where Id=3;

  ***Delet***
delet table
drop table Commande``

delet colum
DELETE FROM Commande
WHERE id = 2


	_______________________________________________________

	***Create table demmande***
CREATE  TABLE `pharmacie`.`demmande` (
  `Qnt` INT NOT NULL ,
  `Id` INT NOT NULL ,
  `Prix` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Id`) );

	*** SELECT table***
SELECT * FROM demmande

	***     attribuer 
INSERT INTO `pharmacie`.`demmande` (`Qnt`, `Id`, `Prix`) 
VALUES ('100', '44', '1000dh');

INSERT INTO `pharmacie`.`demmande` (`Qnt`, `Id`, `Prix`)
 VALUES ('50', '33', '1500dh');

	 ***UPDATE***

UPDATE `pharmacie`.`demmande` SET `Prix`='1300dh' 
WHERE `Id`='33';

	
  ***Delet***
delet table
drop table `demmande`

delet colum
DELETE FROM demmande
WHERE Id = 33


	  _______________________________________________________

	***Create table Fournisseur***
CREATE  TABLE `pharmacie`.`Fournisseur` (
  `Ville` VARCHAR(254) NOT NULL ,
  `Adresse` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Ville`) );

	*** SELECT table***
SELECT * FROM fournisseur

	***     attribuer
INSERT INTO `pharmacie`.`fournisseur` (`Ville`, `Adresse`)
 VALUES ('safi', 'safi2 bloc1');
INSERT INTO `pharmacie`.`fournisseur` (`Ville`, `Adresse`)
 VALUES ('casa', 'centre ville 05');

	
	 ***UPDATE***
UPDATE `pharmacie`.`fournisseur` SET `Adresse`='salam bloc03' 
WHERE `Ville`='safi';

	 ***Delet table***

drop table `fournisseur`

	  ______________________________________________________

	***Create table Gerant***
CREATE  TABLE `pharmacie`.`Gerant` (
  ` Email` VARCHAR(254) NOT NULL ,
  `MotDePasse` VARCHAR(254) NOT NULL );

	*** SELECT table***
SELECT * FROM Gerant

	***Delet table***

drop table `Gerant`

	 ______________________________________________________

	***Create table Medicament***
CREATE  TABLE `pharmacie`.`Medicament` (
  ` Nom` VARCHAR(254) NOT NULL ,
  `Id` INT NOT NULL ,
  PRIMARY KEY (`Id`) );

	
	*** SELECT table***
SELECT * FROM Medicament

	***     attribuer
INSERT INTO `pharmacie`.`Medicament` (` Nom`, `Id`) 
VALUES ('AAA', '66');
INSERT INTO `pharmacie`.`Medicament` (` Nom`, `Id`) 
VALUES ('BBB', '12');

	 ***UPDATE***
UPDATE `pharmacie`.`Medicament` SET `Id`='55' 
WHERE `Id`='12';

	delet colum
DELETE FROM Medicament
WHERE Id = 66

	______________________________________________________

	***Create table Patient***
CREATE  TABLE `pharmacie`.`Patient` (
  ` Nom` VARCHAR(254) NOT NULL ,
  `Age` INT NOT NULL );

	*** SELECT table***
SELECT * FROM Patient

	***     attribuer
INSERT INTO `pharmacie`.`patient` (` Nom`, `Age`) 
VALUES ('sara', '66');
INSERT INTO `pharmacie`.`patient` (` Nom`, `Age`) 
VALUES ('zainab', '58');

	
	______________________________________________________
	
	***Create table Stock***
CREATE  TABLE `pharmacie`.`Stock` (
  `Id` INT NOT NULL ,
  `Qentiti` INT NULL ,
  `Adresse` VARCHAR(254) NOT NULL ,
  PRIMARY KEY (`Id`) );

