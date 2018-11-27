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


## fisrt_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|first_category|string|null:false|

### Association
- has_many :items
- has_many :second_categories
- has_many :brands,through::brand_categories
- has_many :brand_categories

## second_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|first_category_id|reference|foreign_key:ture|
|second_category|string|null:false|

### Association
- belongs_to :first_category
- has_many :third_categories


## third_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|second_category_id|reference|foreign_key:ture|
|third_category|string|null:false|

### Association
- belongs_to :second_category
- has_many :sizes


## sizesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|third_category_id|reference|foreign_key:ture|
|sizes|string|null:false|

### Association
- belongs_to :third_category


## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|brand|string|unique|
|first_category_id|reference|foreign_key:ture|

### Association
- has_many :items
- has_many :first_categories,through::brand_categories
- has_many :brand_categories


## brand_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|brand_id|reference|foreign_key:ture|
|first_category_id|reference|foreign_key:ture|

### Association
- belongs_to :first_category
- belongs_to :brand


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


