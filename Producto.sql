/*
   jueves, 12 de mayo de 202211:40:46
   User: 
   Server: DESKTOP-T9873S7\SQLEXPRESS
   Database: Kiosco-Ej1
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Producto
	(
	Id int NOT NULL,
	Nombre varchar(50) NULL,
	Categoría varchar(50) NULL,
	FechaBaja datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Producto ADD CONSTRAINT
	PK_Producto PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Producto SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Producto', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Producto', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Producto', 'Object', 'CONTROL') as Contr_Per 