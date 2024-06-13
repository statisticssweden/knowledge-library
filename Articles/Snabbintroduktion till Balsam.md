
# Snabbintroduktion till BALSAM

## Vad är BALSAM

Bearbetning och Analys i Samverkan (BALSAM) är en SCB-utvecklad beräknings- och analysplattform som är speciellt utformad för att stödja innovationsarbete, analysverksamhet och bearbetning av data. Den erbjuder en robust miljö för att arbeta med maskininlärning och avancerad dataanalys, vilket gör den idealisk för att förbättra och effektivisera statistikproduktionsprocessen.

Plattformen baseras på open source-komponenter, inklusive GitLab för versionshantering och Minio för datalagring. Den är tänkt att användas för utveckling och drift av ML-metoder, test av datakällor och för annat innovativt arbete samt för produktion baserad på R och Python. Genom att använda BALSAM kan vi på ett effektivt sätt utföra dataanalyser och utveckla nya metoder och modeller inom statistik och maskininlärning.

Bearbetningar på SCB ska genomföras så att de efterlever ställda krav på säkerhet, spårbarhet och reproducerbarhet. Bearbetningarna ska också samverka med den statistiska infrastrukturen MINK, UDB, pakethantering och datalagring.


### Vad är vad i BALSAM (beståndsdelarna i BALSAM)

BALSAM består av flera viktiga komponenter som tillsammans skapar en kraftfull miljö för dataanalys och innovation:

- **Projekt**: En arbetsyta där data, kod och analyser samlas. Varje projekt har unika resurser och behörigheter som kan anpassas efter behov.
- **Bearbetningsmiljöer**: Den tekniska miljö där data bearbetas och analyseras, med specifika programvaror och verktyg som behövs för analysen.
- **Kunskapsbiblioteket**: Ett gemensamt bibliotek där vi samlar erfarenheter, best-practice, artiklar, resurser, mallar och exempel för att underlätta arbetet och sprida kunskap inom organisationen.


#### Rolig systemkarta

*(Här kan du infoga en beskrivning eller bild av systemkartan)*

## Begränsningar i plattformen

BALSAM har vissa begränsningar som användarna måste vara medvetna om, inklusive resursbegränsningar, specifika behörighetskrav och datalagringspolicyer.

## Data

### Undantag (SCB)

*(Här kan du fylla i detaljer om undantag gällande SCB)*

### Hämta

Data kan hämtas från olika källor som databaser, API:er eller filuppladdningar. Det är viktigt att följa säkerhets- och behörighetskrav när data hämtas.

### Spara (vart sparar jag den?)

Data ska sparas på anvisade platser inom BALSAM-plattformen för att säkerställa att den är säker och lättillgänglig.

### Lagring (temp. lösning)

Tillfällig lagring används för data som endast behövs under en kortare period. Det är viktigt att följa riktlinjerna för att inte överskrida de tilldelade resurserna.

## Kunskapsbiblioteket

En balsaminstallation kan vara uppkopplad mot ett eller flera kunskapsbibliotek som innehåller artiklar, resurser, mallar och exempel för att underlätta arbetet. För att hitta information i ett kunskapsbibliotek, navigera till Kunskapsbibliotek i huvudmenyn och välj det bibliotek du vill utforska.

Artiklarna i kunskapsbiblioteket beskriver olika ämnen och är ordnade i mappar eller kategorier. Resurser är mindre samlingar av kodfiler som kan exekveras utan externa beroenden, till exempel exempel på bearbetningsflöden eller analyser. Dessa resurser kan kopieras till ett projekt för vidare utveckling och läggs i katalogen Resources i projektets repository. Om du vill arbeta vidare med en resurs bör filerna flyttas från Resources till en annan lämplig plats i repositoryt.

### Exempelprojekt

Exempelprojekt refererar till ett projekt som används som ett exempel eller modell för att demonstrera hur ett projekt kan struktureras och genomföras. Detta kan innefatta beskrivning av projektets mål, omfattning, tidsplan, resurser och metoder. Exempelprojekt används ofta i utbildningssyfte, för att ge studenter eller nyanställda en konkret förståelse av projektledning och för att visa bästa praxis inom ett specifikt område. Det kan också användas i projektförslag för att illustrera en potentiell väg framåt eller i handledningar för att ge praktisk vägledning.

På SCB används strukturerade metoder och projekt, inklusive insamling, validering och analys av data, samt publicering av resultaten i rapporter på deras webbplats.

Följande exempelprojekt visar på den breda omfattningen av SCB:s arbete och roll i att tillhandahålla pålitlig statistik för beslutsfattande och allmän information:

- Regelbundna undersökningar för att samla in data om sysselsättning, arbetslöshet och andra arbetsmarknadsförhållanden i Sverige.
- Kontinuerligt samla in och analysera priser på varor och tjänster för att mäta inflationen.
- Insamling av omfattande data om befolkningens boendesituation, hushåll och bostäder.
- Samla in och analysera data relaterade till miljö och ekonomi, som till exempel utsläpp av växthusgaser, resursanvändning och miljöutgifter.
- Insamling och analys av data för att sammanställa bruttonationalprodukten (BNP) och andra ekonomiska indikatorer.


