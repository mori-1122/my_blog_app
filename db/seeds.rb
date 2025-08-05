# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.create({ title: "テスト記事", content: "accumsan orci non nunc varius placerat. Quisque et dolor venenatis, pretium mi at, vehicula libero. Vestibulum vel ultricies odio. Cras" } )
Article.create({ title: "ダミー記事", content: "Pellentesque sed lectus non augue vulputate elementum. Sed tempor malesuada nisl id interdum. Nam malesuada eget massa sed ullamcorper." } )
