#rackup faye.ru -E production -s thin
require 'faye' 
bayeux = Faye::RackAdapter.new(:mount => '/faye', :timeout => 25)
run bayeux