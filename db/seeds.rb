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

projects = [{:name => 'Project 1', :user_id => '1'},
         {:name => 'Project 2', :user_id => '1'},
         {:name => 'Project 3',:user_id => '1'},
         {:name => 'Project 4', :user_id => '1'},
         {:name => 'Project 5', :user_id => '1'},
         {:name => 'Project 6', :user_id => '3'},
         {:name => 'Project 7', :user_id => '4'},
         {:name => 'Project 8', :user_id => '6'},
         {:name => 'Project 9', :user_id => '5'},
         {:name => 'Project 10', :user_id => '5'}
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
