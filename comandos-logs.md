# Parte de logs (Linux) | Log-Teil (Linux)

Logs do servidor | Server-Logs: `~/logs/2019/12`

## Tarefa 1 | Aufgabe 1: IPs que começam com 233.201. | IPs, die mit 233.201. beginnen
```bash
grep -R "^233.201." ~/logs/2019/12
```
Resultado | Ergebnis (2 requisições | 2 Anfragen):
```
apache_2019-12-18.txt:233.201.188.154 - - [18/12/2019:21:46:01 +0000] "DELETE /events HTTP/1.1" 403 3971
apache_2019-12-21.txt:233.201.182.9 - - [21/12/2019:21:56:20 +0000] "PATCH /users HTTP/1.1" 400 4118
```

## Tarefa 2 | Aufgabe 2: logs de 30/12/2019 por erro | Logs vom 30.12.2019 nach Fehler getrennt
Criar os diretórios | Verzeichnisse anlegen:
```bash
mkdir ~/bug1
mkdir ~/bug1/events
```
Selecionar os erros 400 e 500 | Fehler 400 und 500 auswählen:
```bash
grep ' [45]00' ~/logs/2019/12/apache_2019-12-30.txt > ~/bug1/main.txt
```
Separar por erro | Nach Fehler trennen:
```bash
grep '400' ~/bug1/main.txt > ~/bug1/events/400.txt
grep '500' ~/bug1/main.txt > ~/bug1/events/500.txt
```
Conferência | Kontrolle:
```bash
wc ~/bug1/events/400.txt   # 177 linhas | Zeilen
wc ~/bug1/events/500.txt   # 158 linhas | Zeilen
head -3 ~/bug1/events/400.txt
tail -3 ~/bug1/events/400.txt
head -3 ~/bug1/events/500.txt
tail -3 ~/bug1/events/500.txt
```
