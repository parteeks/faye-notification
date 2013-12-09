function faye_subscription(url,channel, notification_data) {
	var client = new Faye.Client(url);
	var public_subscription = client.subscribe(channel,notification_data);
}

//Called when data is received
function notification_data(data) {
    jQuery('<p></p>').html(data.text).appendTo('#notification-section');
}


//faye_subscription('http://localhost:9292/faye','/messages/public', notification_data);