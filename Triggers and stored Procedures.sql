


create trigger tg_Historico 

-- NOTA: ESTE ES EL TRIGGER DEL PUNTO 4 DE LOS DETALLES DEL ENTREGABLE
-- Cada vez que se inserta un nuevo cliente que sea extranjero, se ejecuta este trigger
-- EL 65 es el id de Republica dominicana en la tabla pais

on Cliente
for insert 
as
begin 
	declare @id int
	declare @nacionalidad int

	select @id= ID, @nacionalidad= nacionalidad from inserted

	if @nacionalidad <> 65
		begin
			INSERT INTO Clientes_hist values (@id)
	end
end
go


create trigger tg_envios

-- Este trigger facilita el trabajo al momento de realizar los envios. Cada vez que se agrega un registro a la tabla detalle_factura que representa un envio, se inserta en la tabla envio un nuevo registro con la factura en la que se solicito el envio y el status por defecto del envio. Luego se realiza tambien un insert dentro de la tabla  rastreo para registrar todos los envios con su ubicacion inicial desde la cual se solicito el envio. La tabla rastreo servir� para rastrear la ubicaci�n de cada envio.
on detalle_factura
for insert as
begin

  declare @idservicio int
  declare @id_factura int
  declare @id_tarifa int
  declare @origen int
  declare @detalle_servicio int
  declare @ultimoidEnvio int

  select   @idservicio= idservicio, @id_factura = id_factura, @id_tarifa = id_tarifa from inserted 

  select  @detalle_servicio = id_Detalle_servicio from tarifas where id = @id_tarifa

   select @origen = origen from detalles_servicios where id = @detalle_servicio

	if @idservicio = 3
	begin

		INSERT INTO envio VALUES ( @id_factura, 1)

		select top 1 @ultimoidEnvio = id from envio order by id desc

		INSERT INTO rastreo values (@ultimoIdEnvio, @origen)
		
	end
 end
 go

 create procedure Reporte_Envio_Anual(@year int)
-- El procedure muestra la cantidad de envios de cada cliente segun el a�o recibido. Solo muestra aquellos clientes que han hecho envios durante el a�o, de lo contrario no los muestra. Crea una tabla temporal llamada reportes directamente en el select y guarda los resultados ahi.
as
   begin
	begin tran
		begin try
			select c.ID as 'ID Cliente',  c.nombre, count(e.id ) AS 'Cantidad de envios'
			INTO #reportes 
			from envio e 
			left join factura f on e.id_factura = f.FacturaID
			right join cliente c on f.Cliente_ID = c.id  
			where YEAR(f.fecha) = @year
			group by c.id, c.nombre
	
			select * from #reportes
			commit
		end try
		begin catch
			rollback
		end catch
	end
go

exec Reporte_Envio_Anual 2021


create procedure Promedio_Envios_Cliente(@idcliente int)

-- Recibe un cliente y busca el promedio de envios que ha hecho ese cliente en todos los meses en los cuales el cliente haya hecho envios. La consulta divide la cantidad total de envios en un mes que ha hecho un  cliente entre la cantidad de a�os distintos, cantidad que se obtiene de una subconsulta. Para que el conteo se haga por mes, la consulta esta agrupada por los meses. En caso de que un cliente no haya hecho nunca algun envio en algun mes, este no aparecera en el resultado de la consulta.
as
begin

select datename(month, factura.fecha) as 'Mes',  
convert(decimal(13, 2), (count(envio.id) / (convert(decimal(13, 2), (select count(distinct(year(fecha))) from factura)))))
as 'Promedio de envios'
from envio
join factura on envio.id_factura = factura.FacturaID
join cliente on Factura.Cliente_ID = cliente.ID
where cliente.ID = @idcliente
group by datename(month, factura.fecha), month(factura.fecha)
order by month(factura.fecha), datename(month, factura.fecha)

end
go

exec Promedio_Envios_Cliente 2



create procedure Promedio_Envio_Cliente(@idcliente int,  @year int)

-- Esta es una segunda version del mandato, desde otro punto de vista. Recibe un cliente y un a�o. Realiza una consulta obteniendo la cantidad de envios dividid a entre 12 (la cantidad de meses) que el cliente ha realizado durante el a�o para representar el promedio de envios por mes que el cliente ha realizado durante ese a�o. La consulta trae valores decimales.
as
begin
select 
convert(decimal(13, 2),  count(envio.id) / 12.0) 
from envio
join factura on envio.id_factura = factura.FacturaID
join cliente on Factura.Cliente_ID = cliente.ID
where cliente.ID = @idcliente and year(factura.fecha) = @year
end
go

exec Promedio_Envio_Cliente 2, 2021



