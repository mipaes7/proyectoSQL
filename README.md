# Proyecto de Creación de Base de Datos Relacional

Este repositorio contiene el diseño y la implementación de una base de datos relacional para la gestión de estudiantes, cursos, instructores, campus, promociones, proyectos, aptitudes y roles. El objetivo es organizar y gestionar de manera eficiente la información relacionada con una institución educativa.

## Descripción del Proyecto

El proyecto se enfoca en crear una base de datos relacional que permita:

- Registrar estudiantes y sus datos de contacto.
- Asignar estudiantes a proyectos y registrar sus aptitudes.
- Gestionar cursos, promociones y roles de los instructores.
- Organizar la información de los campus y asignar instructores a estos.

## Contenido del Repositorio

Este repositorio incluye las siguientes imágenes para ilustrar el diseño de la base de datos:

### Diagrama Entidad-Relación (ERD)

![Diagrama Entidad-Relación](/assets/ModeloEntidadRelacion.png)

### Diagrama Lógico

![Diagrama Lógico](/assets/ModeloLogico.png)

### Codigo SQL

(Descripción o enlace al código SQL utilizado para implementar la base de datos.)

## Descripción de las Tablas

### Estudiantes
- `estudiante_id`: Identificador único del estudiante.
- `nombre`: Nombre del estudiante.
- `email`: Correo electrónico del estudiante.
- `promocion_id`: Identificador de la promoción a la que pertenece el estudiante.
- `campus_id`: Identificador del campus del estudiante.

### Proyectos
- `id_proyecto`: Identificador único del proyecto.
- `nombre_proyecto`: Nombre del proyecto.

### Aptitudes
- `id_estudiante`: Identificador del estudiante.
- `id_proyecto`: Identificador del proyecto.
- `status`: Estado de la aptitud.
- `aptitud_id`: Identificador único de la aptitud.

### Campus
- `campus_id`: Identificador único del campus.
- `nombre_campus`: Nombre del campus.

### Cursos
- `id_curso`: Identificador único del curso.
- `nombre_curso`: Nombre del curso.

### Instructores
- `instructor_id`: Identificador único del instructor.
- `nombre`: Nombre del instructor.
- `modalidad`: Modalidad de enseñanza del instructor.
- `campus_id`: Identificador del campus al que pertenece el instructor.

### Promociones
- `promocion_id`: Identificador único de la promoción.
- `mes`: Mes de la promoción.
- `fecha_comienzo`: Fecha de comienzo de la promoción.
- `curso_id`: Identificador del curso asociado a la promoción.

### Roles
- `roles_id`: Identificador único del rol.
- `nombre_rol`: Nombre del rol.
- `instructor_id`: Identificador del instructor asociado al rol.
- `promocion_id`: Identificador de la promoción asociada al rol.
