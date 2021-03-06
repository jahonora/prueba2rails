# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
img1 = File.open(File.join(Rails.root, 'public/huaso1.jpg'))
img2 = File.open(File.join(Rails.root, 'public/huaso2.jpg'))
img3 = File.open(File.join(Rails.root, 'public/huaso3.jpg'))

User.create([{ name: 'user1', email: 'user1@gmail.com', password: '123456', avatar: img1 }, 
			 { name: 'user2', email: 'user2@gmail.com', password: '123456', avatar: img2 },
			 { name: 'user3', email: 'user3@gmail.com', password: '123456', avatar: img3 },
			 { name: 'user4', email: 'user4@gmail.com', password: '123456', avatar: img3 },
			 { name: 'user5', email: 'user5@gmail.com', password: '123456', avatar: img2 },
			 { name: 'user6', email: 'user6@gmail.com', password: '123456', avatar: img2 },
			 { name: 'user7', email: 'user7@gmail.com', password: '123456', avatar: img2 },
			 { name: 'user8', email: 'user8@gmail.com', password: '123456', avatar: img2 },
			 { name: 'user9', email: 'user9@gmail.com', password: '123456', avatar: img2 },
			 { name: 'user10', email: 'user10@gmail.com', password: '123456', avatar: img2 },
			])


Task.create([{ title: 'Ir a una fonda', image: 'http://www.fmbox.cl/wp-content/uploads/2013/08/fondas_cigarro.jpg' },
			 { title: 'Bailar cueca', image: 'http://imgcf.ecn.cl/600/9a/9a974147453b05a1163847572dfcb0158fed3459.bin.jpg' },
			 { title: 'Jugar una pichanga', image: 'https://as01.epimg.net/epik/imagenes/2017/08/23/portada/1503507948_317861_1503508047_noticia_normal.jpg' },
			 { title: 'Tomarse un terremoto', image: 'http://mdhiro.com/wp-content/uploads/2015/09/2015_09_19-Terremoto-2.jpg' },
			 { title: 'Comer una empanada', image: 'http://dko071o7f939f.cloudfront.net/sites/elrancahuaso.cl/files/imagecache/380x285/imagen_noticia/empanadas_2.jpg' },
			 { title: 'Hacer un asado', image: 'https://www.verpais.com/fotos_originales/5/5/8/00025558.jpg' },
			 { title: 'Encumbrar un volantin', image: 'http://www.municipalidadpucon.cl/wp-content/uploads/2017/09/FOTO-concurso-volant--n.jpg' },
			 { title: 'Jugar rayuela', image: 'http://www.semanariolocal.cl/wp-content/uploads/2014/09/rayuela1.jpg' },
			 { title: 'Jugar carreras de saco', image: 'https://www.munilosvilos.cl/wp-content/gallery/18-de-septiembre/18-septiembre8.jpg' },
			 { title: 'Jugar al trompo', image: 'http://i56.tinypic.com/2h38rx3.jpg' },
			 { title: 'Tomar chicha', image: 'http://d1orjtig02wsck.cloudfront.net/sites/elquehaydecierto.cl/files/imagecache/380x285/imagen_noticia/chicha.jpg' },
			])

User.all.each do |u|
	Task.all.each do |t|
		u.tasks << t if Random.rand(0..2) == 1
	end
end
