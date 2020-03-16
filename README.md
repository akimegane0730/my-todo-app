# README

### アプリ名
## 積み上げリスト
<img width="736" alt="スクリーンショット 2020-03-16 16 27 25" src="https://user-images.githubusercontent.com/58383159/76732918-16ea3780-67a3-11ea-9815-114f369514f3.png">

### 概要
## to doアプリのようにその日に行うタスクを記録出来ます

### 制作背景
## タスクが完了すると出来たことリストとして見ることができます。一日が終わるごとにその日出来なかったことばかり考えてしまいますが、あえて出来たことを可視化することによって毎日の成長を感じて欲しいと思い作成しました

### アプリURI
# https://salty-journey-88600.herokuapp.com/

### 使用技術
## HTML CSS Haml Scss JavaScript jQuery Ruby Ruby on Rails Heroku 

### 課題や今後実装したい機能
## ドラックアンドドロップ機能によるカードの移動(Trello風)

### 工夫したポイント
## タスクが完了し、完了ボタンを押すとcomplete_idが付与される設定になっており、そのidがあるかどうかでできたことリストにタスクが入るようになっています。

# DB設計

## users テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string|unique:true, null:false|
|password|string|null:false|
|re_password|string|null:false|

### Association
- has_many :lists

## lists テーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null:false|
|user_id|reference|null:false|

### Association
- has_many :cards
- belongs_to :user

## cards テーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null:false|
|memo|text||
|list_id|reference|null:false|

### Association
- belongs_to :list