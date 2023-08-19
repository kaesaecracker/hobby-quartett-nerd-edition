# Hobby-Quartett - Nerd-Edition

Quartett mit weiteren Spielmechaniken

## rules.py

- Bei Uneinigkeiten bei den Regeln während des Spiels wird im Plenum mit einfacher Mehrheit entschieden. Direkt betroffene Kreaturen haben in diesem Fall kein Stimmrecht.

### def init()

- Spiel mit mindestens zwei Kreaturen (bei drei Kreaturen besteht das Plenum aus einer Person, bei weniger Spielenden entfällt das Plenum)
- Es gibt einen Ziehstapel für Hobbies und einen für Mods
- Alle Spielenden beginnen mit X Hobbies und Y Mods
- Gemeinsam wird entschieden, wer beginnt (im Zweifelsfall einfache Mehrheit)

### def loop()

- Die Kreatur, die aktuell am Zug ist fordert eine andere Kreatur zur Diskussion heraus
- Beide Kreaturen legen je ein Hobby verdeckt vor sich und drehen die Karte gleichzeitig um
- Beide Kreaturen erklären nacheinander, warum ihr Hobby gut ist (ohne direkten Bezug auf das andere Hobby). Die herausfordernde Kreatur beginnt.
- Die herausfordernde Kreatur legt einen Mod offen aus. Die herausgeforderte Kreatur antwortet nach kurzer Bedenkzeit ebenfalls mit einem Mod.
- Beide Spieler versuchen den anderen zu überzeugen, warum ihr Hobby besser ist
- Wird keine Einigung erzielt, wird das Plenum aufgerufen
- Die Kreatur, deren Hobby als besser/passender eingestuft wurde bekommt die gespielten Karten auf die Hand
- Hat eine Kreatur kein Hobby mehr auf der Hand, scheidet diese aus. Hobbylose Kreaturen sind weiterhin teil des Plenums.
- Als nächstes ist die Kreatur an der Reihe, die nun weniger Karten hat

### def plenum():

- Ab drei Kreaturen im Plenum wird das safe-to-try-prinzip angewendet (nicht alle müssen zustimmen, aber keiner darf dagegen sein), ansonsten gilt Konsensprinzip
- Wenn im Plenum entschieden werden muss, welches Hobby das bessere ist: das Plenum stellt Fragen, die die Kreaturen beantworten müssen. Die Fragen können an einzelne oder beide Kreaturen gestellt werden.

## RFCs

Zu testende Zusatzregeln, auf die sich vor Spielbeginn geeinigt werden kann. Einige davon stehen in Konflikt zueinander

- Die Karten der herausfordernden und herausgeforderten Kreatur werden nicht gezeigt.
- Herausfordernde und herausgeforderte Kreatur ziehen je eine Modifierkarte, die offengelegt wird.
- Die Kreaturen nennen abwechselnd einen konkreten Aspekt, dessen Werte miteinander verglichen werden.
- Einer der Werte gewinnt. Bei Uneindeutigkeit wird das Plenum befragt.
- Beide Spielenden können pro Hobbykarte einen der beiden Modifier einsetzten, der sich nun auf den Aspekt beider Hobbykarten bezieht. Nach Gebrauch kommt die Modifierkarte zurück in den Stapel.
- Die Nennung eines Aspekts erfolgt abwechlend, dabei beginnt die herausfodernde Kreatur.
- Hat eine Kreatur drei Aspekte gewonnen, bekommt sie die Hobbykarte der anderen Kreatur.
- Jede spielende Person hat einen Stapel gewonnener Hobbykarten, die am Ende gezählt werden.
- Die Kreatur mit den meisten Hobbies hat gewonnen.
- Wenn die Hobbies gut zusammen passen, können die Spieler die Karten auch tauschen
- Bei der Diskussion kann der Fokus auf eins der Attribute gelegt werden. Dafür muss die herausfordernde Kreatur das Hobby offen legen und das Attribut nennen, bevor die herausgeforderte Kreatur ihr Hobby auswählt.
- Stiche statt bis zum bitteren Ende: Es werden alle Hobbies und Modifikatoren ausgeteilt. Die Kreatur, deren Hobby als besser/passender eingestuft wurde, legt die gespielten Karten vor sich auf einen Stapel, statt sie auf die Hand zu nehmen. Später wird gezählt, wer die meisten Karten hat.
- Bei Aspekten gewinnen 23, 42 und anderen in eurer Community besonderen Zahlen immer. 23>42.
- Spielen ohne Modifier
- Spielen mit globalem, zufälligen Modifier nach dem Legen der Hobbies

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

## Tie Breaker / Modifier

- gelten für beide seiten "global"?

- mit Katzenohren
- blinky
- frei (wie Bier / wie Freiheit)

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
- kochen (kochen und würzen. Scharfes essen)
- campen / reisen
- Gemeinnützigkeit
  - open knowledge
  - politisches engagement
  - Open source
  - organisieren
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
 - kampfsport
   - aikido
   - tae Kwon do
   - kickboxen
   - kung fu
   - eurythmie
   - eskrima
   - stockkampf
   - schwertkampf
   - bogenschießen
