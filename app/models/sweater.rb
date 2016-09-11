class Sweater < ActiveRecord::Base
    belongs_to :order 
    belongs_to :base
    belongs_to :pocket
end
