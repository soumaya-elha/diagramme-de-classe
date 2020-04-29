/* base de donnée*/
/*==============================================================*/
create database GPharmacy;
use GPharmacy; 


/*==============================================================*/
/* Table : Commande                                             */
/*==============================================================*/
create table Commande (
   Id                   int                  not null,
   Nom                  varchar(254)        null,
   Datee                 Date                 null,
   constraint PK_Commande primary key nonclustered (Id)
);


/*==============================================================*/
/* Table : Demmande                                             */
/*==============================================================*/
create table Demmande (
   IdDemmande                  int       not null,
   Qnt                  int                  null,
   Prix                 int                  null,
   constraint PK_Demmande primary key nonclustered (IdDemmande)
);

/*==============================================================*/
/* Table : Fournisseur                                          */
/*==============================================================*/
create table Fournisseur (
   idFournisseur  int not null,
   Ville                varchar(254)         null,
   Adresse              varchar(254)                  null,
   constraint PK_Fournisseure primary key nonclustered (idFournisseur)
);


/*==============================================================*/
/* Table : Gerant                                               */
/*==============================================================*/
create table Gerant (
   idGerant int not null,
   Email                varchar(254)         null,
   MotDePasse           varchar(254)         null,
   constraint PK_Gerant primary key nonclustered (idGerant)
);


/*==============================================================*/
/* Table : Medicament                                           */
/*==============================================================*/
create table Medicament (
   idMedicament                  int                  not null,
   Nom                  varchar(254)         null,
   constraint PK_Medicament primary key nonclustered (idMedicament)
   
);


/*==============================================================*/
/* Table : Patient                                              */
/*==============================================================*/
create table Patient (
   idPatient int not null,
   Nom                  varchar(254)         null,
   Age                  int                  null,
   constraint PK_Patient primary key nonclustered (idPatient)
);


/*==============================================================*/
/* Table : Stock                                                */
/*==============================================================*/
create table Stock (
   IdStock                   int                 not null,
   Qentiti              int                  null,
   Adresse              varchar(254)         null,
   constraint PK_Stock primary key nonclustered (IdStock)
);




	 
insert into Stock values (1,12,'87 Rue ouzani');
insert into Patient values(1,'Siham',30);
insert into Medicament values(1,'Doliprane');
insert into Gerant values (1,'Ahmed@gmail.com','Admin1234');
insert into Fournisseur values (1,'Safi','80 Rue zerktouni');
insert into Demmande values(1,12,230);
insert into Commande values(1,'Commande1',' 2020-04-29');



/*==============================================================*/
/* UPDATE commande                                              */
/*==============================================================*/
			
update Stock set Adresse='98 Rue Rabi'
where IdStock=1;


/*==============================================================*/
/* UPDATE demmande                                              */
/*==============================================================*/

UPDATE Patient SET Nom='Soumia' 
WHERE idPatient=1;


/*==============================================================*/
/* UPDATE fournisseur                                           */
/*==============================================================*/
		
UPDATE Medicament SET Nom='Gourtine' 
WHERE idMedicament=1;


/*==============================================================*/
/* UPDATE medicament                                            */
/*==============================================================*/
		 
UPDATE Gerant SET MotDePasse='8473JJ'
WHERE idGerant=1;


update Fournisseur set Ville='Rabat'
where idFournisseur=1;

update Demmande set Qnt=2
where IdDemmande=1;

update Commande set Nom='Commande5'
where Id=1;
/*==============================================================*/
/* Delet 						        */
/*==============================================================*/    								
 DELETE FROM Commande WHERE id = 1; 
 DELETE FROM demmande WHERE IdDemmande = 1;  			 
 DELETE FROM Medicament WHERE idMedicament = 1;		      				
 DELETE FROM demmande WHERE IdDemmande = 1;
 DELETE FROM Fournisseur where idFournisseur=1;
 Delete from Gerant where idGerant=1;
 delete from Patient where idPatient=1;
	

--Users--

CREATE USER 'Consultant'@'localhost' IDENTIFIED BY '123456';
GRANT  SELECT ON * . * TO 'Consultant'@'localhost';