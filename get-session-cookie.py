# import the requests library
import requests
  
# initialize a session
session = requests.Session()
  
# send a get request to the server
response = session.get('https://youtube.com')

# print the response dictionary
print(session.cookies.get_dict())
