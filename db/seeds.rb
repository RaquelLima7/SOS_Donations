# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "pry-byebug"

puts "Destroying Reviews.."
puts "Reviews destroyed!" if Review.destroy_all
puts "Destroying Accontabilities.."
puts "Accontabilities destroyed!" if Accountability.destroy_all
puts "Destroying Donations.."
puts "Donations destroyed!" if Donation.destroy_all
puts "Destroying Campaigns.."
puts "Campaigns destroyed!" if Campaign.destroy_all
puts "Destroying Instituions..."
puts "Institutions destroyed!" if Institution.destroy_all
puts "Destroying Users.."
puts "Users destroyed!" if User.destroy_all

puts "Generating seed..."

CATEGORIES = ["Coronavirus", "Hunger and Poverty", "Health", "Eldery", "Children", "Education", "Emergency Situations", "Animal causes"]
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
    description: "The ACVM communities meet periodically with the purpose of growing spiritually through prayer and experiencing the community dimension based on sharing life. However, in addition to community experience, the entire association lives and articulates itself in an integrated manner in order to launch itself into missionary life in actions of evangelization and of a social nature.
      We periodically carry out social works, such as the Community Dinner every Wednesday, where homeless people are welcome to have a meal at the table.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/acvm.png'), filename: 'institution.png', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[0],
        name: "Communitary Dinner",
        description: "We are raising funds for the next Community Dinner, which is an event where 200 residents are received. Many only have this opportunity to have a decent meal at the table.",
        total: 1200,
        raised: 0)
      Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/jantar-solidario.jpg'), filename: 'jantar-solidario.jpg', content_type: 'image/png')

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
    description: "The Fundação Sara was born from the coexistence that the parents, relatives and friends of little Sara had with the pain and hope during her treatment for leukemia, in 1996/1997. The very expensive transplant made friends and co-workers come together and promote the “Help Save Sara's Life” campaign. A current of love was formed, in a demonstration of solidarity that was never equaled.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/sara.jpeg'), filename: 'sara.jpeg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[5],
        type_donation: TYPES[2],
        name: "International Day to Combat Childhood Cancer",
        description: "We are in need of volunteers for an action in the Copacabana neighborhood, where a kiosk will be set up in Praia where there will be a public awareness service in the fight against Childhood Cancer",
        total: 3,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/conscientização-praia.jpg'), filename: 'conscientização-praia.jpg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[4],
        type_donation: TYPES[2],
        name: "Day to visit children with cancer",
        description: "We are in need of volunteers to bring joy and affection to children hospitalized with cancer at the INCA Hospital",
        total: 4,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/visita-cancer.jpg'), filename: 'visita-cancer.jpg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[2],
        type_donation: TYPES[0],
        name: "Helping Families having Children with Cancer",
        description: "We are raising funds to help families of 8 children in cancer treatment",
        total: 3000,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/crianças-cancer-fundrising.jpg'), filename: 'crianças-cancer-fundrising.jpg', content_type: 'image/png')

