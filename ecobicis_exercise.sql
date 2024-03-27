--Using "cicloestaciones" database--

--1. Let's first check the data, we observe NULL values--

SELECT *
FROM `my-project-coursera-413616.ecobicis.cicloestaciones`

--2. Clean NULL values, we use only "sistema" column because all rows were in blank--

SELECT *
FROM `my-project-coursera-413616.ecobicis.cicloestaciones`
WHERE sistema IS NOT NULL

--3. Save this clean table into another one in Big Query--

--4. Let's begin by answering some questions!--

--   a. How many stations are in every municipality (alcaldía)?--

SELECT alcaldia, COUNT(num_cicloe) AS total_estaciones
FROM `my-project-coursera-413616.ecobicis.cicloestaciones_limpio`
GROUP BY alcaldia

--   b. Are there any stations not installed?--

SELECT alcaldia, estatus, COUNT(num_cicloe) AS total_estaciones
FROM `my-project-coursera-413616.ecobicis.cicloestaciones_limpio`
GROUP BY estatus, alcaldia

-- Using "afluencia_simple_acumulada" database--

--  c. Which dates have had the most travels by month?--

SELECT 
    CONCAT(CAST(mes AS STRING), ' ', CAST(anio AS STRING)) AS mes_anio,
    SUM(viajes) AS total_de_viajes
FROM `my-project-coursera-413616.ecobicis.afluencia_simple_acumulada`
GROUP BY mes_anio 
ORDER BY total_de_viajes DESC

--  d. Which year was the one with less travels?--

SELECT anio, SUM(viajes) AS total_de_viajes
FROM `my-project-coursera-413616.ecobicis.afluencia_simple_acumulada`
GROUP BY anio
ORDER BY total_de_viajes ASC
LIMIT 1;

-- Using ecobicis database --

-- e. Now let's obtain the basis statistics of the travels--
-- e.1. Starting with the average of the time (days) and distance--

SELECT
  AVG(dias_viaje) AS promedio_dias,
  AVG(distancia_approx) AS promedio_distancia
FROM `my-project-coursera-413616.ecobicis.ecobicis_20230430`

-- e.2. Finding the max and min of time (days) and distance--

SELECT
  MIN(dias_viaje) AS min_dias,
  MAX(dias_viaje) AS max_dias,
  MIN(distancia_approx) AS min_distancia,
  MAX(distancia_approx) AS max_distancia
FROM `my-project-coursera-413616.ecobicis.ecobicis_20230430`

-- e.3. Finally, let's obtain the totals of time (days) and distance--

SELECT
  SUM(dias_viaje) AS total_dias,
  SUM(distancia_approx) AS total_distancia
FROM `my-project-coursera-413616.ecobicis.ecobicis_20230430`
