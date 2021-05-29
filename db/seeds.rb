# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Campaign.."
puts "Campaigns destroyed!" if Campaign.destroy_all
puts "Destroying Instituions..."
puts "Instituions destroyed!" if Institution.destroy_all
puts "Destroying Users.."
puts "Users destroyed!" if User.destroy_all

puts "Generating seed..."

CATEGORIES = ["Coronavirus", "Hunger and Poverty", "Health", "Eldery", "Children", "Education", "Emergency Situations"]
TYPES = ["Fundrising", "Donation", "Volunteer"]

User.create(
  email: "sobrinho@gmail.com",
  first_name: "João",
  last_name: "Batista Sobrinho",
  address: "Rua Bela, 795, São Cristóvão, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-30.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Associação de Comunidades de Vida Mariana - ACVM",
    cnpj: "4.228.629/0001-08",
    address: User.last.address,
    description: "As comunidades que integram a ACVM se reúnem periodicamente com o propósito de crescer espiritualmente através da oração e vivenciar a dimensão comunitária baseada na partilha de vida. Porém, para além da vivência comunitária, toda a associação convive e se articula de forma integrada no intuito de se lançar na vida missionária em ações de evangelização e de cunho social.
      Realizamos obras sociais periodicamente, como o Jantar comunitário todas as quartas-feiras, onde os Moradores de Rua são bem vindos para ter uma refeição a mesa.")
      Campa0ign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[0],
        name: "Jantar Comunitário",
        description: "Estamos arrecadando fundos para a realização do próximo Jantar Comunitário, que é um evento onde são recebidos 200 moradores.  Muitos somente tem essa oportunidade para ter uma refeição digna a mesa.",
        total: 1200)

User.create(
  email: "eva@gmail.com",
  first_name: "Eva",
  last_name: "Rodrigues Miranda",
  address: "Rua Pompeu Loureiro, 116, Copacabana, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-18.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Fundação EVA Nossa Terra",
    cnpj: "34.101.586/0001-00",
    address: User.last.address,
    description: "A Fundação Sara nasceu da convivência que os pais, parentes e amigos da pequena Sara tiveram com a dor e a esperança durante seu tratamento de leucemia, em 1996/1997. O transplante muito caro fez com que amigos e colegas de trabalho se unissem e promovessem a campanha “Ajude a Salvar a Vida da Sara”. Formou-se uma corrente de amor, numa demonstração de solidariedade jamais igualável.")
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[5],
        type_donation: TYPES[2],
        name: "Dia Internacional do combate ao cancer infatil",
        description: "Estamos precisando de voluntários para uma ação no Bairro de Copacabana, em que será montado um quiosque na Praia onde haverá um serviço conscientização da população na luta contra o Cancer Infatil",
        total: 3)
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[4],
        type_donation: TYPES[2],
        name: "Dia de visita às crianças com cancer",
        description: "Estamos precisando de voluntários para levar alegria e afeto para as crianças internadas com cancer no Hospital do INCA",
        total: 4)
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[2],
        type_donation: TYPES[0],
        name: "Ajuda a famílias com crianças com Cancer",
        description: "Estamos arrecadando fundos para ajudar famílias de 8 crianças em tratamento de cancer",
        total: 3000)

User.create(
  email: "patricia@gmail.com",
  first_name: "Patricia",
  last_name: "Galvão",
  address: "Rua São Luiz Gonzaga, 1173, São Cristóvão, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-9.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Associação de Amigos da Mangueira",
    cnpj: "95.083.615/0001-35",
    address: User.last.address,
    description: "A Associação de Amigos da Mangueira realiza ações sociais e de cidadania na comunidade da Mangueira/RJ")
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[0],
        type_donation: TYPES[1],
        name: "Fornecimento de Máscaras PFF2",
        description: "Estamos arrecadando doações de caixas de máscaras PFF2 para distribuição na comunidade da mangueira.   Também será feito um trabalho de conscientização para o correto uso, a fim de prevenir a transmissão do Coronavirus",
        total: 2000)


User.create(
  email: "catarina@gmail.com",
  first_name: "Catarina",
  last_name: "Eleutério",
  address: "Rua Darke de Mattos, 230, Higienópolis, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-14.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Pastoral da Saúde da Igreja Cristo Redentor",
    cnpj: "83.967.474/0001-34",
    address: User.last.address,
    description: "Somos uma Pastoral da Saúde, vinculada a Igreja Cristo Redentor e realizamos ações de acompanhamento de idosos em abrigos.")
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[3],
        type_donation: TYPES[2],
        name: "Visitação a Idosos do Abrigo Cristo Redentor",
        description: "Estamos precisando de voluntários para levar alegria e solidariedade para os idosos que vivem no abrigo Cristo Redentor.",
        total: 2)
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[3],
        type_donation: TYPES[0],
        name: "Enxoval para os idosos",
        description: "Estamos arrecadando fundos para a compra e distribuição de enxovais de roupas de cama para os idosos do Abrigo Cristo Redentor",
        total: 8000)

User.create(
  email: "marcos@gmail.com",
  first_name: "Marcos",
  last_name: "Cardoso",
  address: "Estrada Adhemar Bebiano, 1401 , Inhaúma, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-2.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Grupo Jovem da Igreja São Thiago",
    cnpj: "03.569.880/0001-00",
    address: User.last.address,
    description: "Somos um grupo de jovens, vinculados a Igreja São Thiago de Inhaúma e realizamos ações sociais nas comunidades da região.")
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[1],
        name: "Campanha Inverno Solidário",
        description: "Estamos recebendo doações de roupas e cobertores para doação a desalentados na comunidade da Nova Brasília.  Doação são recebidas na Igreja de São Thiago.",
        total: 50)

User.create(
  email: "leona@gmail.com",
  first_name: "Leona",
  last_name: "Araújo",
  address: "Estrada Adhemar Bebiano, 2500, Inhaúma, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-5.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Associação de Moradores da Matinha",
    cnpj: "39.672.730/0001-74",
    address: User.last.address,
    description: "Somos uma associação de moradores e realizamos ações sociais em nossa comunidade.")
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[0],
        type_donation: TYPES[0],
        name: "Cestas Básicas COVID-19",
        description: "Estamos arrecadando fundos para a compra e distribuição de cestas básicas às famílias que perderam seu sustento durante a pandemia de Coronavirus.",
        total: 5000)

User.create(
  email: "yasmin@gmail.com",
  first_name: "Yasmin",
  last_name: "Santana",
  address: "Rua Arquias Cordeiro, 31, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-35.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Educandário João Paulo II",
    cnpj: "42.991.517/0001-30",
    address: User.last.address,
    description: "Somos uma Fundação que abriga e tutela crianças órfãs desde 1952.")
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[0],
        type_donation: TYPES[0],
        name: "Adote Sara!",
        description: "Sara tem apenas 3 anos e foi recebida em nosso Educandário.  Ajude-a contribuindo com fundos para custear compra de materiais escolares, roupas e alimentos para serem utilizados durante o próximo trimestre",
        total: 1800)


# https://www.fundacaosara.org.br/  - inspiração para a fundação EVA.

puts "End of Seed!"
