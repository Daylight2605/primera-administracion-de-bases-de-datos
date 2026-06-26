# primera-administracion-de-bases-de-datos
# primera-administracion-de-base-de-datos
## 📋 Descripción de la base de datos

Base de datos relacional completa para la administración de una biblioteca. Permite gestionar autores, libros, socios (miembros), préstamos y géneros literarios de forma eficiente y normalizada.

### 🎯 Objetivos
- Gestionar el catálogo de libros de manera organizada.
- Controlar los préstamos y devoluciones de ejemplares.
- Mantener información actualizada de socios y autores.
- Facilitar consultas y reportes útiles para la administración

- ## 🗄️ Estructura de la Base de Datos

### Tablas Principales

| Tabla              | Descripción                                      | Registros de Ejemplo |
|--------------------|--------------------------------------------------|----------------------|
| `Autores`          | Información de los autores de los libros         | 25                   |
| `Editoriales`      | Datos de las editoriales                         | 25                   |
| `Generos`          | Clasificación por géneros literarios             | 25                   |
| `Libros`           | Catálogo principal de libros                     | 25                   |
| `Libros_Generos`   | Relación muchos a muchos entre libros y géneros  | -                    |
| `Socios`           | Registro de miembros de la biblioteca            | 25                   |
| `Prestamos`        | Control de préstamos y devoluciones              | 25                   |

### Modelo Relacional

- **Autores** → **Libros** (1:N)
- **Editoriales** → **Libros** (1:N)
- **Libros** ↔ **Generos** (N:M) a través de `Libros_Generos`
- **Socios** → **Prestamos** (1:N)
- **Libros** → **Prestamos** (1:N)

## ✨ Características Principales

- **Control de stock**: Cantidad de libros disponibles
- **Estados de préstamo**: Activo, Devuelto, Atrasado, Perdido
- **Restricciones de integridad** con claves foráneas
- **Vistas** predefinidas para reportes comunes:
  - `Vista_Libros` → Libros con autor, editorial y géneros
  - `Vista_Prestamos_Activos` → Préstamos en curso

## 🛠️ Herramientas Utilizadas

- **MySQL** / MariaDB
- **phpMyAdmin** (para administración)
- SQL estándar
