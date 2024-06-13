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
