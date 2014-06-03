waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Veränderungen"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["policerules","Cop Regeln"];
player createDiarySubject ["safezones","Sicherheitsgebiete (Savezones)"];
//player createDiarySubject ["civrules","Zivile Regeln"];
player createDiarySubject ["illegalitems","Illegale Aktivitäten"];
//player createDiarySubject ["gangrules","Gang Regeln"];
//player createDiarySubject ["terrorrules","Rebellen Regeln"];
player createDiarySubject ["controls","Steuerung"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Offizieller Changelog",
				"
					Die offiziellen Arma III Changelogs können im BIS Forum nachgelesen werden, welches einfach per Google zu finden ist.
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Patchnotes",
				"
Bitte auf der HP nachlesen!<br>

				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Es gibt einige Exploits, deren Nutzung Streng verboten ist. Das Verwenden von Exploits wird in einem Bann enden.<br/><br/>

				1. Das Ausbrechen aus dem Gefängnis mit einer anderen Methode als die Kaution zu zahlen oder durch einen Helikopter abgeholt zu werden.<br/>
				2. Selbstmord um eine Situation zu vermeiden/beenden. Exploids beim tazern, fesseln, gefangen nehmen usw.<br/>
				3. Verdoppeln (Duping) von Geld und/oder Gegenständen. Wenn ihnen jemand ungefragt nach dem einloggen eine große Menge Geld überweist, melden sie es SOFORT einem Admin und überweisen sie ihm das Geld. Machen sie das so schnell es geht um selber nicht in den Verdacht des Hackens zu kommen.<br/>
				4. Das benutzen von Gegenständen die gehackt wurden. Sollte ein Hacker auf dem Server sein und irgendwelche Dinge herbeizaubern melden sie es einem Admin und halten sie sich davon fern. Das Nutzen von gehackten Gegenständen kann in einem Bann enden.<br/>
				5. Missbrauch von Fehlern oder Spielmechaniken wird bestraft. Bewusstes glitchen jedweder Art ist verboten und wird in einem Bann enden. Sollte es mal durch Zufall vorkommen melden sie es einem Admin.<br/>
				6. Wenn man festgenommen ist, ist es verboten aus einem Fahrzeug auszusteigen um sich dem Abtransport zu widersetzen, da dies Bugusing ist. Wiederholtes Aussteigen um erwähntest zu verzögern oder verhindern wird von den Admins geahndet.<br/>
				7. Leider kann man wenn man gefesselt ist Granaten werfen oder andere Aktionen ausführen. Dies ist ein Bug seitens Arma und ist untersagt. Bei Missachtung dieser Regel kann und wird es Konsequenzen geben.<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Sicherheitsgebiete (Savezones)",
				"
					An folgenden Orten, und im näheren Umkreis, ist es verboten Fahrzeuge zu klauen, zu sprengen, Leute auszurauben, zu töten oder jede andere kriminelle Aktivität durchzuführen. Sicherheitsgebiete dürfen nicht als Schutz bei Verfolgungsjagten genutzt werden. Bei größeren Rollenspiel Aktionen mit Ankündigung kann die Regel kurzzeitig wegfallen. Das Ignorieren dieser Regel wird mit einem Bann geahndet.<br/><br/>
					
					Alle Geldautomaten<br/>
					Alle Fahrzeughändler und Garagen<br/>
					Alle Waffenläden<br/>
					Alle Polizeistationen<br/>
					Alle Rebellenlager und Städte<br/>
					Alle Donator Shops<br/>
					Kavala Markt<br/><br/>
								"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Banngründe", 
				"
				Bitte beachten sie, dass das ihre einzige Warnung ist.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (Siehe Exploids)<br/>
				4. Regelmäßiges Fehlverhalten und/oder andauernde Beschwerden im Forum.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Verhalten gegenüber der Polizei", 
				"
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>
				
				1. Zivilisten können ins Gefängnis kommen, wenn sie in die Rücksäcke/Fahrzeuge von Polizisten schauen. Wenn sie dies permanent machen kann es in einem Kick enden.<br/>
				2. Zivilisten können ins Gefängnis kommen, wenn sie ständig einem oder mehreren Polizisten folgen um deren Position preiszugeben. Wenn sie dies permanent machen kann es in einem Kick enden.<br/>
				3. Zivilisten oder Rebellen die Waffen aufnehmen um Polizisten  ohne RP Grund zu töten werden mit den Konsequenzen leben müssen (siehe RDM).<br/>
				4. Das längere verfolgen und/oder belästigen von Polizisten kann in einem Kick und/oder Bann enden.<br/>
				5. Das absichtliche behindern von Polizisten und/oder ihrer Arbeit wird mit Gefängnis geahndet. Wenn sie dies permanent machen kann es in einem Kick enden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boote", 
				"
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>
				
				1. Wiederholtes anschieben von Booten ohne Erlaubnis.<br/>
				2. Anschieben von Booten mit dem Ziel jemanden zu verletzen oder zu töten. Das ist kein RP, nur ein Fehler in der Spielmechanik.<br/>
				3. Absichtliches überschwimmen von Tauchern oder Schwimmern.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Luftfahrt", 
				"
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>
				
				1. Wiederholtes rammen anderer Helikopter, Fahrzeugen, Gebäuden usw.<br/>
				2. Stehlen von Helikoptern ohne dem Besitzer die Zeit zu geben ihn abzuschließen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>
				
				1. Absichtliches überfahren anderer Personen (VRDM).<br/>
				2. Absichtlich vor Autos werfen um sich zu verletzen oder zu töten.<br/>
				3. Rammen anderen Fahrzeuge um eine Explosion zu verursachen.<br/>
				4. Permanente Versuche in Fahrzeuge einzusteigen die einem nicht gehören.<br/>
				5. Fahrzeuge klauen nur um sie zu zerstören.<br/>
				6. Fahrzeuge kaufen um irgendwas des oben erwähnten damit zu machen.<br/>
				7. Fahrzeuge zu beschießen ist nur bei RP Aktionen erlaubt, und nur wenn vorgewarnt wurde.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kommunikations Regeln", 
				"
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>
				
				1. In keinem Voice Chat darf Musik oder anderer Mikrofon Spam abgespielt werden.<br/>
				2. Das spammen in irgendeinem Chat Kanal wird mit Kick und/oder Bann geahndet.<br/>
				3. Der Voice-Side-Chat wird nie benutzt. Permanente Zuwiderhandlung wird geahndet.<br/>
				4. Die Unterteilung der Kanäle im Teamspeak hat einen Grund. Polizisten dürfen nicht in einen Zivilisten Kanal, genauso wie andersrum. Durch Absprachen können kurzzeitig Ausnahmen gemacht werden.<br/>
				5. Sollten Zivilisten in einen Polizei Kanal gehen um Informationen zu erhalten werden diese zunächst ermahnt und gebeten den Kanal zu verlassen. Sollte dies nichts nützen kann es in einem Teamspeak und/oder Spiel Kick und/oder Bann enden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>
				
				1. Personen ohne RP Grund töten ist RDM.<br/>
				2. Eine Rebellion erklären ist kein Grund jeden zu töten, auch Polizisten nicht.<br/>
				3. Polizisten und Zivilisten/Rebellen dürfen nur in eine größere Schießerei gelangen, wenn es RP Gründe gibt.<br/>
				4. Wenn sie unbeteiligt in einen Schusswechsel geraten und sterben ist das kein RDM.<br/>
				5. Selbstschutz und Schutz Anderer ist kein RDM.<br/>
				6. Jemanden erschießen ohne demjenigen Zeit zu geben auf Forderungen oder Anweisungen zu Reagieren ist RDM.<br/><br/>
				
				Die Admins werden alle RDM Beschwerden von Fall zu Fall beurteilen.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Neues Leben Regel (New Life Rule)", 
				"
				Diese Regel zählt für Polizisten und Zivilisten/Rebellen.<br/><br/>
				
				Folgendes kann zu einem Kick und/oder Bann führen, im Ermessen des Admins.<br/><br/>

				1. Wenn sie sterben dürfen sie 15 Minuten nicht an den Ort des Geschehens zurückgehren. RDM Tode oder Unfälle ohne Fremdeinwirkung zählen da nicht drunter.<br/>
				2. Wenn sie von einem Polizisten oder Rebellen beim RP getötet werden sind ihre vorherigen Verbrechen verschwunden. Es darf keine Rache verübt werden.<br/>
				3. Wenn sie durch RDM gestorben sind zählt das nicht als neues Leben.<br/>
				4. Manuelles Neuspawnen ist kein neues Leben.<br/>
				5. Sich absichtlich töten um einer RP Situation zu entkommen zählt nicht als neues Leben.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Sei kein Arsch!", 
				"
				Wenn ihnen ein Admin sagt das sie Mist gebaut haben, dann haben sie Mist gebaut.<br/>
				Rollenspiel anderer stören oder andere Regeln verletzten.<br/>
				Wie auf diese Regel reagiert werden soll liegt im Ermessen des Admins.<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Verhandlungen",
				"
				Verhandlungen werden von dem höchstrangiger Polizisten geführt, sofern dieser Zeit hat. Dieser kann die Aufgabe aber an einen Vertreter abgeben.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Die Zentralbank",
				"
				1. Es ist für Zivilisten/Rebellen illegal das Gelände der Zentralbank zu betreten. Die Reaktion der Polizei kann ein Platzverweis, Gefängnis oder sogar Beschuss sein.<br/>
				2. Helikopter haben keine Erlaubnis die Zentralbank zu überfliegen. Bei wiederholtem fehlverhalten kann von Seiten der Polizei das Feuer eröffnet werden.<br/>
				2. Sollte die Zentralbank ausgeraubt werden wird sofort ein Großaufgebot der Polizei ausrücken.<br/>
				3. Polizisten in der Nähe der Bank müssen diese sofort überprüfen. Kleinere Verbrechen sollten in diesem Fall ignoriert werden.<br/>
				4. Je nach Situation kann mit Tazern oder scharfen Waffen vorgegangen werden.<br/>
				5. Jeder Zivilist der die Arbeiten der Polizei behindert oder in den Verdacht kommt den Bankräubern Positionen und andere Informationen zu geben wird als Mittäter behandelt.<br/>
				6. Es ist möglich, dass die Polizeiführung eine zivile Sicherheitsorganisation für die Bank einstellt. Dieses kann spontan und einmalig sein oder permanent sein. Bei permanenten Sicherheitskräften muss dies durch einen Vertrag festgehalten werden.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Luftfahrt",
				"
				1. Es ist verboten mit einem Luftfahrzeug innerhalb der Städte zu landen. Eine Sondergenehmigung kann von dem hochrangigen im Dienst befindlichen Polizisten erteilt werden.<br/>
				Landeorte:<br/>
				Kavala: Das Krankenhaus (037129)<br/>
				Athira: Der Sportplatz (138185)<br/>
				Pyrgos: Auf dem Feld im Nordosten des Straßenverkehrsamtes (170127)<br/>
				Sofia: Gegenüber dem Autohändler (258214)<br/>
				In kleineren Städten ist das landen auch ohne Sondergenehmigung auf Sportplätzen oder anderen freien Flächen erlaubt, nicht jedoch auf Straßen.<br/><br/>
				
				2. Helikopter dürfen grundsätzlich nicht auf Straßen landen.<br/>
				3. Die Polizei kann kurzzeitig einen oder mehrere Orte für Flugverkehr sperren.<br/>
				4. Die vier Hauptstädte dürfen ohne Sondergenehmigung nicht überflogen werden.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegale Gebiete", 
				"
				1. Betreten sie keine illegalen Gebiete (außer bei großen RP Aktionen).<br/>
				2. Rebellengebiete dürfen von Polizisten nur bei einer Großrazzia betreten werden.<br/>
				3. Wenn sie jemanden in illegales Gebiet verfolgen, rufen sie Verstärkung.<br/>
				4. Drogenfelder, Drogenverarbeiter und Drogenhändler dürfen maximal 10 Minuten am Stück überwacht werden.<br/>
				5. Es ist unter keinen Umständen erlaubt an oder in Polizei HQs und Rebellengebieten zu campen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrollieren", 
				"
				1. Die Polizei patrolliert auf ganz Altis auf der Suche nach kriminellen Aktivitäten und verlassenen Fahrzeugen.<br/>
				2. Patrouillen können zu Fuß, per Auto oder per Helikopter gemacht werden.<br/>
				3. Patrouillen dürfen nicht innerhalb von illegalen Gebieten durchgeführt werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Straßensperren", 
				"
				Die Polizei kann jederzeit Straßensperren an strategischen Positionen einrichten um gegen das organisierte Verbrechen vorzugehen und die Straßen zu sichern.<br/><br/>
				
				1. Eine Straßensperre muss von mindestens zwei Polizisten mit mindestens einem Fahrzeug errichtet werden.<br/>
				2. Eine Straßensperre darf nicht innerhalb eines 30 Meter Radius um ein illegales Gebiet gemacht werden.<br/>
				3. Eine Straßensperre darf nur auf Straßen, nicht auf Kreuzungen gemacht werden.<br/>
				4. Eine Straßensperre muss nicht auf der Karte gekennzeichnet werden.<br/><br/>


				Vorgehensweise bei einer Straßensperre:<br/>
				1. Der Fahrer stoppt sein Fahrzeug in etwa 50 Meter Entfernung und stellt den Motor ab.<br/>
				2. Fragen sie den Fahrer und die Passagiere ob sie Waffen haben.<br/>
				3. Wenn sie welche haben lassen sie die Personen nicht gleichzeitig aussteigen.<br/>
				4. Weisen sie die Personen darauf hin die Waffen zu senken und unter keinen Umständen auf einen Polizisten zu zielen. Andernfalls wird geschossen (Tazer wenn möglich).<br/>
				5. Fragen sie den Fahrer woher er kommt und wo es hin geht.<br/>
				6. Fragen sie nach ob sie mit einer Durchsuchung einverstanden sind.<br/>
				7. Ist er einverstanden legen sie ihn in Handschellen und kontrollieren alles.<br/>
				8. Ist er nicht einverstanden ist eine Durchsuchung nur erlaubt wenn illegaler Handel auf dieser Strecke sehr wahrscheinlich ist.<br/>
				9. Danach kann das Fahrzeug weiter fahren oder, bei gefundenen illegalen Sachen, ein Strafzettel oder auch Gefängnis verhängt werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				1. Fahrzeuge auf einem Parkplatz oder am Straßenrand werden in Ruhe gelassen.<br/>
				2. Fahrzeuge die verlassen oder offen und ohne Fahrer rumstehen können konfisziert werden.<br/>
				3. Boote sollten vernünftig am Ufer geparkt werden.<br/>
				4. Alle Fahrzeuge die längere Zeit verlassen rumstehen können konfisziert werden.<br/>
				5. Fahrzeuge konfiszieren ist ein wichtiger Job für Polizisten. Es hilft den Server sauber und weniger laggy zu halten.<br/>
				6. Im Zweifelsfall den Fahrzeugbesitzer per Handy kontaktieren bevor es konfisziert wird.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeiten", 
				"
				Die folgenden Geschwindigkeiten werden von der Polizei überwacht um die Sicherheit aller Bewohner und Besucher der Insel zu gewährleisten.<br/><br/>
				
				Innerhalb von Hauptstädten:<br/>
				Um den Kavala Marktplatz: Schrittgeschwindigkeit<br/>
				Kleine Straßen: 30 km/h<br/>
				Hauptstraßen: 50 km/h<br/>
				Außerhalb von Hauptstädten:<br/>
				Kleine Straßen: 80 km/h<br/>
				Hauptstraßen: 110 km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Stadt-Regeln", 
				"
				1. Die Polizei darf jederzeit in den vier Hauptstädten patroulieren.<br/>
				2. Eine große Anzahl von Polizisten sollte nur bei starken Rebellenaktivitäten in Städten vorhanden sein.<br/>
				3. Das Kriegsrecht darf nur in extremen Krisensituationen von einem Major oder höherrangigen Polizisten verhängt werden.<br/>
				4. Die Polizeistationen sind illegal für Zivilisten solange sie keine Genehmigung haben dieses zu betreten. Solange sie keine Bedrohung oder Belästigung darstellen ist es erlaubt in der Nähe zu sein.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gefängnis und Strafzettel",
				"
				Eine Gefängnisstrafe sollte immer dann erfolgen wenn die Person eine Gefahr für sich oder Andere darstellt.<br/><br/>

				1. Wenn ein Strafzettel bezahlt wurde sollte in der Regel keine zusätzliche Gefängnisstrafe erfolgen.<br/>
				2. Es muss den Personen der Grund für einen Strafzettel und/oder der Gefängnisstrafe mitteilen.<br/>
				3. Wenn jemand auf der Fahndungsliste steht, sollte er festgenommen werden und nicht getötet werden, sofern dies möglich ist.<br/><br/>
				4. Die Höhe der Strafzettel müssen angemessenen sein.<br/>
				5. Will oder kann der Betroffene nicht bezahlen gibt es eine Gefängnisstrafe.<br/><br/>
				
				Ein kompletter Bußgeldkatalog ist auf der Homepage zu finden. www.dieFirma.tv<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Waffen", 
				"
				Es ist einem Polizisten IMMER verboten Polizei-Waffen an Zivilisten weiterzugeben. Dies wird mit einer Degradierung oder sofortigen Entlassung geahndet!<br/><br/>

				Legale Waffen für Zivilisten sind in den beiden Knarrenbuden mit entsprechender Lizenz zu erwerben.
		
				Alle anderen Waffen sind illegal!<br/><br/>

				1. Waffen müssen innerhalb von Städten im Rucksack verstaut werden. Ein Fernglas in die Hand nehmen um die Waffe zu verstecken zählt auch nicht.<br/>
				2. Außerhalb von Städten ist es erlaubt legale Waffen mit Lizenz zu tragen. Die Waffe muss sofort gesenkt werden wenn sich Polizisten nähern.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Nicht-tödliche Waffen",
				"
				Der Tazer sollte in den meisten Fällen einer scharfen Waffe vorgezogen werden.<br/><br/>

				1. Der Missbrauch eines Tazers kann mit Degradierung, Suspension oder Kündigung geahndet werden.<br/>
				2. Der Tazer darf nur im Einklang mit den Gesetzen benutzt werden.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Razzia/Camping",
				"
				Eine Razzia ist dafür vorgesehen Gebiete mit hoher Kriminalität zu stürmen und zu kontrollieren.<br/><br/>

				1. Bei einer Razzia müssen mindestens vier Polizisten beteiligt sein, wovon mindestens einer den Rang Sergeant oder höher inne hat. Sollten zu wenig Polizisten im Dienst sein kann auch mit kleineren Truppen eine Razzia durchgeführt werden.<br/>
				2. Alle Personen innerhalb des Gebietes werden zunächst festgenommen und durchsucht. Wenn nicht illegales gefunden wurde dürfen diese gehen.<br/>
				3. Auch hier sollte versucht werden eher nicht-tödliche Waffen zu benutzen.<br/>
				5. Nachdem die Gegend gesichert wurde und alle Personen kontrolliert wurden müssen die Polizisten die Gegend verlassen.<br/>
				6. Es darf keine weitere Razzia in dem selben Gebiet innerhalb der nächsten 30 Minuten durchgeführt werden.<br/>
				7. Sollten alle Polizisten bei einer Razzia sterben gilt auch die 30 Minuten Regel.<br/>
				8. Verstärkung rufen ist erlaubt, solange diese nicht aus Polizisten besteht, die schon gefallen sind (siehe Neues Leben Regeln).<br/><br/>
				
				Camping beschreibt einen längeren Aufenthalt in einem bestimmten Gebiet.<br/><br/>

				1. Straßensperren zählen nicht als Campen.<br/>
				2. Polizeipräsenz in Hauptstädten ist kein Campen.<br/>
				3. An illegalen Orten ist das campen maximal 10 Minuten erlaubt. Mindestens drei Polizisten müssen dafür anwesend sein. Sind weniger Polizisten im Dienst kann es auch mit weniger gemacht werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				Der Polizist mit dem höchsten Rang hat immer das Kommando bei Polizeiangelegenheiten und muss dafür sorgen, dass die Server Regeln eingehalten werden. Sollten die Regeln gebrochen werden muss mit einem Admin zusammen über die Konsequenzen beraten werden.<br/><br/>

				Rangliste der Polizei:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Colonel<br/>
				4. Major<br/>
				5. Captain<br/>
				6. Lieutenant<br/>
				7. Sergeant<br/>
				8. Officer<br/>
				9. Cadet<br/><br/>

								"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Scharfe Waffen",
				"
				1. Scharfe Waffen dürfen nur benutzt werden wenn es keine andere Option gibt, oder das Leben eines Polizisten oder Zivilisten gefährdet scheint. <br/>
				2. Geschossen werden darf nur wenn unmittelbare Gefahr droht oder in Trainingssituationen.<br/>
				3. Bei undiszipliniertem oder gefährlichem Verhalten mit Waffen droht eine Degradierung oder schlimmeres.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regeln",
				"
				1. Alle Polizisten müssen während dem Dienst im Teamspeak und in einem Polizei Kanal sein.<br/>
				2. Rebellen müssen bei größeren RP Aktionen ebenfalls im Teamspeak in den passenden Kanälen sein.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen Regeln",
				"
				Ein Rebelle ist jemand, der bewaffneten Widerstand gegen die Regierung führt. Jedoch darf die Definition des Rebellen nicht 100% übernommen werden, da die Polizei meist viel weniger Leute hat. Sie dürfen im Normalfall die Polizei nicht ohne triftigen Grund angreifen. Benutzen sie ihren gesunden Menschenverstand. Es geht in erster Linie darum den anderen Spielern das Spiel nicht zu verderben.<br/><br/>
				1. Ein Rebell muss zuerst eine Gang bilden, und dann seine Absichten erklären.<br/>
				2. Der Widerstand entschuldigt RDM nicht.<br/>
				3. Der RP Widerstand sollte auf mehrere Weisen geführt werden, nicht nur mit Banken ausrauben, Leute überfallen und Leute erschießen.<br/>
				4. Der Widerstand muss koordiniert sein.<br/>
				5. Ein RICHTIGER Grund muss hinter jedem Angriff und jeder Aktion stehen.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				1. In einer Gang zu sein, ist nicht ungesetzlich. Nur wenn Verbrechen begangen werden ist kann jedes Gangmitglied zur Rechenschaft gezogen werden.<br/>
				2. In einem Rebellengebiet zu sein, ist nicht ungesetzlich, nur wenn man an ungesetzlichen Tätigkeiten teilnimmt.<br/>
				3. Gangs dürfen unbewaffnete Bürger nicht einfach so töten.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gang's dürfen Bürger nicht einfach so töten, ausßer sie werden bedroht oder behindern das RP. Die Tötung unbewaffneter Bürger, weil sie sich nicht anpassen, wird als RDM betrachtet, aber Sie können die Bürger verletzen/beschädigen.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Folgende Fahrzeuge sind illegal und werden wenn nötig zerstört oder im Polizeihauptquartier bis zum nächsten Restart aufbewahrt. Je nachdem was die Polizei für nötig hält.<br/><br/>

				1. Ifrit<br/>
				2. Alle bewaffneten Fahrzeuge<br/><br/>

				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				Alle Waffen die nicht in einer Knarrenbude gekauft wurden sind illegal.<br/><br/>
				
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Gegenstände",
				"
				Das folgende ist illegal:<br/><br/>
				1. Schildkröten<br/>
				2. Kokain<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: öffnet Spielermeü<br/>
				U: aufschließen und zuschließen von Autos<br/>
				F: Polizeisirene (nur Polizist)<br/>
				T: Fahrzeugkofferraum<br/>
				Linkes Shift + R: fesseln (nur Polizist)<br/>
				Linkes Shift + G: umschlagen (nur Zivilist, um auszurauben)<br/>
				Linkes Shift + L: aktiviert Blaulicht (nur Polizist)<br/><br/>
				"
		]
	];