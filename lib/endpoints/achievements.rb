module Wonde
  class Achievements < Endpoints
    @@uri = 'achievements/'

    def initialize(token, id=false)
      super(token, id)
      self.uri = @@uri
      self.uri = "#{id}/#{@@uri}" if id
      self.uri = uri.gsub('//', '/').chomp('/')
    end

    def get(id, includes = {}, parameters = {})
      self.uri = "#{uri}/"
      super
    end
  end
end
