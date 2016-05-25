# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bolo_list=['Abacaxi',
           'Banana', 'Coco', 'Formigueiro',
           'Fuba Cremoso',
           'Fuba Erva Doce',
           'Fuba Goiabada',
           'Goiabada',
           'Iogurte',
           'Laranja',
           'Limão',
           'Maçã',
           'Mandioca',
           'Milho',
           'Prestigio',
           'Pudim Padaria'
]
torta_list=['Atum',
            'Carne',
            'Frango',
            'Legumes',
            'Palmito'
]

people_list=['Aline',
              'Altair',
              'Claudio',
              'Coronel',
              'Daniel',
              'Flavio',
              'James',
              'Jorge',
              'Laercio',
              'Leonardo',
              'Monica',
              'Roberta',
              'Santana'
]

bolo_list.each do |bolo|
  Cake.create(nome:bolo)
end
torta_list.each do |torta|
  Cake.create(nome:torta)
end
people_list.each do |person|
  Person.create(nome:person)
end
