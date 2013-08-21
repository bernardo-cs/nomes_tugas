# coding: utf-8
require 'nokogiri'
require 'open-uri'
require 'yaml'

class NomesTugas
	@girls = []
	@boys = []

	def self.root
    File.expand_path '../..', __FILE__
  end
  def self.conf
    File.join root, 'conf'
  end
	def self.serialize_names
		boys_file = File.new(File.join(conf, 'boys.yaml'), "w")
		girls_file = File.new(File.join(conf, 'girls.yaml'), "w")
		get_girls_remote()
		get_boys_remote()
		boys_file.write(@boys.to_yaml)
		girls_file.write(@girls.to_yaml)
		boys_file.close
		girls_file.close
	end
	def self.get_girls_remote
		doc = Nokogiri::HTML(open('http://nomesportugueses.blogspot.pt/p/nomes-femininos-z.html'))
		print_girls = false
		doc.css('ul li a').each do |li|
			if li.to_s.match("href=\"http:\/\/nomesportugueses.blogspot.pt\/search\/label\/")
				if li.content == "Variações de Diogo"
					print_girls = false
				end
				if print_girls == true
					@girls << li.content
				end
				if li.content == "Óscar"
					print_girls = true
				end
			end
			@girls.uniq!
		end
	end
	def self.get_boys_remote
		doc = Nokogiri::HTML(open('http://nomesportugueses.blogspot.pt/p/nomes-masculinos-z.html'))
		print_boys = false
		doc.css('ul li a').each do |li|
			if li.to_s.match("href=\"http:\/\/nomesportugueses.blogspot.pt\/search\/label\/")
				if li.content == "Óscar"
					print_boys = false
				end
				if print_boys == true
					@boys << li.content
				end
				if li.content == "Percepção dos nomes"
					print_boys = true
				end
			end
			@boys.uniq!
		end
	end
	def self.load_names
		@boys = YAML.load_file(File.join(conf, 'boys.yaml'))
		@girls = YAML.load_file(File.join(conf, 'girls.yaml'))
	end
	def self.identify_gender name
		#get_boys_remote()
		#get_girls_remote()
		#serialize_names()
		load_names()

		if @girls.include? name
			"female"
		elsif @boys.include? name
			"male"
		else
			"not_sure"
		end
	end
end

