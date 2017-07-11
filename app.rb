require "sinatra"
require "sinatra/reloader"
require "pg"
require "./lib/animal"
require "./lib//breed"
require "./lib/customer"
also_reload("lib/**/*.rb")

DB=PG.connect({:dbname => "animal_shelter"})
