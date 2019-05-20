class HomeController < ApplicationController

	def index
		@title = "Piccoli Diavoli"
		@description = "Piccoli Diavoli 3 Ruote è una ASD presente nel circuito paraciclistico"
	end

	def team
		@title = "Piccoli Diavoli - Team"
		@description = "Il Piccoli Diavoli 3 Ruote ruote è composta da fortissimi atleti"
	end

	def alessandro
		@title = "Piccoli Diavoli - Alessandro Villa"
		@description = "Alessandro Villa, detto il boss, creatore della associazione"
	end

	def andrea
		@title = "Piccoli Diavoli - Andrea Villa"
		@description = "Andrea Villa, detto mini Zanardi, il più giovane atleta dei piccoli diavoli 3 ruote è composta da fortissimi atleti"
	end

	def federico
		@title = "Piccoli Diavoli - Federico Villa"
		@description = "Federico Villa, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

	def iago
		@title = "Piccoli Diavoli - Iago Bernardi"
		@description = "Iago Bernardi, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

	def franco
		@title = "Piccoli Diavoli - Franco Manusé"
		@description = "Franco Manusé, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

	def tempio
		@title = "Monza,Tempio della velocità - Piccoli Diavoli"
		@description = "Iago Bernardi, uno dei migliori atleti della Piccoli Diavoli 3 Route"
	end

end
