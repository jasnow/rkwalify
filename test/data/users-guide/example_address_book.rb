require_relative 'address_book'
require 'yaml'
require 'pp'
require 'date'

str = File.read('test/data/users-guide/address_book.yaml')
ydoc = YAML.load(str, permitted_classes: [Date])
addrbook = AddressBook.new(ydoc)

pp addrbook.groups
pp addrbook.people
