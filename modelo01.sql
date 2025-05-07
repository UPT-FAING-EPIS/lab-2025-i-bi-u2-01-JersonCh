-- Dimensi�n: Grupo Centro de Costos
CREATE TABLE Dim_Grupo_Centro_Costos (
    id_grupo_centro_costos INT PRIMARY KEY,
    nombre_grupo_centro_costos VARCHAR(100) NOT NULL
);

-- Dimensi�n: Grupo
CREATE TABLE Dim_Grupo (
    id_grupo INT PRIMARY KEY,
    nombre_grupo VARCHAR(100) NOT NULL
);

-- Dimensi�n: Destino
CREATE TABLE Dim_Destino (
    id_destino INT PRIMARY KEY,
    nombre_destino VARCHAR(100) NOT NULL
);

-- Dimensi�n: Pa�s
CREATE TABLE Dim_Pais (
    id_pais INT PRIMARY KEY,
    nombre_pais VARCHAR(100) NOT NULL
);

-- Dimensi�n: Modo de Transporte
CREATE TABLE Dim_Modo_Transporte (
    id_modo_transporte INT PRIMARY KEY,
    nombre_modo_transporte VARCHAR(100) NOT NULL
);

-- Dimensi�n: Tiempo (Mes y A�o)
CREATE TABLE Dim_Tiempo (
    id_tiempo INT PRIMARY KEY,
    mes INT NOT NULL,
    a�o INT NOT NULL
);

-- Tabla de Hechos: Env�os
CREATE TABLE Hechos_Envios (
    id_envio INT PRIMARY KEY,
    id_grupo_centro_costos INT NOT NULL,
    id_grupo INT NOT NULL,
    id_destino INT NOT NULL,
    id_pais INT NOT NULL,
    id_modo_transporte INT NOT NULL,
    id_tiempo INT NOT NULL,
    costos DECIMAL(12, 2) NOT NULL,
    
    -- Claves for�neas
    FOREIGN KEY (id_grupo_centro_costos) REFERENCES Dim_Grupo_Centro_Costos(id_grupo_centro_costos),
    FOREIGN KEY (id_grupo) REFERENCES Dim_Grupo(id_grupo),
    FOREIGN KEY (id_destino) REFERENCES Dim_Destino(id_destino),
    FOREIGN KEY (id_pais) REFERENCES Dim_Pais(id_pais),
    FOREIGN KEY (id_modo_transporte) REFERENCES Dim_Modo_Transporte(id_modo_transporte),
    FOREIGN KEY (id_tiempo) REFERENCES Dim_Tiempo(id_tiempo)
);
