# Creación de Tablas en SQL Lite usando Python

Contenido basado en Coursera IBM por: Rav Ahuja

## Tarea 1. Crear una base de datos en SQL Lite


```python
# Importar la librería 
import sqlite3
```


```python
# Conexión a SQL Lite
# connection object
conn = sqlite3.connect('INSTRUCTOR.db')
```

La clase Cursor es una instancia mediante la cual se pueden invocar métodos que ejecutan sentencias SQLite y obtienen datos de los conjuntos de resultados de las consultas. Se puede crear un objeto Cursor mediante el método cursor() del objeto/clase Connection.


```python
# cursor object
cursor_obj = conn.cursor()
```

## Tarea 2. Crear una base de datos en SQL Lite

Antes de crear la tabla, revisaremos si existe. Usaremos **DROP**.


```python
# Drop the table if already exists.
cursor_obj.execute("DROP TABLE IF EXISTS INSTRUCTOR")
```




    <sqlite3.Cursor at 0x1477f74e540>



Ahora creamos la tabla:


```python
# Creating table
table = """ create table IF NOT EXISTS INSTRUCTOR(ID INTEGER PRIMARY KEY NOT NULL, FNAME VARCHAR(20), LNAME VARCHAR(20), CITY VARCHAR(20), CCODE CHAR(2));"""
 
cursor_obj.execute(table)
 
print("Table is Ready")
```

    Table is Ready
    

## Tarea 3. Llenar la tabla

Insertamos primero datos en la primera fila:


```python
cursor_obj.execute('''insert into INSTRUCTOR values (1, 'Rav', 'Ahuja', 'TORONTO', 'CA')''')
```




    <sqlite3.Cursor at 0x1477f74e540>




```python
cursor_obj.execute('''insert into INSTRUCTOR values (2, 'Raul', 'Chong', 'Markham', 'CA'), (3, 'Hima', 'Vasudevan', 'Chicago', 'US')''')
```




    <sqlite3.Cursor at 0x1477f74e540>



## Tarea 4. Consultar los datos

Veamos cómo se ve la tabla recién creada:


```python
statement = '''SELECT * FROM INSTRUCTOR'''
cursor_obj.execute(statement)

print("All the data")
output_all = cursor_obj.fetchall()
for row_all in output_all:
  print(row_all)
```

    All the data
    (1, 'Rav', 'Ahuja', 'TORONTO', 'CA')
    (2, 'Raul', 'Chong', 'Markham', 'CA')
    (3, 'Hima', 'Vasudevan', 'Chicago', 'US')
    

## Tarea 5. Consultar los datos con pandas


```python
import pandas as pd
#retrieve the query results into a pandas dataframe
df = pd.read_sql_query("select * from instructor;", conn)

#print the dataframe
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ID</th>
      <th>FNAME</th>
      <th>LNAME</th>
      <th>CITY</th>
      <th>CCODE</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>Rav</td>
      <td>Ahuja</td>
      <td>TORONTO</td>
      <td>CA</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>Raul</td>
      <td>Chong</td>
      <td>Markham</td>
      <td>CA</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>Hima</td>
      <td>Vasudevan</td>
      <td>Chicago</td>
      <td>US</td>
    </tr>
  </tbody>
</table>
</div>



## Tarea 6. Cerrar la conexión


```python
# Close the connection
conn.close()
```
