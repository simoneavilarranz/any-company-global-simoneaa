# any-company-global-simoneaa

## Descripción

En este ejercicio se nos pedía crear una tabla en DBeaver a partir de un script proporcionado. A continuación, era necesario normalizar la tabla y generar un diagrama de Chen de la misma, y finalmente crear un script para encontrar el país de la venta con id 3

## Normalización de la tabla

<img src="/img1.jpg">

## Diagrama de Chen

**Diagrama original creado con diagrams.net**  

<img src="/students-classrooms-courses-chen.jpg">  

**Diagrama adaptado a readme empleando Mermaid**  

```mermaid
    CONTINENTS {
        int id_continent
        string continent_name
    }
    COUNTRIES {
        int id_country
        string country_name
        int continent_id
    }
    CITIES {
        int id_city
        string city_name
        int country_id
    }
    FOOD_CATEGORY {
        int id_category
        string category_name
    }
    FOOD_SUBCATEGORY {
        int id_subcategory
        string subcategory_name
        int category_id
    }
    SALES {
        int id_sales
        date date
        int unit_sales
        int subcategory_id
        int city_id
    }

    CONTINENTS ||--o{ COUNTRIES : "contains"
    COUNTRIES ||--o{ CITIES : "has"
    FOOD_CATEGORY ||--o{ FOOD_SUBCATEGORY : "includes"
    FOOD_SUBCATEGORY ||--o{ SALES : "recorded_in"
    CITIES ||--o{ SALES : "occurs_in"
```
