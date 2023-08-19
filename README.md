# Hobby-Quartett - Nerd-Edition

Quartett mit weiteren Spielmechaniken

## rules.py
- Bei Uneinigkeiten bei den Regeln während des Spiels wird im Plenum entschieden. Direkt betroffene Kreaturen haben in diesem Fall kein Stimmrecht.
- 
### def init():
- Spiel mit mindestens 2 Kreaturen (bei 3 Kreaturen besteht das Plenum aus einer Person, bei weniger Spielern entfällt das Plenum)
- Es gibt einen Ziehstapel für Hobbies und einen für Mods
- Alle Spieler beginnen mit X Hobbies und Y Mods
- Gemeinsam wird entschieden, wer beginnt (im Zweifelsfall einfache Mehrheit)

### def loop():
- Die Kreatur, die aktuell am Zug ist fordert eine andere Kreatur zur Diskussion heraus
- Beide Kreaturen legen je ein Hobby verdeckt vor sich und drehen sie gleichzeitig um
- Beide Kreaturen erklären, warum ihr Hobby gut ist (ohne direkten Bezug auf das andere Hobby). Die herausfordernde Kreatur beginnt, da sie bereits Zeit zum Überlegen hatte.
- Die herausfordernde Kreatur legt einen Mod offen aus. Die herausgeforderte Kreatur antwortet nach kurzer Bedenkzeit ebenfalls mit einem Mod. 
- Beide Spieler versuchen den anderen zu überzeugen, warum ihr Hobby besser ist
- Wird keine Einigung erzielt, wird das Plenum aufgerufen
- Die Kreatur, deren Hobby als besser/passender eingestuft wurde bekommt die gespielten Karten auf die Hand
- Hat eine Kreatur kein Hobby mehr auf der Hand, scheidet diese aus. Hobbylose Kreaturen sind weiterhin teil des Plenums. 
- Als nächstes ist die Kreatur an der Reihe, die nun weniger Karten hat

### def plenum():
- ab 3 Kreaturen im Plenum wird das safe-to-try-prinzip angewendet (nicht alle müssen zustimmen aber keiner darf dagegen sein), ansonsten gilt Konsensprinzip
- Wenn im Plenum entschieden werden muss, welches Hobby das bessere ist: das Plenum stellt Fragen, die die Kreaturen beantworten müssen. Die Fragen können an einzelne oder beide Kreaturen gestellt werden.

### Sonderregeln
Optionale Zusatzregeln, auf die sich vor Spielbeginn geeinigt werden kann

- Wenn die Hobbies gut zusammen passen, können die Spieler die Karten auch tauschen
- Bei der Diskussion kann der Fokus auf eins der Attribute gelegt werden. Dafür muss die herausfordernde Kreatur das Hobby offen legen und das Attribut nennen, bevor die herausgeforderte Kreatur ihr Hobby auswählt.
- Stiche statt bis zum bitteren Ende: Es werden alle Hobbies und Modifikatoren ausgeteilt. Die Kreatur, deren Hobby als besser/passender eingestuft wurde, legt die gespielten Karten vor sich auf einen Stapel, statt sie auf die Hand zu nehmen. Später wird gezählt, wer die meisten Karten hat.

## Karten
Karten enthalten folgende Informationen:
- Name des Hobbies (darf beliebig interpretiert werden)
- Icon der Hobby-Gruppe
- Nummer in der Gruppe und Anzahl der Karten in der Gruppe (damit man weiß, ob man alle hat)
- Bild mit Untertitel: gibt Standardinterpretation vor, die jedoch ignoriert werden darf
- Wertungen

