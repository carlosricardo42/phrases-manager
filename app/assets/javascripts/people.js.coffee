# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Open Graph Function to load the facebook shared button
((d, s, id) ->
  fjs = d.getElementsByTagName(s)[0];
  if d.getElementById(id)
    return
  js = d.createElement(s)
  js.id = id
  js.src = 'https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v3.1&appId=1961804844110871&autoLogAppEvents=1'
  fjs.parentNode.insertBefore js, fjs
  return
)(document, 'script', 'facebook-jssdk')
