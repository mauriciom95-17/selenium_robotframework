import json
import requests

url = 'https://reqres.in/api/users/2'

response=requests.get(url)

print(response.text)

#Convertir en formato Json

json_response=json.loads(response.text)

print(json_response)