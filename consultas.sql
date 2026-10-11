-- Banco de dados | Datenbank: chicago_taxi (PostgreSQL)

-- Tarefa 1 | Aufgabe 1: número total de carros na tabela cabs | Gesamtzahl der Fahrzeuge (Ergebnis: 5529)
SELECT COUNT(*) AS cnt FROM cabs;

-- Tarefa 2 | Aufgabe 2: empresas com menos de 100 carros | Unternehmen mit weniger als 100 Fahrzeugen (51)
SELECT COUNT(*) AS cnt, company_name
FROM cabs
GROUP BY company_name
HAVING COUNT(*) < 100
ORDER BY cnt DESC;

-- Tarefa 3 | Aufgabe 3: clima por hora em 05/11/2017 | Wetter pro Stunde am 05.11.2017 (bad = rain/storm)
SELECT ts,
CASE
WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'bad'
ELSE 'good'
END AS weather_conditions
FROM weather_records
WHERE ts >= '2017-11-05 00:00:00' AND ts <= '2017-11-05 23:59:59';

-- Tarefa 4 | Aufgabe 4: corridas por empresa em 15 e 16/11/2017 | Fahrten pro Unternehmen am 15. und 16.11.2017 (64)
SELECT cabs.company_name, COUNT(trips.trip_id) AS trips_amount
FROM cabs
INNER JOIN trips
ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS date) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY company_name
ORDER BY trips_amount DESC;
