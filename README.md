# Análise de Logs e SQL: Sistema de Táxi | Log-Analyse und SQL: Taxi-System

**DE:** Projekt aus dem QA-Bootcamp (TripleTen, Sprint 6). Log-Analyse in der Konsole eines Remote-Servers (Filterung nach IP-Muster, Trennung der Fehler 400 und 500 in Dateien) und SQL-Abfragen in PostgreSQL auf der Taxi-Datenbank von Chicago.

---

## Descrição
Projeto do Sprint 6 do bootcamp de Analista de QA da TripleTen. O trabalho tem duas partes: análise de logs de um servidor pela linha de comando e consultas SQL em um banco de dados de corridas de táxi de Chicago.

## Objetivo do projeto
- **Logs:** descobrir quais requisições vieram de endereços IP que começam com `233.201.` e separar os erros 400 e 500 do dia 30/12/2019 em arquivos.
- **Banco de dados:** responder perguntas da equipe sobre a frota (quantos carros, quais empresas têm poucos carros), o clima e o número de corridas.

## Metodologia
1. Conexão ao servidor remoto e uso de comandos Linux (`grep`, `mkdir`, `wc`, `head`, `tail`) para buscar e organizar os logs.
2. Conexão ao banco `chicago_taxi` (PostgreSQL) e escrita de quatro consultas SQL.

## Resultado
- **Logs:** 2 requisições encontradas do IP `233.201.*`. Para o dia 30/12/2019, o arquivo `400.txt` ficou com 177 linhas e o `500.txt` com 158 linhas.
- **Frota:** 5.529 carros na tabela `cabs` (o plano era 10.550).
- **Empresas com menos de 100 carros:** 51 empresas.
- **Clima:** classificação de cada hora de 05/11/2017 como `good` ou `bad`.
- **Corridas:** número de corridas por empresa em 15 e 16/11/2017 (64 empresas). A primeira foi a Flash Cab, com 19.558.

## Ferramentas utilizadas
Linha de comando (Linux), `grep`, PostgreSQL, SQL (`COUNT`, `GROUP BY`, `HAVING`, `CASE`, `INNER JOIN`, `ORDER BY`).

## O que aprendi
- Buscar informação em arquivos de log pela linha de comando e redirecionar o resultado para arquivos.
- Usar `GROUP BY` com `HAVING` para filtrar resultados agregados.
- Classificar dados com `CASE` e unir tabelas com `JOIN`.

## Melhorias possíveis
- Automatizar a separação dos logs por tipo de erro com um script.
- Usar filtros mais precisos para não capturar números iguais em outras colunas do log.

## Arquivos
- [`comandos-logs.md`](comandos-logs.md): comandos e resultados da parte de logs.
- [`consultas.sql`](consultas.sql): as quatro consultas SQL.

---

# Log-Analyse und SQL: Taxi-System (Deutsche Version)

## Beschreibung
Projekt aus Sprint 6 des QA-Bootcamps von TripleTen. Die Aufgabe hat zwei Teile: Analyse von Server-Logs über die Kommandozeile und SQL-Abfragen auf einer Datenbank mit Taxifahrten in Chicago.

## Projektziel
- **Logs:** herausfinden, welche Anfragen von IP-Adressen stammen, die mit `233.201.` beginnen, und die Fehler 400 und 500 vom 30.12.2019 in getrennte Dateien aufteilen.
- **Datenbank:** Fragen des Teams zur Flotte (wie viele Fahrzeuge, welche Unternehmen haben wenige Fahrzeuge), zum Wetter und zur Anzahl der Fahrten beantworten.

## Vorgehensweise
1. Verbindung zum Remote-Server und Linux-Befehle (`grep`, `mkdir`, `wc`, `head`, `tail`) zum Suchen und Organisieren der Logs.
2. Verbindung zur Datenbank `chicago_taxi` (PostgreSQL) und vier SQL-Abfragen.

## Ergebnis
- **Logs:** 2 Anfragen von der IP `233.201.*` gefunden. Für den 30.12.2019 hat die Datei `400.txt` 177 Zeilen und die Datei `500.txt` 158 Zeilen.
- **Flotte:** 5.529 Fahrzeuge in der Tabelle `cabs` (geplant waren 10.550).
- **Unternehmen mit weniger als 100 Fahrzeugen:** 51 Unternehmen.
- **Wetter:** Einstufung jeder Stunde am 05.11.2017 als `good` oder `bad`.
- **Fahrten:** Anzahl der Fahrten pro Unternehmen am 15. und 16.11.2017 (64 Unternehmen). An der Spitze lag Flash Cab mit 19.558.

## Verwendete Werkzeuge
Kommandozeile (Linux), `grep`, PostgreSQL, SQL (`COUNT`, `GROUP BY`, `HAVING`, `CASE`, `INNER JOIN`, `ORDER BY`).

## Was ich gelernt habe
- Informationen in Log-Dateien über die Kommandozeile suchen und das Ergebnis in Dateien umleiten.
- `GROUP BY` mit `HAVING` nutzen, um aggregierte Ergebnisse zu filtern.
- Daten mit `CASE` einstufen und Tabellen mit `JOIN` verbinden.

## Mögliche Verbesserungen
- Das Aufteilen der Logs nach Fehlertyp mit einem Skript automatisieren.
- Genauere Filter verwenden, damit gleiche Zahlen in anderen Spalten des Logs nicht miterfasst werden.

## Dateien
- [`comandos-logs.md`](comandos-logs.md): Befehle und Ergebnisse zum Log-Teil.
- [`consultas.sql`](consultas.sql): die vier SQL-Abfragen.
