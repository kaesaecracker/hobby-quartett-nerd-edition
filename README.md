# Hobby-Quartett - Nerd-Edition

Quartett mit weiteren Spielmechaniken

## rules.py

- Bei Uneinigkeiten bei den Regeln während des Spiels wird im Plenum mit einfacher Mehrheit entschieden. Direkt betroffene Kreaturen haben in diesem Fall kein Stimmrecht.

### def goal()

- Das Spiel gewonnen hat die Kreatur mit den meisten Hobbykarten im Repertoire.
- Eine Runde ist gewonnen, wenn eine Kreatur drei Aspekte gewinnt. Sie darf beide Hobbykarten auf ihren Repertoire-Hobbyhaufen legen.

### def init()

- Spiel mit mindestens zwei Kreaturen.
- Es gibt pro Runde zwei Spielende, die gegeneinander spielen. Restliche Spielenden bilden das Plenum.
- Es gibt einen Ziehstapel für Hobbies und einen für Modifikatoren.
- Alle Spielenden werden mit 5 Hobbies verdeckt und 3 Modifikatoren offen ausgeteilt.
- Gemeinsam wird entschieden, wer beginnt (im Zweifelsfall einfache Mehrheit).

### def round()

- Die herausfordernde Kreatur fordert eine beliebige Spielerperson heraus.
- Die herausfordernde Kreatur wählt eine Hobbykarte aus ihrem Deck, zeigt sie aber noch nicht und nennt einen Aspekt.
- Die herausgeforderte Kreatur wählt eine Hobbykarte aus ihrem Deck.
- Die Hobbykarten werden offengelegt und der Aspekt diskutiert.

#### def loop()

- Modifikatoren können von allen Spielenden nach Belieben eingesetzt werden, auch vom Plenum. Sie gelten für diese Runde ab Aussprache für die Zukunft.
- Es wird ein Konsenz gebildet, wer in diesem Aspekt gewonnen hat.
- Hat eine Kreatur drei Aspekte gewonnen, darf sie beide Hobbykarten auf ihren Repertoirehaufen legen.
- Hat noch keine der beiden Spielenden drei Aspekte gewonnen, wird darf der nächste Aspekt vom der Kreatur gewählt werden, die ihn beim vorherigen Mal nicht wählen dürfte. 

#### def next_round()

- Die Spielerperson mit den wenigsten Hobbies in ihrem Repertoire darf die nächste Runde starten.

#### def discussion()

- Beide Spieler versuchen den anderen zu überzeugen, warum ihr Hobby besser ist
- Wird keine Einigung erzielt, wird das Plenum aufgerufen
- Bei der Diskussion kann der Fokus auf einen bestimmten Aspekt gelegt werden. Dafür muss die herausfordernde Kreatur das Hobby offen legen und das Attribut nennen, bevor die herausgeforderte Kreatur ihr Hobby auswählt.
- Die Kreatur, deren Hobby als besser/passender eingestuft wurde bekommt die gespielten Karten auf die Hand
- Hat eine Kreatur kein Hobby mehr auf der Hand, scheidet diese aus. Hobbylose Kreaturen sind weiterhin Teil des Plenums.
- Die nächste Runde eröffnet die Kreatur, die die wenigsten Hobbykarten im Repertoire hat. Haben mehrere Spielende gleich wenig Repertoirekarten, entscheidet das Plenum.

### def plenum():

- Ab drei Kreaturen im Plenum wird das safe-to-try-prinzip angewendet (nicht alle müssen zustimmen, aber keiner darf dagegen sein), ansonsten gilt Konsensprinzip
- Wenn im Plenum entschieden werden muss, welches Hobby das bessere ist: das Plenum stellt Fragen, die die Kreaturen beantworten müssen. Die Fragen können an einzelne oder beide Kreaturen gestellt werden.

## RFCs

Zu testende Zusatzregeln, auf die sich vor Spielbeginn geeinigt werden kann. Einige davon stehen in Konflikt zueinander

- Stiche statt bis zum bitteren Ende: Es werden alle Hobbies und Modifikatoren ausgeteilt. Die Kreatur, deren Hobby als besser/passender eingestuft wurde, legt die gespielten Karten vor sich auf einen Stapel, statt sie auf die Hand zu nehmen. Später wird gezählt, wer die meisten Karten hat.
- Bei Aspekten gewinnen 23, 42 und anderen in eurer Community besonderen Zahlen immer. 23>42.
- Spielen ohne Modifikatoren
- Spielen mit globalem, zufälligen Modifikator nach dem Legen der Hobbies

## Aspekte

- Die Aspekte beziehen sich immer auf die Kreatur, die die Karte spielt
- Manche Werte der Aspekte sind leer, manche mit Zahlen mit und ohne Einheiten, manchmal ist der Wert in Textform beschrieben
- Vergleich im Plenum wenn die zwei relevanten Personen nicht einig werden
- Manche Aspektefelder sind leer, manche mit Zahlen mit und ohne Einheiten, manchmal ist der Wert in Textform beschrieben
- Die Spielenden müssen Einheiten bei Bedarf in die gleiche Einheit umrechnen

- Hobby-Hoppability (Commitment, Investistion, Lernkurve): höher ist besser
  - Wie schwierig /langwierig zu lernen (für mich, recherchieren)
  - Bis wann kann ich es lernen (kürzer ist besser)
  - Wie sehr committed man sich darauf (v. a. Zeit, aber aich Geld, Beispiel Segelflugzeuge)
    - Anschaffungskosten und laufende Kosten
      - Auto, Urlaub, Wartung
      - Anschaffung, Wartung
      - Auto, vs. streamingservice
  - behindert das andere hobbies daneben?
- Geekyness / Soziotop / geek cred / Nerdscore: mehr ist besser
  - Nerdscore / wie nerdig ist es?
  - Geeky vs. Populär?
  - Welches Soziotop trifft man bei Ausübung?

## Modifikatoren

- Gelten für beide Hobbykarten auf allen Aspekten innerhalb einer Runde

## Hobby-Karten

Karten enthalten folgende Informationen:

- Name des Hobbies (darf beliebig interpretiert werden)
- Icon der Hobby-Gruppe
- Nummer in der Gruppe und Anzahl der Karten in der Gruppe (damit man weiß, ob man alle hat) 
- Bild mit Untertitel: gibt Standardinterpretation vor, die jedoch ignoriert werden darf

### Ideen

- Nachtbeschäftigung / Party
  - Karaoke
  - Tanzen
  - Tschunkeln
  - geselliges Beisammensein
- Baden gehen
- kinky geeks
- campen / reisen
- Medienkonsum
  - podcasts hören
- künstliche Intelligenz (bildgenerierung, sprachmodelle)
- Haustier

### Sportideen

- Luft-Sportarten
  - Acro-GS
  - "Normal" gleitschirmfliegen
  - Drachenfliegen
  - Hike & Fly
- Wasser-Sportarten
  - kitesurfen
  - Tauchen
- Outdoor
  - Bodenkiten
  - Slackline
  - Bouldern
- jonglieren
- Kraftsport
- Yoga
