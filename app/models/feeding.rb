class Feeding < ActiveRecord::Base
  def self.getLast48Hours()
    twoDaysAgo=DateTime.now-(60*60*48)
    where("starttime >= '#{twoDaysAgo}'")
  end
end
