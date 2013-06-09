module Nou
	module Commands
		class Logs
			def initialize
				if system('source ~/.nou')

				else
					puts "Please, create a ~/.nou file"
				end
			end

			def call(args, options)
				p ENV['SERVER']
			end	
		end

		class Meteo
			def call(args, options)
				system 'open http://meteoub.equip9.org/'
			end
		end

		class While
			def call(args, options)
				command = args[0] || "du -hs *"
				IO.popen("while(true); do #{command}; sleep 1; clear; done") do |io|
    			io.each do |line|
      			puts line
    			end
  			end
			end
		end
	end
end