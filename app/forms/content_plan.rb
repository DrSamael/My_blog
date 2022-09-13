module ContentPlan
  class FormObject < Reform::Form

    property :titles, virtual: true

    def initialize(params = nil)
      super(nil)

      self.titles = params[:titles] if params
    end

    def save
      Post.create( titles.map { |title| {title: title, status: :planned} } )
    end
  end
end