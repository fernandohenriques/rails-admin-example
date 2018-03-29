class Log < ApplicationRecord
  belongs_to :usuario
  belongs_to :tipo_log
  has_one :video
end
