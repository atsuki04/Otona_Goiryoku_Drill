# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'osuga@a',
   password: 'atsuki'
)


genres = ['仕事', '会食', '日常会話']

genres.each do |genre|
  Genre.find_or_create_by(name: genre)
end


[
  [1, '「〜しておいて」と言われ、承諾する時', 'わかりました', '了解しました', '承知しました', '「了解しました」は同等の立場の人に使う言葉であり、目上の方には使わない方が良い。'],
  [1, '「〜しておいて」と言われ、断る時', '無理です', '承れません', '承服いたしかねます', '（例文）大変申し訳にくいのですが、承服致しかねます。という様に使う。'],
  [3, '「これ知ってる？」と聞かれた時', '知っております', '記憶しております', '存じております', 'もし知らないので教えてほしいというときは「存じておりませんので、ご教示ください」というのが良い。']

].each do |g, q, c_1, c_2, c_a, ex|
  Question.find_or_create_by(
    { genre_id: g, question: q, choice_1: c_1, choice_2: c_2, choice_answer: c_a, explanation: ex }
  )
  end