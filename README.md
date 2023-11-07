# Kunskapsbibliotek för statistikmyndigheten SCB

## Struktur på innehåll i kunskapsbiblioteket
Kunskapsbiblioteket innehåller två huvudtyper av information. Den första typen är *resurser* och det andra är länkar till *mallar* eller *exempelprojekt*.
Resurser lagras under katalogen ```Resources``` och länkar till *mallar* och *exempelprojekt* lagras i katalogen ```ProjectLinks``` 

    README.md <-- Denna fil
    Resources <-- Katalog för resurser
    ProjectLinks <-- Katalog för länkar till mallar och exempelprojekt

### Resurser
Resurser lagras i katalogen Resources. Exempel på resurser kan vara kodfiler, länkar eller instruktioner. Filer som ligger direkt i Resources är resurser som gäller hela kunskapsbiblioteket och skall läggas till sparsamt. Exempel på en sådan fil kan vara en länk till SCBs verksamhetsstöd.

#### Resurskatalog
Resurser skall i de allra flesta fall läggas i en underkatalog till katalogen ```Resources```. Katalogens namn blir namnet på resursen.
Om man vill lägga in en resurs med namnet Kodning skapar man katalogstrukturen enligt nedan. 

    Resources/Kodning

##### Beskrivning i README.md
Resursen beskrivs i en [markdownfil](https://www.markdownguide.org/basic-syntax/) som heter README.md och som läggs i resursens mapp. Denna fil måste läggas till manuellt.

    Resources/Kodning/README.md

Exempel på innehåll

    # Kodning
    Denna resurs innehåller ett exempel på hur man utför kodning
    Kodning beskrivs i SCBs statistikproduktionsprocess som du kan läsa om [här](https://sps.scb.se/sites/vstod/statprod/Sidor/SPS_Process-5-2-1.aspx)

##### Resursfiler
Placera resursfiler i katalogen för resursen.
Exempel

    Resources/Kodning/etl.py <-- python-fil för att utföra ETL
    Resources/Kodning/Kodning.ipynb <-- Jupyter Notebook som utför kodning
    Resources/Kodning/kodning.url <-- Fil som innehåller länk till https://sps.scb.se/sites/vstod/statprod/Sidor/SPS_Process-5-2-1.aspx.

##### Filtyper
Lagra i första hand textfiler i kunskapsbiblioteket.
Lagra inga stora filer i kunskapsbiblioteket som t ex filmer, presentationer, bilder. Stora filer lagras på annan lämplig plats. Skall en användare av kunspasbiblioteket få tillgång till denna fil så går det att lägga in en fil av typen länk (.url) som beskrivs nedan. Alternativt så går det att lägga in en *länk* i en markdown-fil (.md) som t ex README.md i resurskatalogen. 
Lagra ingen data i kunskapsbiblioteket. Data skall läsas från andra källor via koden i resursen.

##### Filtyp Markdown (.md)
Markdown är en filtyp som används för att skriva formatterad text på ett sätt som både förstås av människor och maskiner. Syntax beskrivs bland annat [här](https://www.markdownguide.org/basic-syntax/). Markdownfiler har filändelsen .md och innhållet kan visas på GitHub och i Balsam

##### Filtyp Länk (.url)
Filtypen .url är ett sätt att lagra en länk i en fil. Balsam har stöd för att visa resurser av denna typ. 
Filen innehåller två rader. 
- Den första raden innehåller texten ```[InternetShortcut]```.
- Den andra raden innehåller texten ```URL=``` följt av url-en

Syntax 

    [InternetShortcut]
    URL=https://scb.se


