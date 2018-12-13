crumb :root do
  link "メルカリ", root_path
end

crumb :categories do
  link 'カテゴリー一覧', root_path
  parent :root
end

crumb :category do
  link 'カテゴリー', categorys_path
  parent :categories
end

crumb :item_show do |item|
  link item.name, items_path(item.id)
  parent :root
end

#以下マイページ関連
crumb :mypage do
  link "マイページ", root_path
  parent :root
end

crumb :user_info do
  link "本人情報の登録", root_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", logout_path
  parent :mypage
end

crumb :pay_info do
  link "支払い方法", root_path
  parent :mypage
end

crumb :card_info do
  link "クレジットカード情報入力", root_path
  parent :pay_info
end

crumb :profile do
  link "プロフィール", root_path
  parent :mypage
end

crumb :exhibit_items do
  link "出品した商品-出品中", root_path
  parent :mypage
end

crumb :exhibit_item do
  link "出品商品画面", root_path
  parent :exhibit_items
end

# 以下、今後html.hamlに記載

# crumb :first_category do |first_category|
#   link "first_category.first_category", first_categories_path
#   parent :categories
# end

# .breads
#   - breadcrumb :pay_info
#   = breadcrumbs separator: "#{content_tag(:i, '', :class=>'fa fa-caret-right')}"

# .breads
#   - breadcrumbs :card_info
#   = breadcrumbs separator: "#{content_tag(:i, '', :class=>'fa fa-caret-right')}"

