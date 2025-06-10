-- Tabla de Dimension Tiempo
CREATE TABLE Dim_Tiempo (
    id_tiempo INT PRIMARY KEY,
    dia INT NOT NULL,
    mes INT NOT NULL,
    anio INT NOT NULL
);

-- Tabla de Dimension Proyecto
CREATE TABLE Dim_Proyecto (
    id_proyecto INT PRIMARY KEY,
    nombre_proyecto VARCHAR(100)
);

-- Tabla de Dimension Responsable
CREATE TABLE Dim_Responsable (
    id_responsable INT PRIMARY KEY,
    nombre_responsable VARCHAR(100)
);

-- Tabla de Dimension Localidad
CREATE TABLE Dim_Localidad (
    id_localidad INT PRIMARY KEY,
    nombre_localidad VARCHAR(100)
);

-- Tabla de Dimension Cliente
CREATE TABLE Dim_Cliente (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    telefono VARCHAR(20)
);

-- Tabla de Dimension Pais
CREATE TABLE Dim_Pais (
    id_pais INT PRIMARY KEY,
    nombre_pais VARCHAR(100)
);

-- Tabla de Dimension Empresa
CREATE TABLE Dim_Empresa (
    id_empresa INT PRIMARY KEY,
    nombre_empresa VARCHAR(100)
);

-- Tabla de Hechos: Paquetes de Trabajo
CREATE TABLE Hechos_PaqueteTrabajo (
    id_paquete_trabajo INT PRIMARY KEY,
    id_tiempo INT,
    id_proyecto INT,
    id_responsable INT,
    id_localidad INT,
    id_cliente INT,
    id_pais INT,
    id_empresa INT,
    costo DECIMAL(10, 2),
    cantidad_paquetes INT DEFAULT 1,

    FOREIGN KEY (id_tiempo) REFERENCES Dim_Tiempo(id_tiempo),
    FOREIGN KEY (id_proyecto) REFERENCES Dim_Proyecto(id_proyecto),
    FOREIGN KEY (id_responsable) REFERENCES Dim_Responsable(id_responsable),
    FOREIGN KEY (id_localidad) REFERENCES Dim_Localidad(id_localidad),
    FOREIGN KEY (id_cliente) REFERENCES Dim_Cliente(id_cliente),
    FOREIGN KEY (id_pais) REFERENCES Dim_Pais(id_pais),
    FOREIGN KEY (id_empresa) REFERENCES Dim_Empresa(id_empresa)
);
