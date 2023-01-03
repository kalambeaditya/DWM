lst = [20,50,40,30,90,80,70,100,200]
temp = lst[0]
for x in range(len(lst)):
        if temp<lst[x]:
            temp = lst[x]
temp2 = lst[0]
for x in range(len(lst)):
        if temp2<lst[x]:
            if lst[x]!=temp:
                temp2 = lst[x]
print(temp2)