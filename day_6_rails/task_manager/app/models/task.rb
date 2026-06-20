class Task < ApplicationRecord
  belongs_to :project, optional: true

  validates :title, presence: true

  before_save :format_title

  private

  def format_title
    self.title = title.titleize if title.present?
  end
end
