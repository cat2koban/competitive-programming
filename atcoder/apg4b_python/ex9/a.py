N = int(input())
A = int(input())

for i in range(1, N+1):
    op,b = map(str, input().split())
    b=int(b)
    if op=="+":
        A += b
    elif op=="-":
        A -= b
    elif op=="*":
        A *= b
    elif op=="/" and b!=0:
        A //= b
    else:
        print("error")
        break

    print(i, A)

