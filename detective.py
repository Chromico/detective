
import requests
from requests.exceptions import ConnectionError

logo = ''' 

 ____    _____   _____   _____    ____   _____   ___  __     __  _____ 
|  _ \  | ____| |_   _| | ____|  / ___| |_   _| |_ _| \ \   / / | ____|
| | | | |  _|     | |   |  _|   | |       | |    | |   \ \ / /  |  _|  
| |_| | | |___    | |   | |___  | |___    | |    | |    \ V /   | |___ 
|____/  |_____|   |_|   |_____|  \____|   |_|   |___|    \_/    |_____|
                                                                       
'''
print(logo)
print("developed by CHROMICO")



sitelist = [line.rstrip('\n') for line in open('sites.txt')]

print("Number of sites supported:", len(sitelist))


f = input("Enter name to search:\n")


def print_found():
    
    print("User found on:", i)

def print_notfound():
    
    print("User not found on:", i)


proxies = {
    'http': 'http://user:pass@10.10.1.0:3128',
    'https': 'http://user:pass@10.10.1.0:3128',
}

s = requests.Session()
s.proxies = proxies

f = {}


try:
    for x in range(len(sitelist)): 

     i = sitelist[x]
    
     r = requests.get(i, data=f, timeout=20)

    

     if r.status_code == 200:
         
        print_found()

     elif r.status_code != 200:
       
        print_notfound()


except ConnectionError:
    print("There was a problem connecting to:", i)
    pass
