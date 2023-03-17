class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  has_many :comments

  after_commit :create_fake_comments, on: :create

  private

  def create_fake_comments
    FakeJob.perform_later(self)
  end
end
