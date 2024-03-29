![logo3](/app/assets/images/rogo.png)

## ながのCAKE
長野県にある小さな洋菓子店、「ながのCAKE」の商品を通販するためのECサイト。<br>
元々近隣樹民が主な顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るようになった。<br>
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管理機能を含んだ通販サイトを開設しようと思い至った。

## 通販について
・通販では注文に応じて製作する受注生産型としています。<br>
・現在通販での注文量は十分に対応可能な量のため、1日の受注量に制限は設けていません。<br>
・送料は１配送につき全国一律８００円。<br>
・友人や家族へのプレゼントなど、注文者の住所以外にも商品を発送することができます。<br>
・支払い方法はクレジットカード、銀行振込から選択できます。<br>

## 実装機能

### 顧客側
|機能名|説明|非ログイン時利用可否|
|---|---|---|
|ログイン機能|・メールアドレス、パスワードでログインできる。<br>・ログイン時のみ利用できる機能が利用可能になる。|○|
|ログアウト機能|・ログインしている状態からログアウト状態にする。<br>・ログイン時のみ利用できる機能が利用できなくなる。|×|
|商品一覧表示機能|・商品を一覧表示する。|○︎|
|商品詳細情報表示機能|・商品一覧画面で選択した用品の詳細情報を表示する。<br>・カート追加機能が表示されている。|○︎|
|カート追加機能|・カートに商品を追加することができる。|×|
|カート一覧機能|・カートの中身を一覧表示することができる。|×|
|カート編集機能|・カートの中身の個数を編集したり、削除したりすることができる。|×|
|注文機能|・カートの中身の購入をすることができる。<br>・支払い方法や発送先を設定することができる。|×|
|会員情報編集機能|・登録している情報を編集することができる。|×|
|退会機能|・退会手続きをすることができる。|×|
|配送先追加・編集機能|・登録している配送先を一覧で確認することができる。<br>・配送先の新規追加・修正・削除をすることができる。|×|
|注文履歴一覧表示機能|・過去の注文概要を一覧で確認することができる。|×|
|注文履歴詳細表示機能|・注文の詳細（注文商品や個数など）を確認することができる。|×|

### 管理者側
|機能名|説明|非ログイン時利用可否|
|---|---|---|
|ログイン機能|・メールアドレス、パスワードでログインできる。<br>・ログイン時のみ利用できる機能が利用できるようになる。|○︎|
|ログアウト機能|・ログインしている状態からログアウト状態にする。<br>・ログイン時のみ利用できる機能が利用できなくなる。|×|
|注文履歴一覧表示機能|・過去の注文概要を一覧で確認することができる。|×|
|注文履歴詳細表示機能|・注文の詳細（注文商品や個数など）を確認することができる。<br>・注文ステータス、製作ステータスを変更することができる。|×|
|顧客一覧表示機能|・顧客情報を一覧で確認することができる。|×|
|顧客詳細情報表示機能|・顧客の詳細情報を確認することができる。<br>・顧客のステータス（有効/退会）を切り替えることができる。|×|
|商品新規追加機能|・新規商品を追加できる。|×|
|商品一覧表示機能|・登録商品を一覧で確認することができる。|×|
|商品詳細情報表示機能|・商品の詳細情報を確認することができる|×|
|商品情報変更機能|・商品の登録情報を変更することができる。<br>・販売ステータスを変更することができる。|×|
|ジャンル設定機能|・ジャンルの追加・変更を行うことができる。|×|

## 使用方法
### インストール
$ git clone git@github.com:fried-chicken/NAGANO-CAKE.git (SSH) <br>
$ cd NAGANO-CAKE<br>
$ bundle install<br>
$ rails db:migrate<br>

### テスト
ターミナル（もしくはコマンドプロンプト）で上記の作業を行った後、ローカルサーバーにアクセスしてご覧ください。

【管理者用アカウント：ログイン】<br>
URLを/admin/sign_upにし管理者アカウトを作成<br>

【顧客用アカウント：ログイン】 <br>
新規登録でアカウント作成<br>

## 使用言語
・HTML&CSS<br>
・Ruby<br>
・フレームワーク<br>
・Rails<br>
  - Rails 6.1.7.6

## Gem
・bootstrap<br>
・devise<br>
・kaminari<br>
・enum_help<br>
・pry_byebug

## 作成者
・山田竜聖<br>
・和田一樹<br>
・斎藤創太<br>
・林和磨
