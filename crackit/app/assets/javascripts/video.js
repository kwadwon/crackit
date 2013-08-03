$(document).ready(function(){

	var apiKey = "37117652";
	var sessionId = "1_MX4zNzExNzY1Mn4xMjcuMC4wLjF-RnJpIEF1ZyAwMiAyMjowMzo1NCBQRFQgMjAxM34wLjk5OTUxNjl-";
	var token = "T1==cGFydG5lcl9pZD0zNzExNzY1MiZzZGtfdmVyc2lvbj10YnJ1YnktdGJyYi12MC45MS4yMDExLTAyLTE3JnNpZz0xNTYyZWE2ZTNlMzllYjMxMTU2ZTZjYjlkNTMyNThkYzE2Y2JmNjgxOnJvbGU9cHVibGlzaGVyJnNlc3Npb25faWQ9MV9NWDR6TnpFeE56WTFNbjR4TWpjdU1DNHdMakYtUm5KcElFRjFaeUF3TWlBeU1qb3dNem8xTkNCUVJGUWdNakF4TTM0d0xqazVPVFV4TmpsLSZjcmVhdGVfdGltZT0xMzc1NTA2MjM1Jm5vbmNlPTAuNTM5Njc3MDUwMjU5NDcwMyZleHBpcmVfdGltZT0xMzc1NTkyNjM1JmNvbm5lY3Rpb25fZGF0YT0=";

	// Initialize session, set up event listeners, and connect
	var session = TB.initSession(sessionId);
	session.addEventListener('sessionConnected', sessionConnectedHandler);
	session.connect(apiKey, token);
  
	function sessionConnectedHandler(event) {
		var publisher = TB.initPublisher(apiKey, 'myPublisherDiv');
		session.publish(publisher);
	}
	

});


