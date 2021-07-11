# アプリ名
programming-learning-application

# 概要
プログラミング学習を開始して１〜２ヶ月目の初心者が学習を効率的に学習する事ができるように仕組み化できます。

＜具体的な機能＞

①新規登録機能

②ログイン機能

③ログアウト機能

④ブログ機能

・アウトプットの機会を増やし、効率的に知識を定着させるためのブログ記事の投稿機能です。
 
・他の学習者が投稿した記事を参考にして新しい知識を習得することや、エラーの解消のためのヒントをえることも可能になります。

⑤ブログ記事へのコメント機能

・他の学習者の記事を読み、課題を解決できたときに感謝のコメントを残す事ができます。
 
・コメントをすることによってコミュニケーションの活性化を図る事が可能です。
 
・コメントで他の投稿者の記事の内容に間違いがある場合は指摘をすることによって指摘した方は知識をより定着させる事ができ、
　指摘された学習者は記事を修正することで正しい知識を定着させる事ができます。
 
⑥振り返りフォーム機能

・毎日の学習の終了時にフォームの記述をします。
 
・フォームの記述をすることで、その日の自分の学習に関して客観的に捉え、それを元に学習方針を改善する事ができます。
 
・学習がスムーズに進める事ができた日は、フォームを書くことで自己肯定感の向上を図る事が可能です。

⑦カレンダー機能

・エンジニアに必須な自己管理を習慣にする事で自己管理能力を向上させる可能です。
 
・予定を可視化することで次に行うべき事が把握しやすく、学習をスムーズに進める事ができます。
 
・またスケジュールを確認する機会を増やすことで、自分の生活を客観的に捉え、改善する事が可能になります。
 
・基礎学習を終えて就職を目指し、就職活動をしているときでもカレンダーを使用することで予定を把握しやすくできます。

# 本番環境

https://programming-learning-app.herokuapp.com/

Basic認証
 
・ID→tatsuya
 
・pass→1217

ログイン情報

ユーザー１（前川達也）
 
・メールアドレス→a@a
 
・パスワード→aaa111


ユーザー２（前川哲也）
 
・メールアドレス→b@b
 
・パスワード→bbb111

# 制作背景（意図）

①プログラミング初心者がアウトプット重視のプログラミング学習をできるようにするため

私がプログラミング学習を初めて初期の頃は参考書を読み、暗記するという方法を取っていました。
しかしインプットに留まってしまうとノウハウが蓄積されるだけであり、アウトプットしない限り、技術として身につきません。
そこでプログ機能を実装し、積極的にアウトプットできる環境を提供することで、１人でも多くの方が学習
を効率的に行う事ができるようにとの思いで作成しました。

②コミュニケーションを取る場を提供し、挫折を減らすため

プログラミング学習での挫折率は約９割を超えるというデータが多くあります。
私自身、プログラミングはとても楽しく学習できていますがその一方で時には本当に辛い時もあります。
そのような時に心の支えになるのは、同じプログラミング学習に取り組んでいる仲間の存在です。
私はプログラミング学習の挫折率が高い理由として「孤独感」が１番の大きな原因だと考えています。
そこでブログ記事の投稿機能だけでなく、コメント機能を実装することで、学習者が孤独に感じることを
減らし、挫折率を下げられるようにとの思いで作成しました。

③エンジニアを目指す方に技術面ではないスキルも身につける場を提供するため

私がプログラミングを始めて初期の頃はとにかく技術を身につけることばかりを考えていました。
しかし実際は技術力が定着しただけでは活躍できるエンジニアになることはできません。
現場で働くエンジニアはまずサービス開発のために具体的な期日を決め、それをもとに逆算して仕事を
進めています。しかし初心者がこれを完璧にすることは難しいと思います。
従ってまずは自己管理という基礎の力を身につける事ができるようにカレンダー機能を実装しました。
またその日の行動を客観的に捉えられるように、振り返りフォーム機能も実装しました。

# DEMO

