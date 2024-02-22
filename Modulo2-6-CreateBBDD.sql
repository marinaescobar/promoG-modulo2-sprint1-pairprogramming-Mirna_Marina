CREATE TABLE Zapatillas (
id_zapatilla INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL
);

CREATE TABLE Clientes (
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45),
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL
);

CREATE TABLE Empleados (
id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE NOT NULL
);

CREATE TABLE Facturas (
id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
CONSTRAINT fk_id_zapatilla_tablazapatillas
	FOREIGN KEY (id_zapatilla) REFERENCES Zapatillas (id_zapatilla) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_id_empleado_tablaempleados
	FOREIGN KEY (id_empleado) REFERENCES Empleados (id_empleado) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fk_id_cliente_tablaclientes
	FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente) ON UPDATE CASCADE ON DELETE CASCADE
);


