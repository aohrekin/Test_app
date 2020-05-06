class Person < ApplicationRecord
  belongs_to :post
  validates :post, presence: true
  validates :first_name, presence: true, uniqueness: {scope: [:last_name, :second_name], case_sensitive: false}
  validates :last_name, presence: true, length: {maximum: 128, minimum: 2}
  validates :birthday, presence: true
  validates :sex, length: {is: 1}, inclusion: {in: ['м' ,'ж'], message: "введенное значение должно быть м или ж" }

end
