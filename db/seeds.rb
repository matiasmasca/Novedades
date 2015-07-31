# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [{:nombre => 'DeRoche',:email => 'don@deroche.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
    	  {:nombre => 'Gregorio hobbit',:email => 'dostorres@hobbit.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'false'},
     	  {:nombre => 'Jazmin Itaca',:email => 'examples@itaca.mx',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'false'},
     	  {:nombre => 'Ramon To',:email => 'contacto@terciar.ga',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
     	  {:nombre => 'Micaëla',:email => 'unemail2@go.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
     	  {:nombre => 'Luca ST',:email => 'simon@terciar.ga',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
     	  {:nombre => 'Pedro',:email => 'unemail4@go.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
     	  {:nombre => 'Pablo',:email => 'unemail5@go.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
        {:nombre => 'Paulo',:email => 'jurado1@go.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
        {:nombre => 'Gregory',:email => 'jurado2@go.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
        {:nombre => 'Yisela',:email => 'jurado3@go.com',:password => "clave12345", :password_confirmation => "clave12345", :tipo => '2', :habilitado => 'true'},
        {:nombre => 'Dr. Pepito',:email => 'admin@estudio.com', :password => "clave12345", :password_confirmation => "clave12345", :tipo => '1', :habilitado => 'true'}
  	 ]

users.each do |user|
   User.create!(user)
end

projects = [{:name => 'DeRoche c/ Ramon s/ indemnización por despido EXP N°111999',:judicial_record_number => 'EXP N°111999', :court => '1', :customer_id => '1'},
         {:name => 'DeRoche c/ Gregory s/ indemnización por despido EXP N°112000',:judicial_record_number => 'EXP N°112000', :court => '1', :customer_id => '1'},
         {:name => 'DeRoche c/ Micaëla s/ indemnización por acoso sexual EXP N°333444',:judicial_record_number => 'EXP N°333444',:court => '1', :customer_id => '1'},
         {:name => 'DeRoche c/ Codito s/ falta de pago honorarios EXP N°333445',:judicial_record_number => 'EXP N°333445', :court => '1', :customer_id => '1'},
         {:name => 'DeRoche c/ SuMujer s/ divorsio EXP N°112000',:judicial_record_number => 'EXP N°112000', :court => '1', :customer_id => '1'},
         {:name => 'Gregorio c/ Ramon s/ indemnización por despido EXP N°0976',:judicial_record_number => 'EXP N°0976', :court => '1', :customer_id => '3'},
         {:name => 'Ramon c/ Gregory s/ indemnización por despido EXP N°17458',:judicial_record_number => 'EXP N°17458', :court => '1', :customer_id => '4'},
         {:name => 'Luca c/ Micaëla s/ indemnización por acoso sexual EXP N°89775',:judicial_record_number => 'EXP N°89775', :court => '1', :customer_id => '6'},
         {:name => 'Micaëla c/ Codito s/ falta de pago honorarios EXP N°49485',:judicial_record_number => 'EXP N°49485', :court => '1', :customer_id => '5'},
         {:name => 'Micaëla c/ SuMujer s/ divorsio EXP N°112002',:judicial_record_number => 'EXP N°112002', :court => '1', :customer_id => '5'}
  	 ]

projects.each do |project|
   Project.create!(project)
end

news = [{:project_id => '1', :title => 'Pedido de X',:date =>'3-05-2015', message: 'se presento tal cosa', read_mark: true},
        {:project_id => '1', :title => 'Contra demanda',:date =>'10-05-2015', message: 'se presento tal otra', read_mark: false},
        {:project_id => '1', :title => 'Accion punitoria',:date =>'20-05-2015', message: 'se presento tal otra otra', read_mark: false},
        {:project_id => '1', :title => 'pedido a juez',:date =>'30-05-2015', message: 'se presento tal otra otra otra', read_mark: false},
        {:project_id => '1', :title => 'Resolución del Juez',:date =>'10-06-2015', message: 'El juez resolvio tal y cual cosa', read_mark: false},
        {:project_id => '2', :title => 'Pedido de X',:date =>'4-05-2015', message: 'se presento tal cosa', read_mark: true},
        {:project_id => '2', :title => 'Contra demanda',:date =>'11-05-2015', message: 'se presento tal otra', read_mark: false},
        {:project_id => '2', :title => 'Accion punitoria',:date =>'21-05-2015', message: 'se presento tal otra otra', read_mark: false},
        {:project_id => '2', :title => 'pedido a juez',:date =>'31-05-2015', message: 'se presento tal otra otra otra', read_mark: false},
        {:project_id => '2', :title => 'Resolución del Juez',:date =>'11-06-2015', message: 'El juez resolvio tal y cual cosa', read_mark: false}
  	 ]

news.each do |notification|
   Notification.create!(notification)
end
