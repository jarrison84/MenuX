-- Crear la base de datos
CREATE DATABASE DB_MenuX;
GO

-- Usar la base de datos creada
USE DB_MenuX;
GO

-- Tabla para historial de migraciones (Entity Framework)
CREATE TABLE __EFMigrationsHistory (
    MigrationId NVARCHAR(150) NOT NULL PRIMARY KEY,
    ProductVersion NVARCHAR(32) NOT NULL
);
GO

-- Tabla de elementos TODO
CREATE TABLE TodoItems (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(MAX),
    IsComplete BIT
);
GO

-- Insertar migración inicial
INSERT INTO __EFMigrationsHistory (MigrationId, ProductVersion)
VALUES ('20250507044017_AddTableTodoItems', '9.0.4');
GO

-- Insertar un registro de ejemplo
INSERT INTO TodoItems (Name, IsComplete)
VALUES ('Menux', 0);
GO
