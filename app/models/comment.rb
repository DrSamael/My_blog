class Comment < ApplicationRecord

  belongs_to :article

  validates :commenter, presence: true, confirmation: { case_sensitive: false }, length: { minimum: 3 }
  # validates :commenter, confirmation: true
  validates :commenter_confirmation, presence: true

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Comment destroyed!!!!!!!!!!!!!!!'
  end

  # VALID_STATUSES = ['public', 'private', 'archived']
  #
  # validates :status, in: VALID_STATUSES
  #
  # def archived?
  #   status == 'archived'
  # end
end