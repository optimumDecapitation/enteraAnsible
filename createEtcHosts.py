import json
import re
#from pprint import pprint

with open('awsHostIPs.json') as f:
    data = json.load(f)

hostIPs = data["hosts"]

f = open("/etc/ansible/hosts2", "w")

f.write("[servers]\n")
hostCount = 1
for ip in hostIPs:
    #print(ip[0])
    f.write("server"+str(hostCount)+" ansible_host="+ip[0]+"\n")
    hostCount = hostCount + 1
f.write("[servers:vars]\n")
f.write("ansible_python_interpreter=/usr/bin/python3\n")

f.close()
