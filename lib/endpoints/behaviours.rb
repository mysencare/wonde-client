module Wonde
  class Behaviours < Endpoints
    @@uri = 'behaviours/'
    def initialize(token, id=false)
      super(token, id)
      self.uri = @@uri
      self.uri = id + '/' + @@uri if id
      self.uri = self.uri.gsub("//", "/").chomp('/')
    end

    def get(id, includes = {}, parameters = {})
      self.uri = self.uri + '/'
      super
    end

  end
end