## トップページ

 [トップページ](https://i.gyazo.com/06cfc35fbe1129550dc97cccd4b63879.mp4)
 
 アプリケーションのトップページはまだこのアプリケーションを使用した経験が無い方も訪問されるページです。
 そのため、このアプリケーションの目的と機能、対象のユーザーを記載することによってこのアプリケーションの
使用目的にマッチしたユーザーが使用できるようにしました。
 またデザイン的に統一感を出すために黒、白、青を使用しアニメーションを実装することでjavascriptの技術向上を目指しました。
 
 ## 新規登録
 
![新規登録画面](https://raw.githubusercontent.com/maekawatatsuya1217/programming-learning-application/master/sign_up.png)

## ログイン画面

![ログイン画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/login.png?raw=true)

## ブログ記事一覧表示画面

![ブログ記事一覧画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/blog_index.png?raw=true)

## ブログ記事詳細画面

![ブログ記事詳細画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/blog_show.png?raw=true)

## ブログ記事投稿画面

![ブログ記事投稿画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/blog_new.png?raw=true)

## ブログ記事編集画面

![ブログ記事編集画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/blog_edit.png?raw=true)

## ブログ記事検索画面

![ブログ記事検索画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/blog_search.png?raw=true)

## コメント投稿画面

![コメント投稿画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/comment.png?raw=true)

## カレンダー一覧画面

![カレンダー一覧画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/calendar_index.png?raw=true)

## カレンダー詳細画面

![カレンダー詳細画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/calendar_show.png?raw=true)

## カレンダー追加画面

![カレンダー追加画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/calendar_new.png?raw=true)

## カレンダー編集画面

![カレンダー編集画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/calendar_edit.png?raw=true)

## フォーム一覧画面

![フォーム一覧画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/form_index.png?raw=true)

## フォーム詳細画面

![フォーム詳細画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/form_show.png?raw=true)

## フォーム投稿画面

![フォーム投稿画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/form_new.png?raw=true)

## フォーム編集画面

![フォーム編集画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/form_edit.png?raw=true)
# 工夫したポイント

①自分自身が実際にプログラミング学習を経験して、そこで必要だと感じたことなどをアプリに落とし込む事で
確実にプログラミング初心者の悩みを解消する事ができるアプリを作成したこと。
     
②自分で作成したアプリを実際に使用することで、使用感を確かめ、そこで見えてきた課題を解決できるように
機能を追加したこと。
     
③自分の経験の浅い非同期通信を実装し、技術力の向上を図ったこと。
 
④N+1問題の解消やrspecでFaker用いたテストコード、非同期通信の実装など現場で使用されている技術
  身につけるために実装したこと。
   
⑤実際に初心者がどのような問題に直面しているのかを調べそれをもとに計画しアプリに取り入れたこと。
 
⑥色を選ぶときにそれぞれの色の心理効果などを調べ、学習の際に一番適している色を考え青色にしたこと。
 
⑦プログラミングの技術だけでなく、デザインに関しても隙間時間に勉強しアプリに取り入れたこと。

# 使用技術（開発環境）

# バックエンド

Ruby,Ruby on Rails

# フロントエンド

HTML5/CSS3,javascript,Ajax

# データベース

MySQL

# インフラ

Heroku

# Webサーバ（本番環境）

Heroku

# アプリケーションサーバ（本番環境）

Heroku

# ソース管理

GitHub,GitHubDesktop

# テスト

Rspec

# エディタ

VSCode

# 課題や今後実装したい機能

・記事の投稿時にカテゴリー機能を使用することによって、検索する時にもスムーズに記事を見つけられるようにしたい。
 
・疑問が解消された時にリアクションし、記事の信憑性を数値で表せるようにLGTMボタンを配置したい。
 
（信憑性がある記事を参考にすることで、それぞれの疑問を解消できる確率を向上させるため）

# テーブル設計


##user

| Column     | Type   | Options  |
| ---------- | ------ | -------- |
| email      | string | NOT NULL |
| password   | string | NOT NULL |
| name       | string | NOT NULL |
| profile    | text   | NOT NULL |

 - has_many :calendars
 - has_many :blogs
 - has_many :comments
 - has_many :forms


 ##calendars

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| content    | text       | null: false                    |
| start_time | datetime   | null: false                    |
| user       | references | null: false, foreign_key: true |

- belongs_to :user


##blogs

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | NOT NULL                       |
| catch   | string     | NOT NULL                       |
| article | text       | NOT NULL                       |
| user    | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments


##commentsテーブ

| Column    | Type       | Options  |
| --------- | ---------- | -------- |
| text      | text       | NOT NULL |
| user      | references |          |
| blog      | references |          |

- belongs_to :user
- belongs_to :blog


##formテーブ

| Column      | Type       | Options                        |
| ---------   | ---------- | ------------------------------ |
| day         | date       | NOT NULL                       |
| time        | time       | NOT NULL                       |
| good        | text       | NOT NULL                       |
| bad         | text       | NOT NULL                       |
| improvement | text       | NOT NULL                       |
| user        | references | null: false, foreign_key: true |

- belongs_to :user
