# SQL-Abfragen
# a)
SELECT angesteller.name as name, angestellter.adresse as adresse, pilot.lizenz as LIZENZDATUM FROM pilot INNER JOIN angesteller ON angestellter.personalnummer = pilot.personalnummer GROUP BY pilot.personalnummer
# b)
SELECT angestellter.name as name, angestellter.adresse as adresse, pilot.lizenz as lizenz, abflug.abflugtag as abflugtag FROM fliegt INNER JOIN angestellter ON angestellter.personalnummer = fliegt.personalnummer INNER JOIN pilot ON pilot.personalnummer = fliegt.personalnummer
# c)
SELECT count(*) as ANZAHL_FLUEGE, abflugtag as ABFLUGDATUM FROM abflug GROUP BY abflugtag ORDER BY abflugtag DESC
# Es wird ein fehler ausgegeben, weil die Zeit in der Tabelle nicht vorkommen darf (es gibt viele Zeiten an einem Abflugtag, aber nur einen Abflug pro Reihe)
# d)
SELECT abflug.abflugtag as abflugtag, flugtyp.flugnummer as flugnummer, flugzeug.hersteller as hersteller, flugzeug.typ as typ, flugzeug.seriennummer as seriennummer FROM abflug INNER JOIN flugtyp ON flugtyp.flugnummer = abflug.flugnummer INNER JOIN flugzeug.seriennummer = abflug.flugzeugseriennummer WHERE abflug.abflugtag >= 10.11.2001 AND abflug.abflugtag <= 20.11.2001 AND flugtyp.startflughafen = 'Luxemburg' AND flugtyp.zielflughafen = 'Ankara'
# e)
SELECT flugnummer, abflugtag FROM abflug WHERE abflugtag >= 10.11.2000 AND abflugtag <= 20.11.2000 ORDER BY abflugtag, zeit DESC LIMIT 1
# f)
SELECT abflug.abflugtag as abflugtag, abflug.flugnummer as flugnummer, flugzeug.hersteller as hersteller, flugzeug.typ as typ, flugzeug.seriennummer as seriennummer FROM abflug INNER JOIN flugtyp ON flugtyp.flugnummer = abflug.flugnummer INNER JOIN flugzeug ON flugzeug.seriennummer = abflug.flugzeugseriennummer WHERE abflug.abflugtag >= 9.11.2001 AND abflug.abflugtag <= 21.11.2001 AND flugtyp.startflughafen = 'Luxemburg' AND flugtyp.zielflughafen = 'Ankara'
