require 'net/http'
require 'json'
 
array = ['/assets/1.gif', '/assets/2.gif'] #list of all images to loop through
i = 0


SCHEDULER.every '60s', first_in: 0 do |job|
	placeholder = array.at(i)
  	send_event('aww', image: placeholder)
   	i += 1
        if i == 171
        	i = 0
        end   
end
