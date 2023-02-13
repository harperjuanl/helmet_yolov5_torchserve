import requests
import base64

url = "http://localhost:8080/predictions/helmet_detection"

payload="./1.jpg"
headers = {
  'Content-Type': 'image/jpeg'
}


with open(payload, "wb") as image:
  f = image.read()
  b = bytearray(f)
  base64_data = base64.b64encode(f)
  # print(base64_data)
  
  image.write(base64_data)
  # print(b)

f = open('img.txt', 'a')
f.write(base64_data)

response = requests.request("POST", url, headers=headers, data=b)

print(response.text)