require 'welcome'
class Result < ActiveRecord::Base
  attr_accessible :Name, :Spirit, :Standings, :hello=Welcome.hi
    
end
