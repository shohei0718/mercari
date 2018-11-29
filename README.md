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
|prefecture_id|reference|foreign_key: true|
|city|string|null:false|
|adress|string|null:false|
|building|string||
|zip_code|integer|null:false|
|introduction|text||
|birth_year|integer|null:false|
|birth_month|integer|null:false|
|birth_day|integer|null:false|
|birth_is_vaild|boolean(0)||
|reset_password_token|string||
|reset_password_sent_at|dyatime||
|user_icon|text||
|point_amount|integer||
|profit_amount|integer||


### Association
- has_many :items
- has_many :orders
- has_many :profits
- has_many :points
- has_many :messages
- has_many :likes
- has_many :flags
- has_many :message_items,through::messages,source::item
- has_many :like_items,through::likes,source::item
- has_many :flag_items,through::flags,source::item
- belongs_to :prefecture
- belongs_to :rate


## ratesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|rating|string||

### Association
- has_many :items
- has_many :users


## rate_countsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|rating_id|reference|foreign_key: true|
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|
|message|text|null:false|
|seller|boolean||


### Association
- has_many :items
- has_many :users


## prefecturesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|prefecture|string|null:false,unique|

### Association
- has_many :items
- has_many :users


## pointsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|amount|integer||
|user_id|reference|foreign_key: true|
|point_status_id|reference|foreign_key: true|

### Association
- belongs_to :user


## point_statusテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|point_status|string||

### Association
- has_many :points


## profitsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|prpfit|integer||
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|
|expiration_date|daytime||
|profit_is_vaild|boolean||

### Association
- belongs_to :item
- belongs_to :user


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|message|text||
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|
|seller|boolean||
|order_status_id|reference|foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user
- belongs_to :order_status


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user


## flagsテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|user_id|reference|foreign_key: true|
|item_id|reference|foreign_key: true|

### Association
- belongs_to :item
- belongs_to :user

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
|order_status_id|reference|foreign_key:true|

### Association
- has_many :item_images
- has_many :messages
- has_many :likes
- has_many :flags
- has_many :message_users,through::messages,source::user
- has_many :like_users,through::likes,source::user
- has_many :flag_users,through::flags,source::user
- belongs_to :order
- belongs_to :profit
- belongs_to :prefecture
- belongs_to :user
- belongs_to :first_category
- belongs_to :brand
- belongs_to :condition
- belongs_to :delivery_charge
- belongs_to :delivery_date
- belongs_to :order_status
- belongs_to :size

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
|seller_id|reference|null:false,foreign_key:ture|
|first_name_delivery|string|null:false|
|first_name_kana_delivery|string|null:false|
|last_name_delivery|string|null:false|
|last_name_kana_delivery|string|null:false|
|prefecture_id|reference|foreign_key: true|
|city_delivery|string|null:false|
|adress_delivery|string|null:false|
|building_delivery|string||
|zip_code_delivery|integer|null:false|
|telephone_delivery|integer||
|payment_method|integer||
|user_point|boolean||
|point|integer||

### Association
- belongs_to :user
- belongs_to :item


## fisrt_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|first_category|string|null:false|

### Association
- has_many :items
- has_many :brands,through::brand_categories
- has_many :brand_categories
- has_many :second_categories

## second_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|first_category_id|reference|foreign_key:ture|
|size_category_id|reference|foreign_key:ture|
|second_category|string|null:false|

### Association
- belongs_to :first_category
- belongs_to :size_category
- has_many :third_categories


## third_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|second_category_id|reference|foreign_key:ture|
|third_category|string|null:false|

### Association
- belongs_to :second_category


## sizesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|size_category_id|reference|foreign_key:ture|
|size|string|null:false|

### Association
- belongs_to :size_category
- has_many :items


## size_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|size_category|string||

### Association
- has_many :second_categories
- has_many :sizes


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

## order_statusesテーブル

|Column|Type|Options|
|------|----|-------|
|id|||
|order_status|string||

### Association
- has_many :items


