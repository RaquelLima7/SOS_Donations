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
puts "Instituions destroyed!" if Instituition.destroy_all
puts "Destroying Users.."
puts "Users destroyed!" if User.destroy_all

puts "Generating seed..."

CATEGORIES = ["Coronavirus", "Hunger and Poverty", "Health", "Eldery", "Children", "Education", "Emergency Situations"]

User.create(
  email: "sobrinho@gmail.com",
  first_name: "João",
  last_name: "Batista Sobrinho",
  address: "Rua Bela, 795, São Cristóvão, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-30.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Instituition.create(
    user_id: User.last.id,
    name: "Associação de Comunidades de Vida Mariana - ACVM",
    cnpj: "40.228.629/0001-08",
    address: User.last.address,
    description: "As comunidades que integram a ACVM se reúnem periodicamente com o propósito de crescer espiritualmente através da oração e vivenciar a dimensão comunitária baseada na partilha de vida. Porém, para além da vivência comunitária, toda a associação convive e se articula de forma integrada no intuito de se lançar na vida missionária em ações de evangelização e de cunho social.
      Realizamos obras sociais periodicamente, como o Jantar comunitário todas as quartas-feiras, onde os Moradores de Rua são bem vindos para ter uma refeição a mesa.")
      Campaign.create(
        instituition_id: Instituition.last.id,
        category: CATEGORIES[1],
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
  Instituition.create(
    user_id: User.last.id,
    name: "Fundação EVA Nossa Terra",
    cnpj: "34.101.586/0001-00",
    address: User.last.address,
    description: "A Fundação Sara nasceu da convivência que os pais, parentes e amigos da pequena Sara tiveram com a dor e a esperança durante seu tratamento de leucemia, em 1996/1997. O transplante muito caro fez com que amigos e colegas de trabalho se unissem e promovessem a campanha “Ajude a Salvar a Vida da Sara”. Formou-se uma corrente de amor, numa demonstração de solidariedade jamais igualável.")
      Campaign.create(
        instituition_id: Instituition.last.id,
        category: CATEGORIES[5],
        name: "Dia Internacional do combate ao cancer infatil",
        description: "Estamos precisando de voluntários para uma ação no Bairro de Copacabana, em que será montado um quiosque na Praia onde haverá um serviço conscientização da população na luta contra o Cancer Infatil",
        total: 3)
      Campaign.create(
        instituition_id: Instituition.last.id,
        category: CATEGORIES[4],
        name: "Dia de visita às crianças com cancer",
        description: "Estamos precisando de voluntários para levar alegria e afeto para as crianças internadas com cancer no Hospital do INCA",
        total: 4)
      Campaign.create(
        instituition_id: Instituition.last.id,
        category: CATEGORIES[2],
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
  Instituition.create(
    user_id: User.last.id,
    name: "Associação de Amigos da Mangueira",
    cnpj: "95.083.615/0001-35",
    address: User.last.address,
    description: "A Associação de Amigos da Mangueira realiza ações sociais e de cidadania na comunidade da Mangueira/RJ")
      Campaign.create(
        instituition_id: Instituition.last.id,
        category: CATEGORIES[0],
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
  Instituition.create(
    user_id: User.last.id,
    name: "Pastoral da Saúde da Igreja Cristo Redentor",
    cnpj: "83.967.474/0001-34",
    address: User.last.address,
    description: "Somos uma Pastoral da Saúde, vinculada a Igreja Cristo Redentor e realizamos ações de acompanhamento de idosos em abrigos.")
      Campaign.create(
        instituition_id: Instituition.last.id,
        category: CATEGORIES[0],
        name: "Visitação a Idosos do Abrigo Cristo Redentor",
        description: "Estamos precisando de voluntários para levar alegria e solidariedade para os idosos que vivem no abrigo Cristo Redentor.",
        total: 2)


# https://www.fundacaosara.org.br/  - inspiração para a fundação EVA.

puts "End of Seed!"
