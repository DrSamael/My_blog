class Comment < ApplicationRecord

  belongs_to :article

  delegate :title, to: :article

  scope :gavno_name, -> { where(commenter: "gavno") }
  scope :gavno_name_and_777, -> { gavno_name.where("body = 777") }
  scope :recent, -> { where('created_at >= ?', Date.current.year - 50 )}
  scope :old, -> { where('created_at < ?', Date.current.year - 50 )}

  # validates :commenter, presence: true, confirmation: { case_sensitive: false }, length: { minimum: 3 }
  # validates :commenter, confirmation: true
  # validates :commenter_confirmation, presence: true
  validates :commenter, presence: true

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