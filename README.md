# README

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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string|null:false|
|first_name|string|null:false|
|first_name_kana|string|null:false|
|last_name|string|null:false|
|last_name_kana|string|null:false|
|email|string|null:false,unique|
|password|string|null:false|
|telephone|integer|null:false,unique|
|credit_card|integer|unique|
|card_validity_year|integer||
|card_validity_month|integer||
|cvc|integer||
|prefecture_id|reference|null:false, foreign_key: true|
|city|string|null:false|
|adress|string|null:false|
|building|string||
|post_number|integer|null:false|
|introduction|text||
|birth_year|integer|null:false|
|birth_month|integer|null:false|
|birth_day|integer|null:false|
|birth_is_vaild|boolean(0)||
|reset_password_token|string||
|reset_password_sent_at|dyatime|

### Association
- has_many :items
- has_many :orders
- belongs_to :prefecture


## prefecturesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|prefecture|string|null:false,unique|

### Association
- has_many :items
- has_many :users


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer||
|user_id|reference|null:false,foreign_key:ture|
|name|string|null:false|
|price|integer|null:false|
|description|text|null:false|
|category1_id|reference|foreign_key:true|
|brand_id|reference|foreign_key:true|
|size_id|reference|foreign_key:true|
|condition_id|reference|foreign_key:true|
|delivery_charge|reference|foreign_key:true|
|prefecure_id|reference|foreign_key:true|
|delivery_dates_id|reference|foreign_key:true|
|sold_out|boolean||

### Association
- has_many :item_images
- has_one :order
- belongs_to :prefecture
- belongs_to :user
- belongs_to :category1
- belongs_to :brand
- belongs_to :condition
- belongs_to :delivery_charge
- belongs_to :delivery_date


## item_imageテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|image|text|null:false|
|item_id|reference|null:false,foreign_key:true|

### Association
- belongs_to :item


## ordersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer||
|user_id|reference|null:false,foreign_key:ture|
|item_id|reference|null:false,foreign_key:ture|
|payment_id|reference|null:false,foreign_key:ture|

### Association
- belongs_to :user
- belongs_to :item
- belongs_to :payment


## paymentsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|card_number|integer||
|validity|integer||
|cvc|integer||
|card_name|string||

### Association
- has_many :orders


## category1テーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|category1|string|null:false|

### Association
- has_many :items
- has_many :category2


## category2テーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|category1_id|reference|foreign_key:ture|
|category2|string|null:false|

### Association
- belongs_to :category1
- has_many :category3


## category3テーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|category2_id|reference|foreign_key:ture|
|category3|string|null:false|

### Association
- belongs_to :category2
- has_many :sizes


## sizesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|category3|reference|foreign_key:ture|
|sizes|string|null:false|

### Association
- belongs_to :category3


## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|brand|string|unique|
|category1_id|reference|foreign_key:ture|

### Association
- belongs_to :category1
- has_many :items


## conditionsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|condition|string||

### Association
- has_many :items


## delivery_chargesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|charge|string||

### Association
- has_many :items


## delivery_datesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|date|string||

### Association
- has_many :items


