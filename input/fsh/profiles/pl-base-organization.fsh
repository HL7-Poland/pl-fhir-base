Profile: PLBaseOrganization
Parent: OrganizationEuCore
Id: pl-base-organization
Title: "Organization (PL Base)"
* ^version = "0.2.0"
* ^status = #active
* insert PLDescriptionTranslation([[Formalnie lub nieformalnie uznane zgrupowanie osób lub organizacji utworzone w celu podejmowania wspólnych działań. Obejmuje firmy, instytucje, korporacje, działy, grupy społeczne, grupy praktyk medycznych, płatników/ubezpieczycieli itp.]])

* . ^short = "A grouping of people or organizations with a common purpose"
* . ^definition = "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
* . insert PLTranslation([[Zgrupowanie osób lub organizacji o wspólnym celu]], [[Formalnie lub nieformalnie uznane zgrupowanie osób lub organizacji utworzone w celu podejmowania wspólnych działań. Obejmuje firmy, instytucje, korporacje, działy, grupy społeczne, grupy praktyk medycznych, płatników/ubezpieczycieli itp.]])

* identifier insert PLTranslation([[Identyfikuje tę organizację w wielu systemach]], [[Identyfikator organizacji używany do jej identyfikacji w wielu różnych systemach.]])
* active insert PLTranslation([[Czy wpis organizacji jest nadal aktywnie używany]], [[Czy wpis organizacji jest nadal aktywnie używany.]])
* type insert PLTranslation([[Rodzaj organizacji]], [[Rodzaj (rodzaje) organizacji.]])
* name insert PLTranslation([[Nazwa używana dla organizacji]], [[Nazwa powiązana z organizacją.]])
* alias insert PLTranslation([[Lista alternatywnych nazw, pod którymi organizacja jest lub była znana]], [[Lista alternatywnych nazw, pod którymi organizacja jest lub była znana.]])
* description insert PLTranslation([[Dodatkowe szczegóły dotyczące organizacji, które mogą być wyświetlane jako informacje dodatkowe identyfikujące organizację poza jej nazwą]], [[Opis organizacji, który pomaga zapewnić dodatkowy ogólny kontekst dotyczący organizacji, aby upewnić się, że wybrano właściwą organizację.]])
* contact insert PLTranslation([[Oficjalne dane kontaktowe organizacji]], [[Dane kontaktowe dostępnych środków komunikacji właściwych dla danej organizacji. Mogą obejmować adresy, numery telefonów, numery faksów, numery telefonów komórkowych, adresy e-mail i strony internetowe.]])

* partOf only Reference(PLBaseOrganization)
* partOf insert PLTranslation([[Organizacja, której częścią jest ta organizacja]], [[Organizacja, której częścią jest ta organizacja.]])

* endpoint insert PLTranslation([[Techniczne punkty końcowe zapewniające dostęp do usług obsługiwanych dla organizacji]], [[Techniczne punkty końcowe zapewniające dostęp do usług obsługiwanych dla organizacji.]])
* qualification insert PLTranslation([[Kwalifikacje, certyfikaty, akredytacje, licencje, szkolenia itp. dotyczące udzielania świadczeń]], [[Oficjalne certyfikaty, akredytacje, szkolenia, wyznaczenia i licencje, które uprawniają i/lub w inny sposób potwierdzają uprawnienie organizacji do udzielania świadczeń, np. zgoda na świadczenie określonego typu usług wydana organizacji przez jednostkę certyfikującą (np. amerykańską Joint Commission).]])
* qualification.identifier insert PLTranslation([[Identyfikator tej kwalifikacji organizacji]], [[Identyfikator przydzielony tej kwalifikacji dla tej organizacji.]])
* qualification.code insert PLTranslation([[Kodowana reprezentacja kwalifikacji]], [[Kodowana reprezentacja kwalifikacji.]])
* qualification.period insert PLTranslation([[Okres ważności kwalifikacji]], [[Okres ważności kwalifikacji.]])
* qualification.issuer insert PLTranslation([[Organizacja regulująca i wydająca kwalifikację]], [[Organizacja regulująca i wydająca kwalifikację.]])
