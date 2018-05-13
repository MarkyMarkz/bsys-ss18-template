# Homework hw7 task3

- [Unlimitiertes Pipe Kommando](#unlimitiertes-pipe-kommando)
- [`&` Parameter](#ampersand-parameter)
- [`Move` Kommando](#move-kommando)

Beachten Sie, dass Sie zur Implementierung dieser Task, die `task2` bereits implementiert haben müssen (insbesondere den `Library`-Part).

Jede der folgenden Teilaufgaben kann _unabhängig voneinander gelöst werden_ und ergibt jeweils 0.5 Teilpunkte (mit Dokumentation und Tests). Sie müssen diese Task also nicht komplett lösen um Punkte zu erhalten. Benutzen Sie für die Umsetzung __keine__ der `exec*`-Systemfunktionen.

## Unlimitiertes Pipe Kommando

Erweitern Sie Ihre Implementierung des `|` Kommandos aus task2, damit dieses mit beliebig vielen Pipes umgehen kann.

## Ampersand Parameter

Erweitern Sie Ihre Implementierung so, dass bei einem eingelesenen "Ampersand" (`&`) das aufzurufende Kommando im Hintergrund abgearbeitet wird (vergewissern Sie sich, dass Ihre Implementierung sich genauso verhält wie bei Standard-Shells).

Um die Funktionalität zu testen können Sie in Ihrer Shell beispielsweise `sleep 100 &` ausführen, sich anschließened per `ps` die `PID` des Kindprozesses holen und diesen dann mit `kill -9 [PID]` beenden.

## `Move` Kommando

Erstellen Sie ein zusätzliches Kommando zum Verschieben von Dateien und Ordnern (achten Sie darauf, den kompletten `Directory-Tree` zu verschieben). Der Aufruf soll dabei folgendermaßen aussehen `bsys-shell [user]$ move [source] [target]` und sich genauso verhalten wie das Binary [mv](https://linux.die.net/man/1/mv), wenn keine Parameter angegeben werden. Das Kommando soll __jedoch__ nur ausgeführt werden, wenn das `[target]` nicht existiert (um zu verhindern, dass bei der Implementierung Dateien überschrieben werden).

## Kommentare und Tests

Kommentieren Sie Ihre Funktionen und schreiben Sie soweit möglich eigene Integration Tests in
`tests/`. Die Dokumentation soll sich per `cargo rustdoc -- --document-private-items` erstellen lassen.

Einfache Tests (manchmal sagt ein Test zu einer Funktion mehr als viele
Kommentarzeilen ...) können auch direkt in die Dokumentation 'codiert' werden,
siehe [Documentation Tests][].

## Externe Crates

Benutzen Sie für Ihre Implementierung nur die externe Crate `nix`.

[Documentation Tests]:
https://doc.rust-lang.org/book/testing.html#documentation-tests