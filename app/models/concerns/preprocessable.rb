module Preprocessable
  extend ActiveSupport::Concern

  included do
    before_save :preprocess

    def preprocess(host_name = 'http://localhost:3000/redirect')
      urls = []
      start_from = -1
      url = ''

      while start_from
        url = self.name.match(URI.regexp, start_from + url.length).to_s
        start_from = self.name.index(URI.regexp, start_from + url.length)
        urls << url
      end

      clear_urls = urls.select { |u| u.match(/http/) && !u.match(host_name) }

      clear_urls.each do |url|
        sub_url = url.split(')')
        new_host_name = host_name + sub_url[0]
        sub_url[0] = new_host_name

        new_url = ''

        if sub_url.length > 1
          new_url = sub_url.join(')')
        elsif url.index(')')
          new_url = new_host_name + ')'
        else
          new_url = new_host_name
        end

        self.name.gsub!(url, new_url)
      end

      self
    end
  end

  class_methods do
    def test
      p 'Preprocessable test'
    end
  end
end