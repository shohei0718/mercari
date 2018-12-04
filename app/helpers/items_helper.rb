module ItemsHelper
  def converting_price(price)
    "¥#{price.to_s(:delimited, delimiter: ',')}"
  end
end
