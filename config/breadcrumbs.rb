crumb :root do
  link "メルカリ", root_path
end

crumb :categories do
  link 'カテゴリー一覧', root_path
  parent :root
end

# crumb :first_category do |first_category|
#   link "first_category.first_category", first_categories_path
#   parent :categories
# end

crumb :category do
  link 'カテゴリー', categorys_path
  parent :categories
end

crumb :item_show do |item|
  link 'item.name', item_path
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

# .breads
#   - breadcrumb :pay_info
#   = breadcrumbs separator: "#{content_tag(:i, '', :class=>'fa fa-caret-right')}"

# .breads
#   - breadcrumbs :card_info
#   = breadcrumbs separator: "#{content_tag(:i, '', :class=>'fa fa-caret-right')}"

# 以下使い方

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end
