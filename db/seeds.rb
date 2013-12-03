# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create(name: 'adidas ultimate 3/4 tight', price: 50.00, images: ["http://a3.zassets.com/images/z/2/3/0/3/6/6/2303666-p-MULTIVIEW.jpg"], materials: 'spandex, rayon, cotton', description: 'Some badass 3/4 tights for your wintery runs.', sku: 378, size: 'M')

Product.create(name: 'Brooks NightLife Essential Jacket', price: 85.00, images: ["http://a1.zassets.com/images/z/1/8/5/7/0/7/1857074-p-MULTIVIEW.jpg"], materials: 'polypropylene', description: 'Hey. This jacket looks nice.', sku: 374, size: 'S')

Product.create(name: 'CW-X Revolution Tights', price: 200.00, images: ["http://l4.zassets.com/images/z/2/3/4/1/8/4/2341847-p-MULTIVIEW.jpg"], materials: 'spandex, cotton', description: 'Check out these sweet tights. You want them on your body.', sku: 309, size: 'S')

Product.create(name: "NIKE Women's Tempo Shorts", price: 25.00, images: ["http://www.sportsauthority.com/graphics/product_images/pTSA-13327727p275w.jpg"], materials: 'rayon, cotton', description: 'Shorts! Shorts!', sku: 323, size: 'S')

Product.create(name: "CEP Night Calf Sleeve 2.0", price: 45.00, images: ["http://images.citysports.com/f/726/28361/24h/www.citysports.com/assets/product_images/225794_Neon_Pink_md.jpg"], materials: 'rayon, spandex', description: 'On Wednesdays we wear pink(recovery gear).', sku: 340, size: 'S')

Product.create(name: "Nathan Strobe Running Light", price: 10.00, images: ["http://images.citysports.com/f/726/28361/24h/www.citysports.com/assets/product_images/220372_md.jpg"], materials: 'plastic', description: 'Batteries included because we\'re not monsters.', sku: 387)
