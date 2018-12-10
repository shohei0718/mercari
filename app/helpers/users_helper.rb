module UsersHelper
  def converting_zip_code(code)
    "〒#{code.to_s.insert(3, '-')}"
  end
end
