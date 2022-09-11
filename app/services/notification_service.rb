class NotificationService

  def self.call(params)
    new(params).call
  end

  def initialize(post)
    @post = post
  end

  def call
    portal_notification
  end

  def portal_notification
    PublishedPost.find_or_create_by(post: @post)
  end
end