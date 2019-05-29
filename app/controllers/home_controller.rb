class HomeController < ApplicationController

	def index
		@title = "Piccoli Diavoli 3 Ruote - PD3R"
		@description = "Piccoli Diavoli 3 Ruote è una ASD presente nel circuito paraciclistico, che ogni anno organizza la gara nel tempio più importante del mondo, il Circuito di Monza"
	end

	def team
		@title = "Piccoli Diavoli 3 Ruote - Team"
		@description = "Il Piccoli Diavoli 3 Ruote ruote è composta da fortissimi atleti"
	end

	def alessandro
		@title = "Piccoli Diavoli 3 Ruote - Alessandro Villa"
		@description = "Alessandro Villa, detto il boss, creatore della squadra"
	end

	def andrea
		@title = "Piccoli Diavoli 3 Ruote - Andrea Villa"
		@description = "Andrea Villa, detto mini Zanardi, il più giovane atleta dei piccoli diavoli 3 ruote è composta da fortissimi atleti"
	end

	def federico
		@title = "Piccoli Diavoli 3 Ruote - Federico Villa"
		@description = "Federico Villa, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

	def iago
		@title = "Piccoli Diavoli 3 Ruote - Iago Bernardi"
		@description = "Iago Bernardi, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

	def franco
		@title = "Piccoli Diavoli 3 Ruote - Franco Manusé"
		@description = "Franco Manusé, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

	def tempio
		@title = "Tempio della velocità, Circuito di Monza -  Piccoli Diavoli 3 Ruote"
		@description = "Monza, il tempio della velocità. Ogni anno si disputa la gara di handbike più bella del mondo, che si disputa nel percorso più entusiasmante del mondo"
	end

end
