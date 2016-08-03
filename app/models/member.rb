# coding: utf-8
class Member < ApplicationRecord
  include EmailAddressChecker
  attr_accessor :password, :password_confirmation
  # 背番号は空は禁止
  validates :number, presence: true,
    # 整数であること
    numericality: { only_integer: true,
      # 1以上100未満
      greater_than: 0, less_than: 100, allow_blank: true },
    # 重複の禁止
    uniqueness: true

  # 名前は空は禁止
  validates :name, presence: true,
    # 半角英数字のみ、文字列の先頭はアルファベット
    format: { with: /\A[A-Za-z]\w*\z/, allow_blank: true, message: :invalid_member_name },
    # 2文字以上20文字以下
    length: { minimum: 2, maximum: 20, allow_blank: true},
    # 重複の禁止
    uniqueness: { case_sensitive: false }

  # 氏名は20文字以下、空でも可
  validates :full_name, length: { maximum: 20 }

  validate :check_email
    private
      def check_email
        if email.present?
          errors.add(:email, :invalid) unless well_formed_as_email_address(email)
        end
      end

  class << self
    def search(query)
      rel = order("number")
      if query.present?
        rel = rel.where("name LIKE ? OR full_name LIKE ?", "%#{query}%", "%#{query}%")
      end
      rel
    end
  end
end
