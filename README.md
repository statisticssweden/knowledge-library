# Kunskapsbibliotek för statistikmyndigheten SCB

## Struktur på innehåll i kunskapsbiblioteket
Kunskapsbiblioteket innehåller två huvudtyper av information. Den första typen är *resurser* och det andra är länkar till *mallar* eller *exempelprojekt*.
Resurser lagras under katalogen ```Resources``` och länar till *mallar* och *exempelprojekt* lagras i katalogen ```ProjectLinks``` 

    README.md <-- Denna fil
    Resources <-- Katalog för resurser
    ProjectLinks <-- Katalog för länkar till mallar och exempelprojekt

### Resurser
Resurser lagras i katalogen Resources. Exempel på resurser kan vara kodfiler, länkar eller instruktioner. Filer som ligger direkt i Resources är resurser som gäller hela kunskapsbiblioteket och skall läggas till sparsamt.

#### Resurskatalog
Resurser skall i vanliga fall läggas i en underkatalog till Resources. Katalogens namn blir namnet på resursen.
Om man vill lägga in en resurs med namnet Kodning så blir katalogstrukturen enligt nedan. 

    Resources/Kodning

##### Beskrivning i README.md
Beskriv resursen i en [markdownfil](https://www.markdownguide.org/basic-syntax/) som heter README.md och som ligger i resursens mapp. 

    Resources/Kodning/README.md


### Filtyper
Lagra i första hand textfiler i kunskapsbiblioteket.
Lagra inga stora filer i kunskapsbiblioteket. Stora filer lagras på annan lämplig plats. Skall en användare av kunspasbiblioteket få tillgång till denna fil så går det att lägga in en fil av typen länk (.url) som beskrivs nedan. Alternativt så går det att lägga in en *länk* i en Markdown-fil (.md). 
Lagra ingen data i kunskapsbiblioteket