User.create(
  email: "patricia@gmail.com",
  first_name: "Patricia",
  last_name: "Galvão",
  address: "Rua São Luiz Gonzaga, 1173, São Cristóvão, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-22.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Associação de Amigos da Mangueira",
    cnpj: "95.083.615/0001-35",
    address: User.last.address,
    description: "The Association of Friends of Mangueira carries out social and citizenship actions in the community of Mangueira/RJ")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/sos-favela.png'), filename: 'sos-favela.png', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[0],
        type_donation: TYPES[1],
        name: "Fornecimento de Máscaras PFF2",
        description: "We are raising donations of PFF2 mask boxes for distribution to the hose community. There will also be an awareness work for the correct use, in order to prevent the transmission of Coronavirus",
        total: 2000,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/máscaras-pff2.jpeg'), filename: 'máscaras-pff2.jpeg', content_type: 'image/png')


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
    description: "We are a Ministry of Health, linked to the Church of Christ the Redeemer and we carry out accompaniment actions for the elderly in shelters.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/cristo.jpeg'), filename: 'cristo.jpeg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[3],
        type_donation: TYPES[2],
        name: "Visitation to the Elderly of the Christ the Redeemer Shelter",
        description: "We are in need of volunteers to bring joy and solidarity to the elderly who live in the Cristo Redentor shelter.",
        total: 2,
        raised: 0)
      Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/visita-idosos.jpeg'), filename: 'visita-idosos.jpeg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[3],
        type_donation: TYPES[0],
        name: "Trousseau for the elderly",
        description: "We are raising funds for the purchase and distribution of bedding sets for the elderly at Abrigo Cristo Redentor",
        total: 8000,
        raised: 0)
      Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/enxoval-idosos.jpeg'), filename: 'enxoval-idosos.jpeg', content_type: 'image/png')

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
    description: "We are a group of young people, linked to Igreja São Thiago de Inhaúma and carry out social actions in communities in the region.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/são-thiago.jpg'), filename: 'são-thiago.jpg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[1],
        name: "Solidarity Winter Campaign",
        description: "We are receiving donations of clothes and blankets to be donated to despondent people in the Nova Brasília community. Donations are received at the Church of São Thiago.",
        total: 50,
        raised: 0)
      Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/agasalhos.jpg'), filename: 'agasalhos.jpg', content_type: 'image/png')

