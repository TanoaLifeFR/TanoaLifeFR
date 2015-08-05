waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["serverrules","Règle Général"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["police","Gendarmerie"];

	player createDiaryRecord ["police",
		[
			"Amendes : Code Civil", 
				"
				Atteinte à la pudeur : 5.000<br/>
				Vandalisme : 20.000<br/>
				Atterissage dans une zone non autorisée : 20.000<br/>
				Possession de drogues : 100.000 + Saisie du véhicule<br/>
				Consommation de Drogues : 10.000 + Saisie<br/>
				Trafic de drogues / alcools : 100.000<br/>
				Obstruction au travail de la Gendarmerie : 7.500<br/>
				Arnaques : 100.000<br/>
				Extorsion : 50.000<br/>
				Corruption : 25.000<br/>
				Entrée dans une zone interdite : 76.500<br/>
				Fausse déclaration : 25.000<br/>
				Vol : 50.000<br/>
				Enlèvement : 100.000<br/>
				Tentative de Braquage de Banque : Prison<br/>
				Braquage de Banque : Somme gagnée + Prison<br/>
				Menaces de mort : 85.000<br/>
				Prise de contrôle d’une zone publique : 100.000 + Prison<br/>
				Désordre civil : 5.000<br/>
				Insultes ou propos racistes : 10.000<br/>
				Refus d’obtempérer : 8.500<br/>
				Délit de fuite : 9.550<br/>
				Comportement dangereux : De 5.000 à 15.000 en fonction de la gravité de l’acte<br/>
				"
		]
	];
	
	player createDiaryRecord ["police",
		[
			"Amendes : Code Routier", 
				"
				Excès de vitesse : 20.000 par palier de 10KM/H au dessus de la limite<br/>
				OffRoad : 9.650<br/>
				Conduite sans permis : 10.000 + Saisie du véhicule<br/>
				Conduite sans phares : 2.500<br/>
				Conduite en état d’ivresse : 30.000 + Saisie du véhicule<br/>
				Conduite dangereuse : 10.550<br/>
				Provocation d’un accident routier : 15.000<br/>
				Meurtre routier : 13.250<br/>
				Défaut de stationnement : 4.650<br/>
				Stationnement gênant : 3.000<br/>
				Vol de véhicule : 15.000 + Remboursement du véhicule si il y a eu Destruction<br/>
				Destruction de véhicule : 50.000<br/>
				"
		]
	];
	
	player createDiaryRecord ["police",
		[
			"Amendes : Code Pénal", 
				"
				Meurtre involontaire : 25.000<br/>
				Meurtre avec prémiditation : 100.000 + Prison<br/>
				Meurtre volontaire : 90.550<br/>
				Tentative de meurtre : 75.000<br/>
				Meurtre sur un médecin : 300.000 + Prison<br/>
				Meurtre sur un Gendarme: 450.000 + Prison (avec peine maximale)<br/>
				Incendie : 20.000<br/>
				Incendie provoquant blessures ou mort : 75.000<br/>
				Evasion de Prison : 100.000 + Prison<br/>
				Incitation à commettre un crime : 35.000<br/>
				Homicide par négligence : 100.000<br/>
				Terrorisme : 600.000<br/>
				Cambriolage : 250.000<br/>
				Tirs d’armes : 30.000<br/>
				Trafic de véhicules volés : 95.000<br/>
				Commerce d’explosifs : 100.000 + Saisie<br/>
				Défaut de permis : 30.000<br/>
				Possession d’armes illégales : 100.000 + Saisie<br/>
				Possession d’armes rebelles : 200.000 + Saisie<br/>
				Possession de tenue illégale ou rebelle : 100.000 + Saisie<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 1 : Tirs de sommation", 
				"
				Merci d’avoir choisi notre serveur pour vivre votre aventure Rôle Play. Cependant, vous devez respecter certaines règles pour le bon déroulement de votre expérience Altis Life, tout en gardant en tête que vous êtes ici pour vous jouer, et pas pour vous casser la tête! Le règlement est susceptible de changer régulièrement, voilà pourquoi il faut le relire régulièrement.<br/><br/>
				
				Les personnes qui subissent des tirs de sommation ne sont pas autorisé à tuer avec comme seuls motifs « il m’a fait des tirs de sommation », les tirs de sommation sont simplement là pour faire comprendre quelque chose à la personne qui les subit.<br/>
				Il est interdit d'entrer dans le commissariat sans avoir une raison RP (ex. un collègue dans le commissariat à libérer).<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 2 : Respecter les autres", 
				"
				Il faut garder une idée en tête: chaque joueur représente une personne réelle donc pensez à ce que vos actes peuvent engendrer sur les autres joueurs. Faites preuve de bon sens, par exemple quand vous comptez faire un meurtre !<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 3 : Mort et RP", 
				"
				L’objectif étant de se rapprocher le plus possible de la réalité, un joueur mort doit tout oublier quand il réapparaît, sauf son appartenance à un gang et une guerre déclarée avec une autre famille sur le forum ou auprès d’un modérateur.<br/>
				Il est interdit de revenir dans une zone d’un rayon de 3 kilomètres du lieu de la mort ou de participer de n'importe quelle façon à l’action RP durant laquelle vous êtes mort avant 30 minutes, sauf si la mort est due à un bug du jeu (ex: mort après un saut du trottoir...).<br/>
				Tout d’abord, le freekill c’est à dire tuer un joueur sans aucune raison, est strictement interdit et passible d’un bannissement permanemt du Serveur.<br/>
				Les mêmes sanctions s’appliquent lors d’un meurtre à l’aide d’un véhicule, aussi appelé carkill. Nous sommes sur un jeu RP, alors chacun de vos actes doit être justifié par une raison RP (eg. braquer quelqu’un pour lui voler des items, des armes et de l’argent).<br/>
				Par ailleurs, dans le cadre d’un braquage ou d’un enlèvement, vous ne pouvez pas tuer vos victimes tant qu’elles coopèrent.<br/>
				Précisions également que si la vie d’un joueur est en danger, il est en droit de se défendre.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 4 : Braquages et limites", 
				"
				Un des aspects parmi les plus intéressants d’Altis Life, est celui du braquage et des vols. Vous avez la possibilité de braquer n’importe qui où vous le souhaitez, sauf dans les camps rebelles.<br/>
				Trois exceptions tout de même:<br/>
				Si vous poursuivez une personne et qu’elle se réfugie dans un camp rebelle ou dans une SafeZone vous pouvez ignorer les limitations de le SafeZone !<br/>
				Lors d’un braquage sur une cargaison légale vous pouvez prendre seulement la moitié de sa cargaison ou la moitié de son argent si la personne en face de vous coopère, Si le civil ne coopère pas alors à ce moment là vous pouvez lui prendre la totalité de sa cargaison. De plus il n’est pas autoriser de braquer 2 fois dans les 15 min la même personne.<br/>
				Si la victime effectue un retrait de véhicule et/ou d’argent (ex: aux distributeurs automatiques ou aux garages), alors vous ne pouvez ni voler votre victime, ni la suivre avec l’intention de s’emparer de son bien plus loin. Si, par exemple, votre victime s’éloigne d’un distributeur mais vous ne savez pas si elle a effectué un retrait, partez du principe que c’est le cas. Il ne faut pas tout de même aller trop loin: si votre victime vient de sortir un véhicule et que vous voulez le prendre en otage, il est évident que vous êtes dans votre droit.<br/>
				Lorsque vous braquez des civils/rebelles, ils sont en droit de se défendre, c’est à vous de vous assurer d’être en surnombre ou qu’ils ne soient pas armés.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 5 : Prises d'otages", 
				"
				Rester RP dans le monde d’Altis.<br/>
				Pour une prise d’otage le nombre de Gendarme minimum connecté doit être de 6 Gendarmes. (Les GAV ne comptent pas dans les 6 Gendarmes requis car ils sont en formation et pas encore prêt à servir la Population d'Altis)<br/>
				Le prix est de 350.000$ par otage.<br/>
				Le négociateur ne peut pas être prit en otage avec son pilote ou la personne désignée pour conduire le négociateur.<br/>
				Rester compréhensif envers la communication entre négociateur et rebelle.<br/>
				Il est interdit d'avoir des otages fictif , c’est à dire qui n’existent pas, ou otage complice.<br/>
				Les transferts de fonds sont interdit via un ATM uniquement transfert direct du négociateur aux preneurs d’otages.<br/>
				Lorsque vous prenez un civil ou un rebelle en otage en aucun cas vous pouvez lui demander de sortir de l’argent de l’ATM.<br/>
				Ne pas faire une prise d’otage dans une safezone.<br/>
				Ne pas faire de prise d’otage en inventant des faits incroyable (ex: bombe nucléaire , camion qui irradie la terre...)<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 6 : Le monde civil", 
				"
				Vous devez en tout temps rester dans un contexte de RP, Toute déconnexion du jeu lors de litige/arrestation peut être pénalisée.<br/>
				Lorsque vous mourrez, vous commencez une nouvelle vie donc, vous oubliez tout ce qui viens de se passer.<br/>
				Vous devez, en tout temps, obéir au force de l’ordre (Gendarmerie) sous peine de recevoir un amende et même une peine de prison.<br/>
				Dans les villes, la limite de vitesse est de 50 Km/h, à la limite de la ville, 70 Km/k et hors des villes, 130 Km/h.<br/>
				Une sommation verbale ou écrite est obligatoire avant toutes actions RP pouvant causer la mort de quelqu’un.<br/>
				Les civils ont le droit de se défendre, mais c’est à vos risques et périls.<br/>
				Il est interdit de braquer un citoyen au alentour d’un ATM ou qu’il soit , sauf en cas de raid.<br/>
				Hors Kavala, les civils ont le droit d’avoir une arme en main s’ils sont en règle (permis d’arme valide). Il est possible qu’un gendarme vous intercepte, il suffit d’avoir votre arme baissé et de coopérer et ça ne va durer que quelques minutes.<br/>
				Si vous apercevez un rebelle s’approchant de vous, vous pouvez vous cacher derrière votre véhicule pour lui demander de baisser son arme pour discuter, s’il continu son chemin vers vous avec l’arme pointant dans votre direction vous avez le droit de l’abattre. Seulement vous devez appeler la Gendarmerie par la suite les prévenir de l’accident car vous aller vous retrouver dans les dossiers d’Interpol, ce qui veux dire que vous aller être recherché par la Gendarmerie pour meurtre volontaire.<br/>
				Il est possible d’être rémunéré pour des informations permettant d’appréhender des rebelles ou donnant la position de certains repères.<br/>
				Si un civil exécute des actes rebelles, il se doit d’avoir lu les règles avant.<br/>
				Tout hélicoptère civil doit passer à 200 mètre minimum au dessus de la ville. Pour vous poser sur l’hôpital, vous devez demander une autorisation de la Gendarmerie. Un policier va alors venir pour vous controller.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 7 : Les Rebelles", 
				"
				Vous devez en tout temps rester dans un contexte de RP, Tout déconnexion du jeu lors de litige/arrestation peut être pénaliser.<br/>
				Lorsque vous mourrez, vous commencez une nouvelle vie donc, vous oubliez tout se qui vient de se passer.<br/>
				Tout braquages en SafeZone est strictement défendu, sauf si l’action à débuté en dehors de la zone.<br/>
				Lorsque vous avez des ennemis (Gendarme, Rebelles, Civils) des tirs de sommation sont obligatoires pour prévenir qu’il y a une menace qui pèse sur eux.<br/>
				L’utilisation d’otages lors d’un braquage de banque est interdit.<br/>
				Tout hélicoptère rebelle passant près de Kavala ou d’une autre ville sera abattu à vu après des tirs de sommations.<br/>
				Les véhicules rebelles sont interdits dans les différentes villes d’Altis. Les forces de l’ordre pourront vous arrêtez et détruire votre véhicule et également vous mettre une contravention.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 8 : La Gendarmerie", 
				"
				Ce règlement aura pour fonction de vous aider dans les attitudes à avoir envers vos collègues, envers les civils et envers les rebelles.<br/><br/>
				
				Le Alt+F4 est passible de radiation des forces de Gendarmerie et est donc strictement interdit pour les policiers comme pour les civils.<br/>
				Les patrouilles et toutes autres opérations qui ne demande pas la mobilisation de plusieurs policiers doivent ce faire en uniforme et non en treillis.<br/>
				Les recrues sont des officiers en formation, elles ne sont donc pas, pour les actions RP(Prise d’otage, Braquage de banque , etc), considérées comme des officiers à part entière.<br/>
				Le vouvoiement et la politesse doivent obligatoirement être employé avec les civils et les membres de la rébellion.<br/>
				Vous êtes au service des civils et vos pouvoirs ne vous sont conférés qu’afin de les aider et de les protéger.<br/>
				Si vous n’êtes pas en mission importante, il est de votre devoir de savoir classer les priorités et de porter secours aux civils en détresse.<br/><br/>
				
				Contrôles d’identité:<br/><br/>

				Vous êtes autorisé à effectuer un contrôle de l’identité de n’importe quel individu sur l’ensemble du territoire d’Altis.<br/><br/>

				Lors d’un contrôle d’identité, il vous faudra menotter la personne en question pour sa sécurité. Vous procéderez à sa fouille et vérifierez si l’individu n’est pas recherché.<br/>
				Précisez lui tout de même, que ça n’est qu’un contrôle de routine.<br/><br/>

				Bien entendu lorsque l’urgence l’exige, vous serez autorisé à menotter rapidement et sans explications immédiates mais une fois le danger écarté vous devrez donner des explications claires et concises à l’individu.<br/>
				Vous pourrez également effectuer des contrôles routiers en vous postant à un point fixe en attendant l’arrivée de véhicules.<br/>
				– Nous sommes souvent appelé pour des raisons en tout genre (Accidents, Mises en fourrière de véhicules, Harcèlement par des gangs, Tentatives de Kidnapping,…).<br/>
				S’il est vrai que certaines de ces missions ne sont pas trépidantes, aucun appel ne doit rester sans réponse. Si vous n’êtes pas en faculté de répondre, faites en sorte qu’un collègue réponde au moins à l’appel.<br/>
				– Cependant, 2 effectifs seront nécessaires pour procéder à un contrôle routier dont un au moins devra avoir le grade de brigadier ou plus.<br/>
				– En cas de manquement à la loi avéré, vous devrez ramenez le coupable le plus rapidement possible au commissariat le plus proche.<br/>
				Une fois au commissariat vous pourrez administrez au coupable la peine adéquate après lui avoir énoncé ses chefs d’accusation.<br/><br/>

				Utilisation de la Force :<br/><br/>

				Utilisation du Taser :<br/><br/>

				– Ne jamais utiliser le Taser pour avoir le dernier mot ou pour faire démonstration de votre puissance.<br/>
				– Ne jamais utiliser cette arme pour Taser à travers une vitre de véhicule.- En cas de fusillade, vous devez tenter une approche par la discussion avec les suspects.<br/>
				– Trouvez une position sauve et sommez les de se rendre ou de baisser leurs armes.<br/>
				– Si malgré vos injonctions ils ne se rendent pas, utilisez la force.<br/><br/>

				Rappel : L’utilisation de l’arme létale doit être parfaitement maitrisé et la Gendarmerie doit y faire le moins appel possible. Les armes létales ne doivent être utilisées qu’en cas de légitime défense et les tirs de sommations sont un obligation pour prévenir les individus.<br/>
				Raids Gendarme sur les point illicites:<br/>
				– Les raids sur les points illicites (Champs, Traitements de stupéfiants et Dealers) doivent être effectués par un minimum de 3 Gendarmes.<br/><br/>

				Un agent de la Gendarmerie avec au minimum le grade de major devra composer le groupe et le plus haut gradé devra le diriger.<br/>
				Pour procéder un raid, la Gendarmerie devra aussi acheter les positions des lieux illégaux à un indics. Un raid n’est ordonné que sur des faits avérés (repérage par hélicoptère, dénonciations ou informations d’un indic) et non sur une intuition.<br/>
				Véhicules et mise en fourrière :<br/>
				– Il est interdit de mettre en fourrière ou de fouiller un véhicule lors d’une phase de combat. Les combats doivent être totalement terminés avant de mettre en fourrière ou fouiller les véhicules sur place.<br/>
				– L’utilisation de véhicules armés n’est autorisé qu’a partir du grade de major ou avec l’autorisation d’un capitaine ou plus. Elle devra cependant être fortement contrôlé. Une mauvaise utilisation de ces véhicules pourra vous valoir une dégradation ou une radiation des forces de la Gendarmerie si récidives.<br/><br/>

				Perquisition de domicile :<br/>
				– La perquisition dans un domicile ne pourra se faire que dans les cas suivants:<br/>
				– L’auteur d’un crime ou délit se réfugie dans sa maison au cours d’une action RP.<br/>
				Seul les Gendarmes avec des grâde supérieur à. celui de Major seront autorisés à procéder à une perquisition.<br/>
				De plus la perquisition ne pourra être effectuée seulement en présence du propriétaire de la maison qui devra être menotté et présent physiquement aux cotés des Gendarmes ou dans la maison si il s’y est réfugié.<br/>
				Seul le stuff illégal pourra être détruit( armes illégales, stuff Gendarme etc…)<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 9 : Lancer un Raid", 
				"
				Les attaques ou les prises d’otages dans un commissariats ou les autres camps (camps rebelles et mercenaires) ne peuvent être lancées que si un message à était envoyer à un admin, pour prévenir, est envoyé minimum 5 minutes avant l’attaque, si pas de réponse de la part d’un admin ou d’un modérateur demander l’autorisation au plus haut gradé de la Gendarmerie . Si toute fois pas de réponse également de la part de celui-ci le Raid est interdit. Si toute fois l’action se passe cela pourra être passible d’un Ban.<br/>
				Si vous poursuivez une personne et qu’elle se réfugie dans un camp rebelle ou , Mercenaires, Commissariats , vous pouvez ignorer les limitations de la safezone en ce qui concerne ces lieux lors du raid.<br/>
				Pour qu’un raid est lieux il faut 5 Gendarmes connecter avec un Haut Grâdé (Major minimum), les GAV ne comptent pas dans les effectifs des 5 fonctionnaires de Gendarmerie . Les GAV sont des officiers en formation, elles ne sont donc pas, pour les actions RP (Prise d’otage, Braquage de banque , etc), considérées comme des officiers à part entière.<br/>
				Un raid doit durer 15 – 20min à partir des premiers coups de feux.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 10 : Gangs et Alliances", 
				"
				Un gang légal, aussi appelé entreprise; peut être formé, mais vous devez faire une demande sur le forum pour avoir l'autorisation In-Game et un channel TeamSpeak ! Et ne faire que des boulots légaux.<br/>
				Pour les Gangs Rebelles ou Famille Rebelles il faut faire un post sur le Forum aussi et attendre une réponse d'un membre du Staff.<br/>
				En tant que membre de gang, vous devez vous afficher, tel un tatoo prouvant votre fidélité au gang. Pour se faire, vous devez mettre le tag de votre gang devant votre nom.<br/>
				Aucune « guerre de gang » Sauf les Familles Rebelles ou Gangs Rebelles Illégaux.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 11 : Protection Civile", 
				"
				La Protection Civile est dans l’obligation de porter secours à toutes personnes leur demandant de aide pour des Soins ou même une Réparation suite à un Accident.<br/>
				Un memebre de la Protection Civile ne peut être pris en otage , être braquer, le vol de leurs véhicules est interdit.<br/>
				Les membres de la Protection Civile peuvent facturer leur prestations.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 12 : Véhicule armé", 
				"
				L’utilisation des véhicules armés dois être seulement utilisé pour des grandes opérations de type braquage de Banque ou prise d’otages.<br/>
				En aucun cas ils doivent être sortis si il n’y a pas d’opération.<br/>
				Vous avez interdiction de tirer sur l'infanterie au sol, mais si celle-ci vous tire dessus vous avez le droit de répliquer.<br/>
				Le véhicule armé ne dois être utilisé que pour tirer dans les pneus ou comme arme de dissuasions, nous ne sommes pas sur un Wasteland.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Article 13 : Les donateurs", 
				"
				Il est interdit pour les donateurs de vendre les armes acheté au camps donateurs a des rebelles/civils.<br/>
				Il leur est interdit aussi de prêter les véhicules donateurs du style Tempest Materiel ou Huron pour aller farmer avec leur collègues.<br/>
				Un donateur peut être ban si il ne respecte pas les règles du serveur, pas de favoritisme.<br/>
				"
		]
	];
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Controls TanoaLifeFR",
				"
				Y : Menu Virtuel.<br/>
				U : Ouvrir et Ferme votre vehicule.<br/>
				F : Sirene pour la Gendarmerie et la Securite Civile.<br/>
				T : Inventaire du Vehicule.<br/>
				Shift + R : Knock un civil/Securite Civile.<br/>
				Shift + O : Menotter(Rebelle) une fois assomé.<br/>
				Windows : Action principale, ramasser des peches etc ...<br/>
				Windows : Reactualisation des skins sur les vetements ...<br/>
				Shift + L : Mettre les Gyrophares.<br/>
				Shift + H : Mettre son arme dans le dos.<br/>
				Shift + V : Mettre les mains derriere la tete.<br/>
				G : Miner rapidement.<br/>
				END/FIN : Baissé le son du jeux en conservant le son des voix.<br/>
				Si vous appuyez sur Windows alors que vous avez un vetement avec un skin, cela va rafraichir votre skin et le ré-affiché.<br/>
				"
		]
	];