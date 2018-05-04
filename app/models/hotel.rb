# == Schema Information
#
# Table name: hotels
#
#  id            :integer          not null, primary key
#  name          :string(50)       not null              # ホテル名
#  address       :string(50)       not null              # 住所
#  foundation    :string           not null              # 設立年月
#  tel           :string(13)       not null              # 電話番号
#  created_at    :datetime
#  updated_at    :datetime
 
class Hotel < ActiveRecord::Base
    has_many :roomtypes,      dependent: :destroy
end