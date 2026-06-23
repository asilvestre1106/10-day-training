class Project < ApplicationRecord
  has_many :tasks, dependent: :nullify

  validates :name, presence: true

  accepts_nested_attributes_for :tasks, reject_if: :all_blank
end
