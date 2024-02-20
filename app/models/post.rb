class Post < ApplicationRecord
validates :title,  {presence:true,length: {maximum: 25,} }
validates :memo, {length: {maximum: 500,} }

validate :start_end_check

def start_end_check
  if start_date.present? && end_date.present? && start_date > end_date
    errors.add(:base, "終了日は開始日より前の日付は入力できません")
  end
end
end
