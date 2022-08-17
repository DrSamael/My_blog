class NewWorker

  include Sidekiq::Worker
  # sidekiq_options queue: :catalog_queue, tags: ['AUTO_CATALOG']
  # sidekiq_options retry: false

  def perform(args)
    p args
    # logger.info "Things are happening."
    # logger.debug { "My args: #{args.inspect}" }
  end

end
