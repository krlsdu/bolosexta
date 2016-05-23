# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bolo_list=['ABACAXI',
           'BANANA', 'COCO', 'FORMIGUEIRO',
           'FUBA CREMOSO',
           'FUBA ERVA DOCE',
           'FUBA GOIABADA',
           'GOIABADA',
           'IOGURTE',
           'LARANJA',
           'LIMÃO',
           'MAÇÃ',
           'MANDIOCA',
           'MILHO',
           'PRESTIGIO',
           'PUDIM PADARIA'
]
torta_list=['ATUM',
            'CARNE',
            'FRANGO',
            'LEGUMES',
            'PALMITO'
]

bolo_list.each do |bolo|
  Cake.create(nome:bolo)
end
torta_list.each do |torta|
  Cake.create(nome:torta)
end
