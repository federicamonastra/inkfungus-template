Ore 3:00
Pickle si sveglia nel cuore della notte a causa del brontolio del suo stomaco
*[Alzati dal letto] -> ALZATI_DAL_LETTO
*[Torna a dormire] -> TORNA_A_DORMIRE

==TORNA_A_DORMIRE==
Ore 4:00
Pickle si sveglia nuovamente a causa del brontolio del suo stomaco.
->ALZATI_DAL_LETTO

==ALZATI_DAL_LETTO==
Pickle si siede sulla sponda del letto e sbadiglia.
+[Apri la credenza] -> CREDENZA
+[Cerca del cibo fuori] -> ESCI_DI_CASA

==CREDENZA==
Pickle apre la credenza e nota che non ha più nulla da mangiare. Clicca sugli oggetti per analizzarli.
->ESCI_DI_CASA
 

->DONE



==ESCI_DI_CASA==
In alto su uno scaffale, Pickle nota un grandissimo cupcake luccicante, ma non sa come arrivare così in alto, serve qualcosa che possa aiutarla. Cosa vuoi analizzare?
*[Microonde]->MICROONDE
*[Lavandino]->LAVANDINO
*[Piano cottura]->PIANO_COTTURA
*[Fiammiferi]->FIAMMIFERI

==MICROONDE==
Pickle entra nel microonde, ma accidentalmente la porta si chiude improvvisamente e Pickle rimane chiusa all'interno.
->END

==LAVANDINO==
Pickle cerca qualcosa sul fondo del lavandino ma non riesce a a vedere nulla a causa della schiuma.
->ESCI_DI_CASA

==PIANO_COTTURA==

==FIAMMIFERI==
Pickle si dirige verso i fiammiferi correndo.Utilizza un fiammifero per far bollire l'acqua nella pentola.



    -> END