User.create(
  email: "leona@gmail.com",
  first_name: "Leona",
  last_name: "Araújo",
  address: "Rua do Bispo, 121, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-5.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Associação de Moradores do Rio Comprido",
    cnpj: "39.672.730/0001-74",
    address: User.last.address,
    description: "We are an association of residents and carry out social actions in our community.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/riocomprido.jpeg'), filename: 'riocomprido.jpeg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[0],
        type_donation: TYPES[1],
        name: "COVID-19 Food Baskets",
        description: "We are raising funds to purchase and distribute food baskets to families who lost their livelihoods during the Coronavirus pandemic.",
        total: 5000,
        raised: 0)
      Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/cestas-basicas.png'), filename: 'cestas-basicas.png', content_type: 'image/png')

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
    description: "We are a Foundation that shelters and protects orphaned children since 1952.")
    Institution.last.photos.attach(io: File.open('app/assets/images/institutions/educandário.jpg'), filename: 'educandário.jpg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[4],
        type_donation: TYPES[0],
        name: "Adopt Fabio!",
        description: "Fábio is 9 years old and has been under our care since he was 2 years old. Help her by contributing funds to fund purchases of school supplies, clothing, and food to be used during the next quarter.",
        total: 2000,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/fabio.jpg'), filename: 'fabio.jpg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[4],
        type_donation: TYPES[0],
        name: "Adopt Sara!",
        description: "Sara is only 3 years old and was received in our Educandário. Help her by contributing funds to fund purchases of school supplies, clothing, and food to be used during the next quarter.",
        total: 1800,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/sara.jpeg'), filename: 'sara.jpeg', content_type: 'image/png')

User.create(
  email: "julia@gmail.com",
  first_name: "Julia",
  last_name: "Lemos",
  address: "Avenida Dom Helder Camara, 12, Rio de Janeiro",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-32.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Associação Protetora dos Animais do Jacarezinho",
    cnpj: "39.672.730/0001-74",
    address: User.last.address,
    description: "
We are an association of animal friends that maintains a kennel for abandoned dogs and cats in the community of Jacarezinho.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/animal-jacarezinho.jpg'), filename: 'animal-jacarezinho.jpg', content_type: 'image/png')
      Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[7],
        type_donation: TYPES[0],
        name: "Feed and care our animals",
        description: "We are raising funds to buy rations, hygiene materials and vaccines for the animals in our kennel.",
        total: 2500,
        raised: 0)
      Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/pet-care.jpg'), filename: 'pet-care.jpg', content_type: 'image/png')

puts "generating donations..."

Campaign.all.each do |campaign|
  percentage = [50, 75, 100].sample / 100.to_f  #percentage to cover the campaign
  num_of_donors = rand(3..User.count-1) #number of donors available in DB
  donors = User.all.reject {|user| user == campaign.institution.user}.sample(num_of_donors) #Select a random set of donors, excluding the owner of campaign
  donors.each do |user|
    if campaign.type_donation == TYPES[2]
      quantity_donated = 1
    else
      quantity_donated = (percentage * campaign.total.to_f / donors.count).round
    end
    Donation.create(
      campaign_id: campaign.id,
      user_id: user.id,
      quantity: quantity_donated,
      anonymous: rand(1..100) < 20)
    campaign.raised = campaign.raised + quantity_donated
    campaign.save
  end
end

puts "generating Accontabilities and Reviews..."


def review_comments(stars)
  review_comments = ["Regular Accountability.", "Missing some information.", "They have to improve their Accountability."].sample if stars == 3
  review_comments = ["Good Accountability!", "Rich Accontability information!", "Accountability almost perfect!"].sample if stars == 4
  review_comments = ["Great Accountability!", "Definitely aproved!", "Accountability perfect!"].sample if stars == 5
  review_comments
end

Campaign.all.select {|campaign| campaign.raised >= campaign.total}.each do |campaign|
  Accountability.create(
    campaign_id: campaign.id,
    content: "Our Accontability Data")
    Accountability.last.photos.attach(io: File.open('app/assets/images/neutral-accountability.jpeg'), filename: 'neutral-accountability.jpeg', content_type: 'image/png')
  campaign.donations.each do |donation|
    stars = rand(3..5)
    Review.create(
      accountability_id: Accountability.last.id,
      donation_id: donation.id,
      star: stars,
      comment: review_comments(stars))
  end
end

#FAVELA ZAP SEED
User.create(
  email: "favela@gmail.com",
  first_name: "Favela",
  last_name: "Zap",
  address: "Ladeira da Glória, 26",
  password: "123456",
  password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-28.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Favela Zap @Batch-540",
    cnpj: "44.129.502/0001-92",
    address: User.last.address,
    description: "We are a non-profit NGO that helps community residents. We seek to bring information and donations to the most needy, help us to bring hope to the vulnerable population.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/favela-zap-new.jpeg'), filename: 'favela-zap-new.jpeg', content_type: 'image/png')
  Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[2],
        name: "Work at Favela Zap",
        description: "We need jornalists as volunteers at our website FavelaZap!.  The volunteer will write articles to inform local population about news.",
        total: 2,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/favelazap-jornalista.jpg'), filename: 'favelazap-jornalista.jpg', content_type: 'image/png')
  User.create(
    email: "augusto@gmail.com",
    first_name: "Augusto",
    last_name: "FavelaZap",
    address: "Ladeira da Glória, 26",
    password: "123456",
    password_confirmation: "123456")
    User.last.photo.attach(io: File.open('app/assets/images/avatar/Augusto.jpeg'), filename: 'Augusto.jpeg', content_type: 'image/png')
  Donation.create(
    campaign_id: Campaign.last.id,
    user_id: User.last.id,
    quantity: 1,
    anonymous: false)
  User.create(
    email: "roberto@gmail.com",
    first_name: "Roberto",
    last_name: "FavelaZap",
    address: "Ladeira da Glória, 26",
    password: "123456",
    password_confirmation: "123456")
    User.last.photo.attach(io: File.open('app/assets/images/avatar/jornalista_avatar.jpg'), filename: 'jornalista_avatar.jpg', content_type: 'image/png')
  Donation.create(
    campaign_id: Campaign.last.id,
    user_id: User.last.id,
    quantity: 1,
    anonymous: false)

  jornalism_campaign = Campaign.last
  jornalism_campaign.raised = 2
  jornalism_campaign.save

  Accountability.create(
    campaign_id: Campaign.last.id,
    content: "Excellent journalists, they provided a great volunteer service by writing articles on our website to inform community residents about new developments.")
  Accountability.last.photos.attach(io: File.open('app/assets/images/accountabilities/jornalista_accountability.jpg'), filename: 'jornalista_accountability.jpg', content_type: 'image/png')
  Campaign.last.donations.each do |donation|
    stars = 5
    Review.create(
      accountability_id: Accountability.last.id,
      donation_id: donation.id,
      star: stars,
      comment: review_comments(stars))
  end

  Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[5],
        type_donation: TYPES[0],
        name: "Donate School Supplies",
        description: "We are fundrising for School Supplies for children at Rocinha Comunity.",
        total: 2000,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/favela-material.jpg'), filename: 'favela-material.jpg', content_type: 'image/png')

#SAVE THE RANGO SEED
  User.create(
    email: "savetherango@gmail.com",
    first_name: "Save",
    last_name: "The Rango",
    address: "Ladeira da Glória, 26",
    password: "123456",
    password_confirmation: "123456")
  User.last.photo.attach(io: File.open('app/assets/images/avatar/avatar-31.jpeg'), filename: 'avatar.jpeg', content_type: 'image/png')
  Institution.create(
    user_id: User.last.id,
    name: "Save the Rango @Batch-540",
    cnpj: "62.574.339/0001-59",
    address: User.last.address,
    description: "We are an institution that aims to prevent food waste. In this way, we are looking for food donations that have a close expiration date and without any intention of consumption. Help us fight hunger and food waste.")
  Institution.last.photos.attach(io: File.open('app/assets/images/institutions/sdfg.png'), filename: 'sdfg.png', content_type: 'image/png')
  Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[1],
        name: "Donate Fruits and Vegetables",
        description: "We need donations of fruits and vegetables that are close to spoiling and with no consumption forecast in order to avoid wasting food.",
        total: 1000,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/save-fruits.jpg'), filename: 'save-fruits.jpg', content_type: 'image/png')

    percentage = 1  #percentage to cover the campaign
    num_of_donors = 5
    campaign = Campaign.last
    donors = User.all.reject {|user| user == campaign.institution.user}.sample(num_of_donors) #Select a random set of donors, excluding the owner of campaign
    donors.each do |user|
      if campaign.type_donation == TYPES[2]
        quantity_donated = 1
      else
        quantity_donated = (percentage * campaign.total.to_f / donors.count).round
      end
      Donation.create(
        campaign_id: Campaign.last.id,
        user_id: user.id,
        quantity: quantity_donated,
        anonymous: rand(1..100) < 20)
      campaign.raised = campaign.raised + quantity_donated
      campaign.save
    end

  Accountability.create(
    campaign_id: Campaign.last.id,
    content: "The fruits and vegetables that were donated were delivered to the residents of the Maré community who lost their jobs due to the pandemic. It was delivered on June 11, 2021 in the afternoon. Residents were very grateful for the donations.")
  Accountability.last.photos.attach(io: File.open('app/assets/images/accountabilities/save-fruits-accountability.jpg'), filename: 'save-fruits-accountability.jpg', content_type: 'image/png')
  Campaign.last.donations.each do |donation|
    stars = 5
    Review.create(
      accountability_id: Accountability.last.id,
      donation_id: donation.id,
      star: stars,
      comment: review_comments(stars))
  end

  Campaign.create(
        institution_id: Institution.last.id,
        category: CATEGORIES[1],
        type_donation: TYPES[1],
        name: "Donation of non-perishable food.",
        description: "We need non-perishable food donations that are close to their expiration date and with no consumption forecast to avoid food waste.",
        total: 1000,
        raised: 0)
        Campaign.last.photos.attach(io: File.open('app/assets/images/campaigns/save-non-perecible.jpg'), filename: 'save-non-perecible.jpg', content_type: 'image/png')

puts "End of Seed!"
