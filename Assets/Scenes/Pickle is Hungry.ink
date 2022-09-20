VAR Vita = 3 

Ore 3 del mattino. 
# sveglia #wait
Pickle si sveglia nel cuore della notte a causa del brontolio del suo stomaco. 
# sbadiglio # wait
Pickle si siede sulla sponda del letto ed inizia a sbadigliare. Cosa vuoi fare?
+[Apri la credenza] 
 ->Analizza
+[Esci di casa] 
 ->FuoriCasa

===Analizza===
# analizza
{Analizza.Bicchiere or Analizza.Scatola or Analizza.Patatine: Cosa vuoi analizzare? |Pickle apre la credenza e nota che non ha più nulla da mangiare. Puoi cliccare sugli oggetti per analizzarli.} 
# wait
->END

=Bicchiere
 Un bicchiere con rimasugli di Cola è rimasto all'interno della credenza. Chissà da quanto tempo è lì.
 ->Analizza
 
 
=Scatola
Una volta era piena di merendine. Pickle le avrà già mangiate tutte.
->Analizza

=Patatine
Il pacco di patatine è vuoto. Pickle non ha pulito le briciole. Che folletta disordinata!
->Analizza

===FuoriCasa===
Pickle si affaccia alla porta della credenza e guarda in basso. 
# wait 
Si lancia giù per atterrare sul microonde della grande cucina. # atterrata
Su una mensola in alto nota un gustosissimo cupcake rosa. 
# wait
->Cucina

 ==Cucina==
 # cerca
{GameOver.Lavandino or GameOver.Formica: Hai perso un cuore. Cosa vuoi analizzare?}
{Interruttore or Buco or Cupcake: Cosa vuoi analizzare? | Pickle ha tanta fame, ma non sa come arrivare fin lassù. Deve cercare nella cucina qualcosa che la possa aiutare.} 
{Credenza.NoArma: Cerca un'arma per sconfiggere la temibile formica.} 
    # wait
    ->END

=Interruttore
Questo interruttore non funziona, sembra non sia attaccata la corrente.
->Cucina

=Buco
C'è un buco enorme nella credenza! Chissa se è possibile struttarlo per entrarci.
->Cucina

=Cupcake
Sulla mensola più alta vi è un grande cupcake luccicante.
->Cucina

=Microonde
# microonde
Pickle cerca qualcosa all'interno del mircroonde.
All'improvviso la porta del microonde si chiude intrappolando Pickle all'interno. #wait
->Cucina

=Lavandino
Pickle
{GameOver.Lavandino or Credenza: -> Stuzzicandenti| si avvicina al lavandino pieno di schiuma e si mette in punta di piedi per riuscire a guardare infondo ad esso. ->GameOver.Lavandino}


=Fiammiferi
Pickle si accorge immediatamente di una scatola di fiammiferi che possa fare al caso suo.
# fornelli # wait
Utilizza il fiammifero per accendere i fornelli e far bollire l'acqua.
# pentola # wait
Pickle sale fulla pentola e frutta il vapore per salire in alto sulla mensola. 
# wait
->Credenza


=Stuzzicandenti
# lavandino2 
si sporge {GameOver:nuovamente facendo attenzione} lungo il lavandino e nota uno strano oggetto galleggiare. 
# stuzzicadenti # wait
E' uno stuzzicadenti! Adesso Pickle potrà difendersi contro i nemici.
{Credenza: ->Credenza|->Fiammiferi}


==Credenza==
{Cucina.Stuzzicandenti: Sulla sinistra una formica minacciosa la attende.->CombattiFormica|Pickle riesce ad entrare nella credenza attraverso il foro. Sulla sinistra una formica minacciosa la attende. Non hai un'arma, cosa vuoi fare? -> NoArma}


=NoArma
+ [Combatti] 
  ->Cucina



=CombattiFormica
Attacchi.
{Cucina.Stuzzicandenti: Con il tuo stuzzicadenti accuminato attacchi la formica. Che dopo un colpo si accascia al suolo. ->PresaOn|La formica ti attacca con le sue antenne accuminate. ->GameOver.Formica}
# wait
->END

=PresaOn
# attacco
Dopo aver ucciso la formica, Pickle trova una presa elettrica in un angolo della credenza.
+ [Attacca la presa]
  ->LuceOn
  

==LuceOn== 
->END

==GameOver== 
->END

=Lavandino
# lavandino
~Vita = Vita -1
Pickle non fa abbastanza attenzione e scivola dentro il lavandino pieno di schiuma. 
# wait
->Cucina

=Formica
# death
~Vita = Vita -1
Pickle è sfinita. La formica ha avuto la meglio.
# wait
->END




