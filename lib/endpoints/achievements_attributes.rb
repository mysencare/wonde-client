module Wonde
class AchievementsAttributes < Endpoints
    @@uri = 'achievements/attributes'
    def initialize(token, id=false)
      super(token,id)
      self.uri = @@uri
      self.uri = id + '/' + @@uri if id
      self.uri = self.uri.gsub('//','/').chomp('/')
    end
  end
end
