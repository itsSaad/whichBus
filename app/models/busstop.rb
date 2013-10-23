class Busstop < ActiveRecord::Base
    has_many     :route_busstops
    has_many     :routes, through: :route_busstops
    belongs_to   :admin
    
    
    validates :busStopName, presence: true
    validates :busStopLatLong, presence: true
end
