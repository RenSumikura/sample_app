# == Schema Information
#
# Table name: roomtypes
#
#  id                    :integer          not null, primary key
#  hotel_id              :integer          not null              # ホテルid
#  name                  :string(50)       not null              # お部屋タイプ名
#  capacity              :integer          not null              # 定員人数
#  note                  :string(100)                            # お部屋タイプに関するメモ
#  created_at            :datetime
#  updated_at            :datetime
 
class Roomtype < ActiveRecord::Base
    belongs_to :hotel
end