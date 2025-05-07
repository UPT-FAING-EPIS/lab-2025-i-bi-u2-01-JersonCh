-- Tabla de Hechos
CREATE TABLE HechoReserva (
    ID_Reserva INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Viaje INT,
    ID_Agencia INT,
    ID_Tiempo INT,
    Cantidad INT,
    FOREIGN KEY (ID_Cliente) REFERENCES DimCliente(ID_Cliente),
    FOREIGN KEY (ID_Viaje) REFERENCES DimViaje(ID_Viaje),
    FOREIGN KEY (ID_Agencia) REFERENCES DimAgencia(ID_Agencia),
    FOREIGN KEY (ID_Tiempo) REFERENCES DimTiempo(ID_Tiempo)
);

-- Dimensiones
CREATE TABLE DimCliente (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Direccion VARCHAR(200),
    Tipo_Cliente VARCHAR(50)
);

CREATE TABLE DimViaje (
    ID_Viaje INT PRIMARY KEY,
    Descripcion VARCHAR(100),
    ID_Destino INT,
    FOREIGN KEY (ID_Destino) REFERENCES DimDestino(ID_Destino)
);

CREATE TABLE DimDestino (
    ID_Destino INT PRIMARY KEY,
    Nombre_Destino VARCHAR(100),
    ID_Pais INT,
    FOREIGN KEY (ID_Pais) REFERENCES DimPais(ID_Pais)
);

CREATE TABLE DimPais (
    ID_Pais INT PRIMARY KEY,
    Nombre_Pais VARCHAR(100)
);

CREATE TABLE DimAgencia (
    ID_Agencia INT PRIMARY KEY,
    Nombre VARCHAR(100),
    ID_Operador INT,
    FOREIGN KEY (ID_Operador) REFERENCES DimOperador(ID_Operador)
);

CREATE TABLE DimOperador (
    ID_Operador INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE DimTiempo (
    ID_Tiempo INT PRIMARY KEY,
    Fecha DATE,
    Mes INT,
    Trimestre INT,
    Año INT
);
