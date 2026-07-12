# any-company-global-simoneaa

## Descripción

En este ejercicio se nos pedía crear una tabla en DBeaver a partir de un script proporcionado. A continuación, era necesario normalizar la tabla y generar un diagrama de Chen de la misma, y finalmente crear un script para encontrar el país de la venta con id 3

## Normalización de la tabla

<img src="/img1.png">

## Diagrama de Chen

**Diagrama original creado con diagrams.net**  

<img src="/any-company-global-chen.jpg">  

**Diagrama adaptado a readme empleando Mermaid**  

```mermaid
    %%{init: {'theme': 'dark'}}%%
flowchart LR
    %% Entities
    CONTINENTS(["continents"])
    COUNTRIES(["countries"])
    CITIES(["cities"])
    FOOD_CATEGORY(["food_category"])
    FOOD_SUBCATEGORY(["food_subcategory"])
    SALES(["sales"])

    %% Attributes for CONTINENTS
    id_continent((id_continent))
    continent_name((continent_name))
    CONTINENTS <--> id_continent
    CONTINENTS <--> continent_name

    %% Attributes for COUNTRIES
    id_country((id_country))
    country_name((country_name))
    continent_id((continent_id))
    COUNTRIES <--> id_country
    COUNTRIES <--> country_name
    COUNTRIES <--> continent_id

    %% Attributes for CITIES
    id_city((id_city))
    city_name((city_name))
    country_id((country_id))
    CITIES <--> id_city
    CITIES <--> city_name
    CITIES <--> country_id

    %% Attributes for FOOD_CATEGORY
    id_category((id_category))
    category_name((category_name))
    FOOD_CATEGORY <--> id_category
    FOOD_CATEGORY <--> category_name

    %% Attributes for FOOD_SUBCATEGORY
    id_subcategory((id_subcategory))
    subcategory_name((subcategory_name))
    category_id((category_id))
    FOOD_SUBCATEGORY <--> id_subcategory
    FOOD_SUBCATEGORY <--> subcategory_name
    FOOD_SUBCATEGORY <--> category_id

    %% Attributes for SALES
    id_sales((id_sales))
    date((date))
    unit_sales((unit_sales))
    subcategory_id((subcategory_id))
    city_id_fk((city_id))
    SALES <--> id_sales
    SALES <--> date
    SALES <--> unit_sales
    SALES <--> subcategory_id
    SALES <--> city_id_fk

    %% Relationships
    CONTINENTS o--o REL1{"1:N"} o--o COUNTRIES
    COUNTRIES o--o REL2{"1:N"} o--o CITIES
    FOOD_CATEGORY o--o REL3{"1:N"} o--o FOOD_SUBCATEGORY
    FOOD_SUBCATEGORY o--o REL4{"N:N"} o--o SALES
    CITIES o--o REL5{"N:N"} o--o SALES
```
