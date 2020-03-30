# README

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|genre|referennces|null: false,foreign_key:true|
### Association
- belongs_to :genre
- has_many :posts_tags
- has_many :tags, through: :posts_tags

## genresテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts_tags
- has_many :posts, through: :posts_tags

## posts_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|hard_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
