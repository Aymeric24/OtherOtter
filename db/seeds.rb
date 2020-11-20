require "open-uri"

Booking.all.destroy_all
Otter.all.destroy_all
User.all.destroy_all

p "everything destroyed"

user_1 = User.create(email: 'basilerieu@yahoo.fr', password: "password", address: '22 rue André Del Sarte, Paris', rating: 2, is_owner?: true, username: "Basile", admin: true)

user_2 = User.create(email: 'noemi@lewagon.com', password: "password", address: '118 avenue Parmentier, Paris', rating: 2, username: "Noémie", admin: false)

user_3 = User.create(email: 'jp@lewagon.com', password: "password", address: '10 rue Sainte, Marseille', rating: 5, username: "JP", admin: false)


bibou = Otter.new(name: 'Bibou', age: 3, personality: "funny", rating: 5, user_id: user_1.id)
bibou.address = bibou.user.address
bibou.save
file1 = URI.open('https://lemagdesanimaux.ouest-france.fr/images/dossiers/2019-09/loutre-1-085135.jpg')
bibou.photo.attach(io: file1, filename: 'Bibou.jpg', content_type: 'image/jpg')

jp = Otter.new(name: 'Jean-Pierre', age: 53, personality: "talker", rating: 5, user_id: user_1.id)
jp.address = jp.user.address
jp.save
file2 = URI.open('https://www.wapiti-magazine.com/wp-content/uploads/sites/26/2018/12/loutre-de-mer.jpg')
jp.photo.attach(io: file2, filename: 'jp.jpg', content_type: 'image/jpg')

marcelle = Otter.create(name: 'Marcelle', age: 2, personality: "shy", rating: 5, user_id: user_1.id)
marcelle.address = marcelle.user.address
marcelle.save
file3 = URI.open('https://img.20mn.fr/vmusmUDoT_enbz8ZVHKhGA/830x532_loutre-cendree.jpg')
marcelle.photo.attach(io: file3, filename: 'marcelle.jpg', content_type: 'image/jpg')

louma = Otter.create(name: 'Louma', age: 9, personality: "crazy", rating: 5, user_id: user_1.id)
louma.address = louma.user.address
louma.save
file4 = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2020/06/0209ba70-c605-45f0-a17d-2ad1d2158a53/1136_gettyimages-1169062365.jpg')
louma.photo.attach(io: file4, filename: 'louma.jpg', content_type: 'image/jpg')

victoire = Otter.create(name: 'Victoire', age: 5, personality: "cute", rating: 5, user_id: user_1.id)
victoire.address = victoire.user.address
victoire.save
file5 = URI.open('https://www.zooactu.com/wp-content/uploads/2019/05/loutrons-zoo-lyon.jpg')
victoire.photo.attach(io: file5, filename: 'victoire.jpg', content_type: 'image/jpg')

noemie = Otter.create(name: 'Noémie', age: 12, personality: "worker", rating: 5, user_id: user_1.id)
noemie.address = noemie.user.address
noemie.save
file6 = URI.open('https://www.especes-menacees.fr/wp-content/uploads/2017/09/loutre-de-mer-2-642x300.jpg')
noemie.photo.attach(io: file6, filename: 'noemie.jpg', content_type: 'image/jpg')

remy = Otter.create(name: 'Remy', age: 5, personality: "smart", rating: 5, user_id: user_2.id)
remy.address = remy.user.address
remy.save
file7 = URI.open('https://static.actu.fr/uploads/2019/03/Loutre-Samuel-Jouon.jpg')
remy.photo.attach(io: file7, filename: 'remy.jpg', content_type: 'image/jpg')

aymeric2 = Otter.create(name: 'Aymeric2', age: 8, personality: "wild", rating: 5, user_id: user_2.id)
aymeric2.address = aymeric2.user.address
aymeric2.save
file8 = URI.open('https://blog-marais-poitevin.fr/wp-content/uploads/2014/11/loutre1-compressor.jpg')
aymeric2.photo.attach(io: file8, filename: 'ayme2.jpg', content_type: 'image/jpg')

bigbiz = Otter.create(name: 'Bigbiz', age: 9, personality: "funny", rating: 5,user_id: user_2.id)
bigbiz.address = bigbiz.user.address
bigbiz.save
file9 = URI.open('https://static.timesofisrael.com/fr/uploads/2019/08/AP_07032107874-e1566675396564.jpg')
bigbiz.photo.attach(io: file9, filename: 'bigbiz.jpg', content_type: 'image/jpg')

lola = Otter.create(name: 'Lola', age: 1, personality: "sleepy", rating: 5, user_id: user_2.id)
lola.address = lola.user.address
lola.save
file10 = URI.open('https://mobile-img.lpcdn.ca/lpca/924x/4ed6d43d-4465-11ea-82bb-0eda3a42da3c.jpg')
lola.photo.attach(io: file10, filename: 'lola.jpg', content_type: 'image/jpg')

mirabelle = Otter.create(name: 'Mirabelle', age: 10, personality: "funny", rating: 5,user_id: user_2.id)
mirabelle.address = mirabelle.user.address
mirabelle.save
file11 = URI.open('https://images.radio-canada.ca/q_auto,w_1250,h_703/v1/ici-info/16x9/eddie-loutre-zoo-oregon-mort.jpg')
mirabelle.photo.attach(io: file11, filename: 'mirabelle.jpg', content_type: 'image/jpg')

jc = Otter.create(name: 'Jean-Claude', age: 5, personality: "late", rating: 5, user_id: user_3.id)
jc.address = jc.user.address
jc.save
file12 = URI.open('https://www.sciencesetavenir.fr/assets/img/2017/03/24/cover-r4x3w1000-58d4e57894ce0-loutre-de-mer.jpg')
jc.photo.attach(io: file12, filename: 'jc.jpg', content_type: 'image/jpg')

jm = Otter.create(name: 'Jean-Marc', age: 9, personality: "very late", rating: 5, user_id: user_3.id)
jm.address = jm.user.address
jm.save
file13 = URI.open('https://images.bfmtv.com/pnzXDkP5UyVAqhZ2wDWWRFFqkj8=/0x337:3600x2362/3600x0/images/-194649.jpg')
jm.photo.attach(io: file13, filename: 'jm.jpg', content_type: 'image/jpg')

jp = Otter.create(name: 'Jean-Pierre', age: 4, personality: "worker", rating: 5,user_id: user_3.id)
jp.address = jp.user.address
jp.save
file14 = URI.open('https://i.pinimg.com/originals/3a/c5/43/3ac5435383fad48e6981fe8d1e51bc10.jpg')
jp.photo.attach(io: file14, filename: 'jp.jpg', content_type: 'image/jpg')

jd = Otter.create(name: 'Jean-David', age: 1, personality: "winner", rating: 5, user_id: user_3.id)
jd.address = jd.user.address
jd.save
file15 = URI.open('https://mon.astrocenter.fr/vss/pictures/25203979-loutre-1366x768.jpg')
jd.photo.attach(io: file15, filename: 'jd.jpg', content_type: 'image/jpg')

p "Seed done !"
