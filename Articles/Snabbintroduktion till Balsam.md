
# Snabbintroduktion till BALSAM

## Vad är BALSAM

BALSAM är en plattform som är speciellt utformad för att stödja innovationsarbete, analysverksamhet och bearbetning av data. Den erbjuder en säker miljö för att arbeta med maskininlärning och avancerad dataanalys. Miljön är också utformad för att fungera som ett bra stöd för att förbättra och effektivisera kod för exempelvis statistikproduktion. BALSAM innehåller kraftfulla verktyg och stöd för att samarbeta i projekt och för att dra nytta av den samlade kompetensen kring bearbetning och analys av data genom det så kallade Kunskapsbiblioteket. Genom att använda BALSAM kan vi på ett effektivt sätt utföra dataanalyser och utveckla nya metoder och modeller inom statistik och maskininlärning.

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

Mallar och exempel är hela repositorys som kan användas som grund för nya projekt. Exempel lämpar sig väl för utbildning och träning, medan mallar underlättar skapandet av nya projekt. För att skapa ett projekt utifrån en mall eller ett exempel, gå in på Mallar och Exempel och välj Skapa Projekt på den mall eller det exempel du vill använda. Mallen eller exemplet blir då förifyllt i dialogen för att skapa ett projekt.

Information om hur man redigerar ett kunskapsbibliotek finns i README.MD.

## Introduktion till Elyramiljön

Elyramiljön är en del av vår IT-infrastruktur som stödjer databehandling och analys. Den erbjuder en robust och skalbar miljö för att hantera stora datamängder.

## Versionshantering

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
