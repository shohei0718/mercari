# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string     :nickname,             null:false
      t.string     :first_name,           null:false
      t.string     :first_name_kana,      null:false
      t.string     :last_name,            null:false
      t.string     :last_name_kana,       null:false
      t.string     :city,                 null:false
      t.string     :address,              null:false
      t.string     :building

      t.string     :email,                null: false, default: "",unique: true

      t.string     :encrypted_password,   null: false, default: ""
      t.string     :reset_password_token


      t.text    :telephone,           unique:true
      t.text    :zip_code,            null:false

      t.integer    :birth_year,          null:false
      t.integer    :birth_month,         null:false
      t.integer    :birth_day,           null:false

      t.integer    :point_amount
      t.integer    :profit_amount

      t.text       :user_icon
      t.text       :introduction

      t.datetime   :remember_created_at
      t.datetime   :reset_password_sent_at

      # t.references :prefecture,                   foreign_key: true
      # t.references :payment_information,       foreign_key: true


      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