## Werte
 * Manchmal stehen einheiten drauf, manchmal aber nur text
 * Vergleich im plenum wenn die zwei relevanten personen nicht einig werden
 * alles hat einen Wert zwischen 23-42
   * 23 und 42 gewinnen immer, 23>42
   * Manchmal einheitenlose zahlen
 * Skalen umrechnen lassen!
 * alles ist relativ zu der jeweiligen person

 * Hobby-Hoppability (Commitment, Investistion, Lernkurve): höher ist besser
   * Wie schwierig /langwierig zu lernen (für mich, recherchieren)
   * Bis wann kann ich es lernen (kürzer ist besser)
   * Wie sehr committed man sich darauf (v. a. Zeit, aber aich Geld, Beispiel Segelflugzeuge)
     * Anschaffungskosten und laufende Kosten
       * Auto, Urlaub, Wartung
       * Anschaffung, Wartung 
       * Auto, vs. streamingservice
   * behindert das andere hobbies daneben?
 * Geekyness / Soziotop / geek cred / Nerdscore: mehr ist besser
   * Nerdscore / wie nerdig ist es?
   * Geeky vs. Populär?
   * Welches Soziotop trifft man bei Ausübung?
 * Risiko (weniger ist besser) / Alltagstauglichkeit bzw. Vernunft (höher ist besser)
   * verletzungsriesiko / schwere der zu erwartenden Verletzungen?
   * Todesgefahr?
   * Wie nützlich sind die Skills, die man trainiert, im restlichen Leben
 * Anfahrtsweg / Vor- und Nachbereitungsaufwand: weniger ist besser
 * Sportlichkeit: höher ist besser
 * Portabilität (z.B. Packmaß: portablet ist besser
 * Geschwindigkeit (von der spielenden Person): höher ist besser

## Tie Breaker / Modifier
 * gelten für beide seiten "global"?

 * mit Katzenohren
 * blinky
 * frei (wie Bier / wie Freiheit)
 * besser ist schlechter / schlechter ist besser
 * Anti Indikationen entfallen

## Hobbies
 * Nachtbeschäftigung / Party
   * Karaoke
   * Tanzen
   * Tschunkeln
   * geselliges Beisammensein
 * tagsüber aufm camp
   * engeln / Eventorga
   * talks ansehen
   * workshops besuchen
   * Baden gehen
 * Chaoten-Aktivitäten
   * offener Tag im Hackerspace
   * Hacker meetups / assemblies 
   * Saugen / Sharing is caring
   * Cloudexorzismus
 * kinky geeks
 * kochen (kochen und würzen. Scharfes essen)
 * Spiele
   * brettspiele
   * kartenspiele
   * pen+paper
   * go / Baduk spielen
   * Videospiele (inkl. VR)
 * Luft-Sportarten
   * Acro-GS
   * "Normal" gleitschirmfliegen
   * Drachenfliegen
   * Hike & Fly
 * Wasser-Sportarten
   * kitesurfen
   * Tauchen
 * Rad
   * Ballaballa
   * "Normales" Rad
   * Buggy-Kiten
   * Longboard
 * Outdoor
   * Bodenkiten
   * Slackline
   * Bouldern
 * jonglieren
 * Kraftsport
 * campen / reisen
 * Den planeten verbessern, was für die Allgemeinheit tun
 * Medienkonsum
   * holzbearbeitungs Videos anschauen
   * Into the Rabbithole
   * Serien schauen
   * vorträge schauen
   * lesen, Hörbücher (zusammen) hören
   * podcasts hören
   * wikipedia
 * künstliche Intelligenz (bildgenerierung, sprachmodelle)
 * programmieren
 * 3d drucken
 * holzwerken
 * kampfsport
   * aikido
   * tae Kwon do
   * kickboxen
   * kung fu
   * eurythmie
   * eskrima
   * stockkampf
   * schwertkampf
   * bogenschießen
 * Food
   * Gärtnern (Kräuter, Gemüse, Pilze, Obst)
   * Fermentieren
   * Kochen
   * Backen
- politisches engagement
    - Open source
    - Öffentlichkeitsarbeit 
   - organisieren
   - 

