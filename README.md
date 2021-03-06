# アプリ名
programming-learning-application

# 概要
このアプリケーションはプログラミング学習を開始して１〜２ヶ月目の初心者が学習を効率的に行えるようにする事を目的に作成しました。具体的にはアウトプットのためのブログ機能、学習のスケジュール管理のためのカレンダー機能、１日の学習の質を振り返る、振り返りフォームなど私が実際に学習を経験して必要だと感じた機能やあると便利だと感じた機能を実装しています。

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

![トップページの画像](https://i.gyazo.com/1ec1103b2270e979fb9b93526f4bd70d.gif)

 アプリケーションのトップページはまだこのアプリケーションを使用した経験が無い方も訪問されるページです。
  
 そのため、このアプリケーションの目的と機能、対象のユーザーを記載することによってこのアプリケーションの使用目的にマッチしたユーザーが使用できるようにしました。
  
 またデザイン的に統一感を出すために黒、白、青を使用しアニメーションを実装することでjavascriptの技術向上を目指しました。
  
 初期の状態ではユーザーがログインしているか判断しずらかったので判断しやすいようにアイコンを導入しました。 

## ブログ記事一覧表示画面

![ブログ記事一覧画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/blog_index.png?raw=true)
 
ユーザーが新着の記事を確認する事ができるように、「order」を使用し並び順を変更する実装をしました。
 
また投稿数が増加することによってN＋1問題が発生するので、未然に防止するために「include」を使用し実装をしました。この時にテキストだけでなく今まで経験したことの無かった画像に対するN+1問題の解消にも取り組みました。
 
ユーザーが投稿する画像の大きさはそれぞれ違うと考えられるので、画像の大きさを一定にする記述を施しました。またこの時に画像が崩れてしまわないようサイズを一定に揃える実装をしました。

## コメント投稿画面

![コメント投稿画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/comment.png?raw=true)
 
現代のアプリケーションの多くが非同期通信でコメント機能を実装しています。この仕組みによってユーザーがサービスを快適に使用できるようになっていると考え、非同期通信によって送信できるように実装しました。
 
また現場で使用する頻度も高いと考えられるので、１つ１つの工程を確実に理解しながら実装しました。

## カレンダー一覧画面

![カレンダー一覧画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/calendar_index.png?raw=true)
 
カレンダーを導入するときの選定の基準はサービスを開発するときに大切な、ユーザー目線での使用のしやすさを基準にしました。その結果、最も機能がシンプルで扱いやすいシンプルカレンダーを採用することにしました。
 
デフォルトの状態では日本時間の設定ではなかったので、日本時間で表示できるように設定をしました。

## フォーム投稿画面

![フォーム投稿画面](https://github.com/maekawatatsuya1217/programming-learning-application/blob/master/form_new.png?raw=true)
 
フォーム投稿時に日時をプルダウンから選択できるように実装することでユーザーが入力にかかる手間と時間を省く事ができると考えました。
 
具体的な改善点を記載することによって、次の日からどのように改善をしていくのかを考える機会を提供し、より良い学習方針で学習を実施する事ができます。

# 工夫したポイント

①自分自身が実際にプログラミング学習を経験して、そこで必要だと感じたことなどをアプリに落とし込む事で
確実にプログラミング初心者の悩みを解消する事ができるアプリを作成したこと。
     
②自分で作成したアプリを実際に使用することで、使用感を確かめ、そこで見えてきた課題を解決できるように
機能を追加したこと。
     
③自分の経験の浅い非同期通信を実装し、技術力の向上を図ったこと。
 
④N+1問題の解消やrspecでFaker用いたテストコード、非同期通信の実装など現場で使用されている技術
  身につけるために実装したこと。
   
⑤実際に初心者がどのような問題に直面しているのかを調べそれをもとに計画しアプリに取り入れたこと。
 
# 課題や今後実装したい機能
 
・疑問が解消された時にリアクションし、記事の信憑性を数値で表せるようにLGTMボタンを配置したい。
 
（信憑性がある記事を参考にすることで、それぞれの疑問を解消できる確率を向上させるため）

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

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | NOT NULL                       |
| catch       | string     | NOT NULL                       |
| article     | text       | NOT NULL                       |
| category_id | integer    | NOT NULL                       |
| user        | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments


##comments

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | NOT NULL                       |
| user      | references | null: false, foreign_key: true |
| blog      | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :blog


##form

| Column      | Type       | Options                        |
| ---------   | ---------- | ------------------------------ |
| day         | date       | NOT NULL                       |
| time        | time       | NOT NULL                       |
| good        | text       | NOT NULL                       |
| bad         | text       | NOT NULL                       |
| improvement | text       | NOT NULL                       |
| user        | references | null: false, foreign_key: true |

- belongs_to :user
