h = {}
h["Ocelot"] = 0
h["Serval"] = 1
h["Lynx"] = 2
x,y = input().split()
if (h[x] >= h[y]):
    print("Yes")
else:
    print("No")
