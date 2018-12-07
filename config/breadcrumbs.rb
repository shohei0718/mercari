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
  link "マイページ", users_path
  parent :root
end

crumb :honnninnjouhou do
  link "本人情報の登録", root_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", root_path
  parent :mypage
end

crumb :card do
  link "支払い方法", root_path
  parent :mypage
end

crumb :profile do
  link "プロフィール", root_path
  parent :mypage
end

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

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
