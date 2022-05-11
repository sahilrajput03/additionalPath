Set xmlhttp = WScript.CreateObject("Microsoft.XMLHttp")
url = "https://ipv4.cloudns.net/api/dynamicURL/?q=MzE2MTk0ODoyMjUxMzk2MjI6OTY4MWQyMTRmMzY1NWI4YmFjZTJmMTNjYTA1NWI3ZDQ3ZTNjM2U4YTI4ZTgwNWNiMjVhMTQyYWYzNzFkMmIyZg"
xmlhttp.open "POST", url , False
xmlhttp.send "<?xml version='1.0'?><message><priority>0</priority></message>"