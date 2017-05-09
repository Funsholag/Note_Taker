class Todolist < ApplicationRecord
  belongs_to :user
  has many :lists, dependent: :destroy

end
