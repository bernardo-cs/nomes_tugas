# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'nomes_tugas'
  s.version     = '0.0.3'
  s.date        = '2013-08-21'
  s.summary     = "Gem that tries to guess the gender of a given portuguese name"
  s.description = "Loads two files with girls and boys names respectivly into memory, and seraches them in order to determine the gender of a portuguese name"
  s.authors     = ["Bernardo Simoes"]
  s.email       = 'bersimoes@gmail.com'
  s.files       = ["lib/nomes_tugas.rb","conf/boys.yaml","conf/girls.yaml"]
  s.homepage    =
    'http://rubygems.org/gems/nomes_tugas'
  s.license       = 'MIT'
end