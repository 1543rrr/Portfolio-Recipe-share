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

## comments table
|comment|
|post_id|
|user_id|

### Association
-  has_one :posts
-  has_one :users

## photos table
|image|
|post_id|

### Association
- belong_to :posts

## posts table
|caption|
|user_id|

### Association
- has_many :comments
- has_one  :photos
- has_many :likes

## likes table
|post_id|
|user_id|

### Association
- has_one  :posts
- has_one :users

## users table
|name                 |string|null:false|
<<<<<<< Updated upstream
|nickname             |string|null:false|
|email                |string|null:false|
|password             |string|null:false|
|password_confirmation|string|null:false|

=======
|email                |string|null:false|
|password             |string|null:false|
|password_confirmation|string|null:false|
|confirmation_token   |sting |null:false|
|confirmed_at         |string|null:false|
|confirmation_sent
>>>>>>> Stashed changes
### Association
- has_many :comments
- has_many :posts
- has_many :likes
