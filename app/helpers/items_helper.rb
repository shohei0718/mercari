module ItemsHelper
  def converting_price(price)
    "¥#{price.to_s(:delimited, delimiter: ',')}"
  end
  def commission_jpy(commission)
  	"¥#{commission.floor.to_s(:delimited, delimiter: ',')}"
  end
  def profit_jpy(profit)
  	"¥#{profit.ceil.to_s(:delimited, delimiter: ',')}"
  end
end
