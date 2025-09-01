📊 Proyecto TECNO_PRJ

Este proyecto contiene el modelo de base de datos relacional para un sistema de facturación, diseñado en DBDesigner y exportado a MySQL.

 🗂️ Tablas principales
- CLIENTES: guarda la información de los clientes.  
- FACTURAS: cabecera de las facturas emitidas.  
- DETALLE: ítems de cada factura (productos y cantidades).  
- ARTICULOS: catálogo de artículos disponibles.  

 🔗 Relaciones
- Un cliente puede tener muchas facturas.  
- Una factura puede tener muchos detalles.  
- Un artículo puede estar en muchos detalles de facturas.  

📐 Diagrama
![Diagrama ER](assets/diagrama.png)

## ▶️ Cómo usar el script
1. Crear una base de datos en MySQL:
   ```sql
   CREATE DATABASE TECNO_PRJ;
   USE TECNO_PRJ;
