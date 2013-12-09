module FayeHelper
	def senddata(message)
		Faye_client.publish(message['channel'], {:text=> message['data']});
	end
end
