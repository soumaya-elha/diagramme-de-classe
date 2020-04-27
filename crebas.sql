/*==============================================================*/
/* Nom de SGBD :  Microsoft SQL Server 2008                     */
/* Date de création :  23/04/2020 17:52:47                      */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('Commande')
            and   type = 'U')
   drop table Commande
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Demmande')
            and   type = 'U')
   drop table Demmande
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Fournisseur')
            and   type = 'U')
   drop table Fournisseur
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gerant')
            and   type = 'U')
   drop table Gerant
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Medicament')
            and   type = 'U')
   drop table Medicament
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Patient')
            and   type = 'U')
   drop table Patient
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Stock')
            and   type = 'U')
   drop table Stock
go

/*==============================================================*/
/* Table : Commande                                             */
/*==============================================================*/
create table Commande (
   Nom                  varchar(254)         null,
   Id                   int                  null,
   Date                 Date                 null
)
go

/*==============================================================*/
/* Table : Demmande                                             */
/*==============================================================*/
create table Demmande (
   Qnt                  int                  null,
   Id                   int                  null,
   Prix                 int                  null
)
go

/*==============================================================*/
/* Table : Fournisseur                                          */
/*==============================================================*/
create table Fournisseur (
   Ville                varchar(254)         null,
   Adresse              int                  null
)
go

/*==============================================================*/
/* Table : Gerant                                               */
/*==============================================================*/
create table Gerant (
   Email                varchar(254)         null,
   MotDePasse           varchar(254)         null
)
go

/*==============================================================*/
/* Table : Medicament                                           */
/*==============================================================*/
create table Medicament (
   Nom                  varchar(254)         null,
   Id                   int                  null
)
go

/*==============================================================*/
/* Table : Patient                                              */
/*==============================================================*/
create table Patient (
   Nom                  varchar(254)         null,
   Age                  int                  null
)
go

/*==============================================================*/
/* Table : Stock                                                */
/*==============================================================*/
create table Stock (
   Id                   int                  null,
   Qentiti              int                  null,
   Adresse              varchar(254)         null
)
go

