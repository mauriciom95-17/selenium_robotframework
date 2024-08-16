import json

val='{"id":1,"first_name":"Saxon","last_name":"Reddihough","email":"sreddihough0@webeden.co.uk","gender":"Male","ip_address":"172.230.212.5","Direccion_uno":"Nevada"}'

json_resultados=json.loads(val)

print(json_resultados)