/* Microsoft SQL Server */
CREATE DATABASE abus_model
ON
PRIMARY
( NAME = N'abus_model',
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\abus_model.mdf' ,
    SIZE = 3072KB ,
    MAXSIZE = UNLIMITED ,
    FILEGROWTH = 1024KB ),
FILEGROUP SECONDARY
( NAME = N'abus_model_act',
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\abus_model_act.ndf' ,
    SIZE = 3072KB ,
    MAXSIZE = UNLIMITED ,
    FILEGROWTH = 1024KB )
LOG ON
( NAME = N'abus_model_log',
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\abus_model_log.ldf' ,
    SIZE = 1024KB ,
    MAXSIZE = 2048GB ,
    FILEGROWTH = 10%)
COLLATE SQL_Latin1_General_CP1_CI_AS
GO