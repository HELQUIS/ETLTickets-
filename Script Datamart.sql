create table dimProveedor(
	ProveedorID SERIAL primary KEY,
	Proveedor VARCHAR(75),
	TipoProveedor VARCHAR(20)
);

create table dimEstado(
	EstadoID SERIAL primary KEY,
	Estado VARCHAR(20)
);

create table dimTipoAtencion(
	TipoAtencionID SERIAL primary KEY,
	TipoAtencion VARCHAR(20)
);


create table factAtenciones(
	TicketID VARCHAR(50),
	EstadoID INT,
	TipoAtencionID INT,
	FechaAtencion DATE,
	FechaCierre DATE,
	AgenciaID INT,
	ItemID INT,
	ProveedorID INT,
	constraint fk_estadoID foreign KEY(EstadoID) references dimEstado(EstadoID),
	constraint fk_tipoAtencionID foreign KEY(TipoAtencionID) references dimTipoAtencion(TipoAtencionID),
	constraint fk_proveedorID foreign KEY(ProveedorID) references dimProveedor(ProveedorID),
	constraint fk_agenciaID foreign KEY(AgenciaID) references dimAgencia(AgenciaID),
	constraint fk_itemID foreign KEY(ItemID) references dimItem(ItemID)
)

