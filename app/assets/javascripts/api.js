function createCORSrequest(method, url) {
  var xhr = new XMLHttpRequest();

  if ('withCredentials' in xhr) {
    xhr.open(method, url, true);
  } else if (typeof XDomainRequest != 'undefined') {
    xhr = new XDomainRequest();
    xhr.withCredentials = true;
    xhr.open(method, url);
  } else {
    xhr = null;
  }
  return xhr;
}

function makeCORSrequest() {
  var teamURL = 'https://api.sportradar.us/mlb-t5/league/active_rosters.json?api_key=88wqfh5nswegkgjhp23ptrse'

  var teamRequest = createCORSrequest('GET', teamURL)
  if (!teamRequest) {
    throw new Error('CORS not supported')
  }

  teamRequest.onload = function() {
    if (this.status >= 200 && this.status < 400) {
      teamResponse = JSON.parse(this.responseText)
      console.log(teamResponse)
    } else {
      console.log('The request failed' + this.status)
    }
    // var cubsInfo = teamResponse['teams'][17]
  }

  teamRequest.send();
}

