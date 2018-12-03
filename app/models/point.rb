class Point < ApplicationRecord
  belongs_to :user
  belongs_to :point_status
end
