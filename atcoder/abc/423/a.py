x,c = map(int, input().split())
for i in range(x, -1000, -1000):
    ii = i // 1000
    j = x - ii * 1000
    print(j)
    pre = ii * (c / 1000)
    print(ii)
    print(pre)
    if pre+ii <= x:
        if ii>=c:
            print(ii)
            break
        else:
            print(0)
            break

