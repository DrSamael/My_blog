class Article < ApplicationRecord

  has_many :comments, -> { order "created_at ASC" }, dependent: :destroy
  has_and_belongs_to_many :tags

  validates :title, presence: {message: 'must be filled!'}, length: { minimum: 5 }
  validates :text, presence: true
  validates :published, acceptance: true
  # validates :text, exclusion: { in: %w(www us ca jp), message: "%{value} is reserved." }
  # validates :text, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters" }
  # validates :text, inclusion: { in: %w(small medium large), message: "%{value} is not a valid size" }, allow_blank: true
  # validates :text, numericality: { message: "%{value} seems wrong" }
  validates :text,
            uniqueness: {
              # object = person object being validated
              # data = { model: "Person", attribute: "Username", value: <username> }
              message: ->(object, data) do
                "Hey #{object.title}, #{data[:value]} is already taken."
              end
            }
  # with_options if: :published do |p|
  #   p.validates :title, presence: true
  #   p.validates :text, length: { minimum: 10 }
  # end



  before_validation :ensure_text_has_a_value
  before_validation :normalize_title, on: :create
  after_validation :normalize_text, on: [ :create, :update ]
  before_destroy :puts_FFF_in_logs


  private

  def puts_FFF_in_logs
    puts 'FFFFFFFFFFFFFFFFF'
  end

  def ensure_text_has_a_value
    if text.blank?
      self.text = title unless title.blank?
    end
  end

  def normalize_title
    self.title = title.upcase
  end

  def normalize_text
    self.text = text.downcase.titleize
  end


end
