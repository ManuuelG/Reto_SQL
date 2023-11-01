SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS Spotify
CHARACTER SET utf8;

USE Spotify;

CREATE TABLE IF NOT EXISTS Usuarios (
  UserID INT AUTO_INCREMENT PRIMARY KEY,
  Pais VARCHAR(20) NOT NULL,
  Email VARCHAR(20) NOT NULL,
  PW VARCHAR(20) NOT NULL,
  Username VARCHAR (30) NOT NULL, 
  FechaNacimiento DATE NOT NULL,
  Sexo VARCHAR (10) NOT NULL,
  CP VARCHAR (10) NOT NULL,
  FOREIGN KEY (PlaylistID) REFERENCES Playlist (PlaylistID) 
);

CREATE TABLE IF NOT EXISTS Suscripcion (
SuscripcionID INT AUTO_INCREMENT PRIMARY KEY,
FechaInicio DATE NOT NULL,
FechaRenovacion DATE NOT NULL,
UserID INT UNSIGNED,
  FOREIGN KEY (UserID) REFERENCES Usuarios (UserID) 
);
CREATE TABLE IF NOT EXISTS Pago (
PaymentID INT AUTO_INCREMENT PRIMARY KEY,
SuscripcionID INT UNSIGNED,
Fecha DATE NOT NULL,
Cantidad DECIMAL (10,2) NOT NULL,
FormaPago VARCHAR (20),
  FOREIGN KEY (SuscripcionID) REFERENCES Suscripcion (SuscripcionID) 
);
CREATE TABLE IF NOT EXISTS TarjetaCredito (
TarjetaID INT PRIMARY KEY,
Codigo INT NOT NULL,
MesCaducidad DATE NOT NULL,
AñoCaducidad DATE NOT NULL,
UserID INT,
FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
);
CREATE TABLE IF NOT EXISTS Paypal (
Username VARCHAR (255) NOT NULL,
UserID INT,
FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
);

CREATE TABLE Playlist (
    PlaylistID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    NumeroCanciones INT NOT NULL,
    FechaCreacion DATE NOT NULL,
    Titulo VARCHAR (50) NOT NULL,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
);

CREATE TABLE Cancion (
    CancionID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    Duracion INT NOT NULL,
    Reproducciones INT NOT NULL,
    PlaylistID INT,
    AlbumID INT,
    UserID INT,
    FOREIGN KEY (PlaylistID) REFERENCES Playlist (PlaylistID),
    FOREIGN KEY (AlbumID) REFERENCES Album (AlbumID),
     FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
);

CREATE TABLE Album (
    AlbumID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    AñoPublicacion INT NOT NULL,
    Imagen VARCHAR(255) NOT NULL,
    ArtistID INT,
    CancionID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artista (ArtistID),
    FOREIGN KEY (CancionID) REFERENCES Cancion (CancionID)
);

CREATE TABLE Artista (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Imagen VARCHAR(255) NOT NULL,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Usuarios (UserID)
);