## Introduktion till Elyramiljön

## Introduktion till Elyramiljön

ElyraAI är en version av JupyterLab som används i vår miljö. Denna plattform är speciellt utformad för att underlätta utvecklingen av dataanalys- och maskininlärningsprojekt genom att erbjuda kraftfulla verktyg och funktioner inom en notebook-miljö.

### Vad är ElyraAI?

ElyraAI bygger på JupyterLab, en interaktiv utvecklingsmiljö som tillåter användare att skapa och dela dokument som innehåller live-kod, ekvationer, visualiseringar och berättande text. ElyraAI utökar JupyterLab med ytterligare funktioner som gör det enklare att arbeta med dataanalys och maskininlärning.

### Funktioner i ElyraAI

- **Notebooks**: Interaktiva dokument där du kan skriva och köra kod, dokumentera ditt arbete och visualisera data.
- **Pipeline Editor**: Ett verktyg för att skapa och hantera data pipelines grafiskt, vilket gör det enklare att organisera och reproducera dina arbetsflöden.
- **Git Integration**: Enkel versionshantering och samarbete genom inbyggd Git-support.

### Användning av notebooks

I notebook-miljön kan du:

- **Skriva kod**: Stöd för flera programmeringsspråk, inklusive Python och R.
- **Köra kodceller**: Exekvera enstaka celler eller hela notebooks för att se resultat direkt.
- **Visualisera data**: Använd inbyggda verktyg och bibliotek för att skapa grafer och diagram.
- **Dokumentera**: Lägg till markdown-celler för att skriva text, kommentarer och förklaringar tillsammans med koden.

ElyraAI gör det möjligt att skapa komplexa dataanalys- och maskininlärningsprojekt på ett strukturerat och effektivt sätt. Genom att använda ElyraAI kan vi dra nytta av en kraftfull, integrerad utvecklingsmiljö som stödjer hela arbetsflödet från dataimport och bearbetning till modellutveckling och visualisering. Detta bidrar till att uppnå syftet med BALSAM, som är att stödja innovationsarbete, analysverksamhet och bearbetning av data på ett säkert, spårbart och reproducerbart sätt. ElyraAI möjliggör effektiv hantering av dataanalyser och utveckling av nya metoder och modeller inom statistik och maskininlärning, i linje med SCB:s krav och den statistiska infrastrukturen MINK, UDB, pakethantering och datalagring.


## Versionshantering

Versionshantering av kod är processen att hantera och dokumentera förändringar i kod över tid. Detta gör det möjligt att följa kodändringar, återgå till tidigare versioner och säkerställa att alla utvecklare arbetar med samma version av koden. Versionshantering är viktig för reproducerbarhet, kodgranskning och underlättar förståelsen av förändringar för de som tar över ansvar för ett kodprojekt.

På SCB används godkända versionshanteringssystem för att utveckla, förvalta och ändra produktionskod. Dessa system stödjer arbete med flera olika versioner av koden, vilket möjliggör parallella kodändringar och tydliggör vilken kod som är i produktion och vilken som är under utveckling. Kodändringar görs i separata versioner och dokumenteras noggrant.

Riktlinjer för kodändringar:
- Varje kodändring ska representera en enskild ändring (t.ex. buggfix eller specifik funktionsförbättring).
- Ändringar ska dokumenteras med informativ text som sammanfattar syftet och beskriver ändringen.
- Implementering av kodändringar i huvudversionen ska föregås av tester som säkerställer korrekt funktion.
- Tekniska aspekter och beroenden, som parametervärden och paketversioner, ska versionshanteras för att säkerställa reproducerbarhet.


### Git kommandon

Versionshantering sker med hjälp av Git. Här är några grundläggande kommandon:

```bash
git init
git clone [repository-url]
git add [file]
git commit -m "commit message"
git push origin [branch-name]
```

## Säkerhetsaspekter (SCB)

### Hämta/Ladda/Installera paket

För att säkerställa att miljön är säker, följ riktlinjerna för att hämta, ladda och installera paket.

### Hämta data

Säkerhet och integritet vid datahämtning är avgörande. Följ protokollen för att skydda data från obehörig åtkomst.

### Behörigheter

Användare måste ha korrekta behörigheter för att få tillgång till olika delar av plattformen och data. Detta administreras centralt.

### Lösenord

Lösenordshantering är viktig för att skydda användarkonton och data. Använd starka lösenord och ändra dem regelbundet.

## Beställarportalen? (SCB)

*(Här kan du fylla i detaljer om beställarportalen om det är relevant)*

## Kod

### Vart skapar jag den?

Kod bör skapas och hanteras inom projektets arbetsyta för att säkerställa versionering och samarbete.

### Hur skriver jag?

Följ kodningsstandarder och bästa praxis för att skriva läsbar och underhållbar kod.

### Vilka språk?

De mest använda språken i vår miljö är Python, R och SQL. Använd det språk som bäst passar ditt projekt och dina analysbehov.
