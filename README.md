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

![Diagrama Entidad-Relación](/assets/ModeloEntidadRelacion_white_bg.png)

### Diagrama Lógico

![Diagrama Lógico](/assets/ModeloLogico.png)

### Codigo SQL

CREATE TABLE "Estudiantes" (
  "Nombre" varchar,
  "email" varchar,
  "Promocion_id" int,
  "Campus_id" int,
  "Estudiante_id" int PRIMARY KEY
);

CREATE TABLE "Aptitudes" (
  "id_estudiante" int,
  "id_proyecto" int,
  "Status" varchar,
  "aptitud_id" int PRIMARY KEY
);

CREATE TABLE "Proyectos" (
  "id_proyecto" int PRIMARY KEY,
  "Nombre_proyecto" varchar
);

CREATE TABLE "Promociones" (
  "Mes" varchar,
  "Fecha_comienzo" varchar,
  "Curso_id" int,
  "Promocion_id" int PRIMARY KEY
);

CREATE TABLE "Cursos" (	
  "nombre_curso" varchar,
  "id_curso" int PRIMARY KEY
);

CREATE TABLE "Roles" (
  "Rol" varchar,
  "Instructor_id" int,
  "Promocion_id" int,
  "Roles_id" int PRIMARY KEY
);

CREATE TABLE "Instructores" (
  "Nombre" varchar,
  "Modalidad" varchar,
  "Instructor_id" int PRIMARY KEY,
  "Campus_id" int
);

CREATE TABLE "Campus" (
  "Campus" varchar,
  "Campus_id" int PRIMARY KEY
);

ALTER TABLE "Aptitudes" ADD FOREIGN KEY ("id_estudiante") REFERENCES "Estudiantes" ("Estudiante_id");

ALTER TABLE "Aptitudes" ADD FOREIGN KEY ("id_proyecto") REFERENCES "Proyectos" ("id_proyecto");

ALTER TABLE "Promociones" ADD FOREIGN KEY ("Curso_id") REFERENCES "Cursos" ("id_curso");

ALTER TABLE "Estudiantes" ADD FOREIGN KEY ("Promocion_id") REFERENCES "Promociones" ("Promocion_id");

ALTER TABLE "Roles" ADD FOREIGN KEY ("Promocion_id") REFERENCES "Promociones" ("Promocion_id");

ALTER TABLE "Estudiantes" ADD FOREIGN KEY ("Campus_id") REFERENCES "Campus" ("Campus_id");

ALTER TABLE "Instructores" ADD FOREIGN KEY ("Campus_id") REFERENCES "Campus" ("Campus_id");


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

## Queries de Pruebas

SELECT 
	i."Nombre",
	r."Rol",
	c.nombre_curso
FROM "Instructores" i
INNER JOIN "Roles" r ON r."Instructor_id" = i."Instructor_id"
INNER JOIN "Promociones" p ON p."Promocion_id" = r."Promocion_id"
INNER JOIN "Cursos" c ON c.id_curso = p."Curso_id"

SELECT *
FROM "Instructores"

INSERT INTO "Instructores" ("Nombre", "Modalidad", "Instructor_id", "Campus_id")
VALUES ('Guillermo', 'Presencial', 12, 1)

## Despliegue de la BBDD en Render

![Captura](/assets/Captura.PNG)
![Captura](/assets/Captura1.PNG)
![Captura](/assets/Captura2.PNG)
