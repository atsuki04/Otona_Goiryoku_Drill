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
  [3, '「これ知ってる？」と聞かれた時', '知っております', '記憶しております', '存じております', 'もし知らないので教えてほしいというときは「存じておりませんので、ご教示ください」というのが良い。'],
  [3, 'お土産を渡す時', 'つまらないものですが', 'こんなものですが', '心ばかりのものですが', '謙遜することも大事だが、自分を下げている表現より受け取る側が気持ち良い'],
  [3, '「〜しといてくれた？」と言われたが、うっかりと頼まれていたことを忘れてしまっていた時', '忘れてしまっていました', '記憶違いでした', '失念しておりました', '「忘れないでおいてね」と返された時には、「肝に銘じます」と返すと良いでしょう'],
  [2, '会食中だけど時間も遅くなってきたしそろそろ帰りたい時', '帰らせていただきます', 'ここで失礼致します', 'お暇します', 'お暇（おいとま）は帰るの緩やかな言い回し（婉曲（えんきょく表現）']

].each do |g, q, c_1, c_2, c_a, ex|
  Question.find_or_create_by(
    { genre_id: g, question: q, choice_1: c_1, choice_2: c_2, choice_answer: c_a, explanation: ex }
  )
  end