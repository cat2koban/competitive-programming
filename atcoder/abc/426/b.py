from collections import defaultdict

s = input()
l = list(s)
h = defaultdict(int)
for c in l:
    h[c] += 1

char = [k for k, v in h.items() if v == 1][0]
print(char)
