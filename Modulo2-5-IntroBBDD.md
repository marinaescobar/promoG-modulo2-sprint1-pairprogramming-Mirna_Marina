### Introducción a las Bases de Datos: Ejercicio Pair Programming

1. El objetivo de este ejercicio es hacer las modificaciones necesarias en la siguiente tabla para que cumpla las primeras tres formas normales:

|id_alumna|nombre          |direccion         |id_asignatura|asignatura      |nota|
|---------|----------------|------------------|-------------|----------------|----|
|1        |Cristina Marín  |Cuenca, España    |101          |Bases de datos  |8   |
|1        |Cristina Marín  |Cuenca, España    |102          |Extracción      |9   |
|1        |Cristina Marín  |Cuenca, España    |103          |Limpieza        |8   |
|2        |Marta López     |Toledo, España    |101          |Bases de datos  |7   |
|2        |Marta López     |Toledo, España    |103          |Limpieza        |9   |
|3        |Rocío Pérez     |Nantes, Francia   |101          |Bases de datos  |10  |
|3        |Rocío Pérez     |Nantes, Francia   |102          |Extracción      |7   |
|4        |Elena Rodríguez |Monterrey, México |101          |Bases de datos  |10  |
|4        |Elena Rodríguez |Monterrey, México |102          |Extracción      |9   |
|4        |Elena Rodríguez |Monterrey, México |103          |Limpieza        |7   |


- Dividimos la tabla en varias tablas que tengan una PK única y separamos los datos en más columnas para que sean atómicos:

    - Tabla de alumnas (la PK de esta tabla es id_alumna)

    |id_alumna|nombre          |apellidos         |ciudad       |pais   |
    |---------|----------------|------------------|-------------|-------|
    |1        |Cristina        |Marín             |Cuenca       |España |
    |2        |Marta           |López             |Toledo       |España |
    |3        |Rocío           |Pérez             |Nantes       |Francia|
    |4        |Elena           |Rodríguez         |Monterrey    |México |

    - Tabla de asignaturas (la PK de esta tabla es id_asignatura)

    |id_asignatura|asignatura       |
    |-------------|-----------------|
    |101          |Bases de datos   |
    |102          |Extracción       |
    |103          |Limpieza         |

    - Tabla de notas (en este caso, la PK sería un conjunto de FK: id_alumna e id_asignatura)

    |id_alumna|id_asignatura|nota|
    |---------|-------------|----|
    |1        |101          |8   |
    |1        |102          |9   |
    |1        |103          |8   |
    |2        |101          |7   |
    |2        |103          |9   |
    |3        |101          |10  |
    |3        |102          |7   |
    |4        |101          |10  |
    |4        |102          |9   |
    |4        |103          |7   |
