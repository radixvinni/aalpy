#coding:utf-8






def copymas(a):
    ret=[]
    for i in range(0,len(a)):
        ret.append(a[i])
    return ret

# удаление при старших степенях нулей
def delzeroend(a):
    while(len(a)>0):
        if(a[len(a)-1] != 0):
            return a
        else:
            a.pop()
    return [0]

# сумма в кольце Z
# возвращает сумму элементов a и b
# a, b - элементы кольца Z
def addZ(a, b):
    return a+b






# сумма в кольце Zn
# возвращает сумму элементов a и b
# a, b - элементы кольца Zn
def addZn(a, b):
    global n
    return (a+b)%n






# сумма в кольце Zp
# возвращает сумму элементов a и b
# a, b - элементы кольца Zp
def addZp(a, b):
    global p
    return (a+b)%p






# разность в кольце Z
# возвращает разность элементов a и b
# a, b - элементы кольца Z
def subZ(a, b):
    return a-b






# разность в кольце Zn
# возвращает разность элементов a и b
# a, b - элементы кольца Zn
def subZn(a, b):
    global n
    return (a-b)%n






# разность в кольце Zp
# возвращает разность элементов a и b
# a, b - элементы кольца Zp
def subZp(a, b):
    global p
    return (a-b)%p






# умножение в кольце Z
# возвращает произведение элементов a и b
# a, b - элементы кольца Z
def mulZ(a, b):
    return a*b






# умножение в кольце Zn
# возвращает произведение элементов a и b
# a, b - элементы кольца Zn
def mulZn(a, b):
    global n
    return (a*b)%n






# умножение в кольце Zp
# возвращает произведение элементов a и b
# a, b - элементы кольца Zp
def mulZp(a, b):
    global p
    return (a*b)%p






# сумма в кольце Z[X]
# возвращает сумму элементов a и b
# a, b - элементы кольца Z[X]
def addZX(a, b):
    s=[]
    ret=[]
    if len(a) > len(b):
        l=len(b)
        ret=copymas(a)
    else:
        l=len(a)
        ret=copymas(b)
    for i in range(0,l):
        s.append((a[i]+b[i]))
    for i in range(l,len(ret)):
        s.append((ret[i]))
    return delzeroend(s)






# сумма в кольце Zn[X]
# возвращает сумму элементов a и b
# a, b - элементы кольца Zn[X]
def addZnX(a, b):
    global n
    s=[]
    ret=[]
    if len(a) > len(b):
        l=len(b)
        ret=copymas(a)
    else:
        l=len(a)
        ret=copymas(b)
    for i in range(0,l):
        s.append(((a[i]+b[i])%n))
    for i in range(l,len(ret)):
        s.append((ret[i]%n))
    return delzeroend(s)






# разность в кольце Z[X]
# возвращает разность элементов a и b
# a, b - элементы кольца Z[X]
def subZX(a, b):
    s=[]
    ret=[]
    if len(a) > len(b):
        l=len(b)
        ret=copymas(a)
    else:
        l=len(a)
        for i in range(0,len(b)):
            ret.append((-b[i]))
    for i in range(0,l):
        s.append((a[i]-b[i]))
    for i in range(l,len(ret)):
        s.append((ret[i]))
    return delzeroend(s)






# разность в кольце Zn[X]
# возвращает разность элементов a и b
# a, b - элементы кольца Zn[X]
def subZnX(a, b):
    global n
    s=[]
    ret=[]
    if len(a) > len(b):
        l=len(b)
        ret=copymas(a)
    else:
        l=len(a)
        for i in range(0,len(b)):
            ret.append(-b[i])
    for i in range(0,l):
        s.append(((a[i]-b[i])%n))
    for i in range(l,len(ret)):
        s.append((ret[i]%n))
    return delzeroend(s)






# умножение на скаляр в кольце Z[X]
# возвращает произведение элемента c на вектор a
# c - элемент кольца Z
# a - элемент кольца Z[X]
def smulZX(c, a):
    s=[]
    l=len(a)
    for i in range(0,l):
        s.append((a[i]*c))
    return delzeroend(s)






# умножение на скаляр в кольце Zn[X]
# возвращает произведение элемента c на вектор a
# c - элемент кольца Zn
# a - элемент кольца Zn[X]
def smulZnX(c, a):
    global n
    s=[]
    l=len(a)
    for i in range(0,l):
        s.append(((a[i]*c)%n))
    return delzeroend(s)






# перемножение методом сдвигов и сложений в кольце Z[X]
# возвращает произведение элементов a и b
# a, b - элементы кольца Z[X]
def mulZX(a, b):
    s=[0 for i in range(0,len(a)+len(b)-1)]
    for i in range(0,len(b)):
        for j in range(0,len(a)):
            s[i+j]=addZ(s[i+j],mulZ(b[i],a[j]))
    return delzeroend(s)






# перемножение методом сдвигов и сложений в кольце Zn[X]
# возвращает произведение элементов a и b
# a, b - элементы кольца Zn[X]
def mulZnX(a, b):
    global n
    s=[0 for i in range(0,len(a)+len(b)-1)]
    for i in range(0,len(b)):
        for j in range(0,len(a)):
            s[i+j]=addZn(s[i+j],mulZn(b[i],a[j]))
    return delzeroend(s)






# деление с остатком в кольце Z
# возвращает целую часть и остаток от деления a на b
# a, b - элементы кольца Z
def divZ(a, b):
    return a//b, a%b







# расширенный алгоритм Евклида в кольце Z
# возвращает x, y, НОД из уравнения a*x+b*y=НОД
# a, b - элементы кольца Z
def EuclidZ(a, b):
    if b == 0:
        return 1, 0, a
    else:
        x, y, d = EuclidZ(b, a%b)
        return y, x-y*(a//b), d









# обратный элемент в кольце Fp
# возвращает обратный элемент a^(-1) к элементу a
# a - элемент кольца Fp
def invFp(a):
    global p
    return divZ(EuclidZ(a,p)[0],p)[1]






# возведение в степень в кольце Z
# возвращает степень pw числа a
# a, pw - элементы кольца Z
def powerZ(a, pw):
    ret=1
    pr=a
    while pw!=0:
        if pw%2==1:
            ret*=pr
            pw-=1
        else:
            pr*=pr
            pw/=2
    return ret







# возведение в степень в кольце Zn
# возвращает степень pw числа a
# a - элемент кольца Zn
# pw - элемент кольца Z
def powerZn(a, pw):
    global n
    ret=1
    pr=a
    while pw!=0:
        if pw%2==1:
            ret*=pr%n
            pw-=1
        else:
            pr*=pr%n
            pw/=2
    return ret







# возведение в степень в кольце Zp
# возвращает степень pw числа a
# a - элемент кольца Zp
# pw - элемент кольца Z
def powerZp(a, pw):
    global p
    ret=1
    pr=a
    while pw!=0:
        if pw%2==1:
            ret*=pr%p
            pw-=1
        else:
            pr*=pr%p
            pw/=2
    return ret







# возведение в степень в кольце Z[X]
# возвращает степень pw вектора a
# a - элемент кольца Z[X]
# pw - элемент кольца Z
def powerZX(a, pw):
    l=len(a)
    ret=[1]
    pr=copymas(a)
    while pw!=0:
        if pw%2==1:
            if ret==1:
                ret=copymas(a)
            else:
                ret=mulZX(ret,pr)
            pw-=1
        else:
            pr=mulZX(pr,pr)
            pw/=2
    return ret







# возведение в степень в кольце Zn[X]
# возвращает степень pw вектора a
# a - элемент кольца Zn[X]
# pw - элемент кольца Z
def powerZnX(a, pw):
    l=len(a)
    ret=[1]
    pr=copymas(a)
    while pw!=0:
        if pw%2==1:
            if ret==1:
                ret=copymas(a)
            else:
                ret=mulZnX(ret,pr)
            pw-=1
        else:
            pr=mulZnX(pr,pr)
            pw/=2
    return ret







# деление многочленов с остатком в кольце Zn[X]
# возвращает целую часть и остаток от деления a на b
# a, b - элементы кольца Zn[X]
def divZnX(a, b):
    if (b == [0]):
        return "error"
    buf = copymas(a)
    if (len(buf) < len(b)):
        return [0], buf
    ddiv = [0 for i in range(len(a) - len(b) + 1)]
    while (len(buf) >= len(b) and buf != [0]):
        c = []
        div = 0
        for i in range(0, len(b)):
            c.insert(0, buf[len(buf) - 1 - i])
        div=c[len(c)-1]//b[len(b)-1]
        c=delzeroend(subZnX(c, smulZnX(div, b)))
        ddiv[len(buf) - len(b)] = div
        for i in range(0, len(b)):
            buf.pop()
        if (c != [0]):
            for i in range(0, len(c)):
                buf.append(c[i])
        else:
            if (len(buf) == 0 and c == [0]):
                buf.append(0)
        if len(c)==len(b):
            break
    return ddiv, buf







# деление многочленов с остатком в кольце Z[X]
# возвращает целую часть и остаток от деления a на b
# a, b - элементы кольца Z[X]
def divZX(a, b):
    if (b == [0]):
        "Ошибка деление на 0 !"
        return "error"
    buf = copymas(a)
    if (len(buf) < len(b)):
        return [0], buf
    ddiv = [0 for i in range(len(a) - len(b) + 1)]
    while (len(buf) >= len(b) and buf != [0]):
        c = []
        div = 0
        for i in range(0, len(b)):
            c.insert(0, buf[len(buf) - 1 - i])
        div=c[len(c)-1]//b[len(b)-1]
        c=delzeroend(subZX(c, smulZX(div, b)))
        ddiv[len(buf) - len(b)] = div
        for i in range(0, len(b)):
            buf.pop()
        if (c != [0]):
            for i in range(0, len(c)):
                buf.append(c[i])
        else:
            if (len(buf) == 0 and c == [0]):
                buf.append(0)
        if len(c)==len(b):
            break
    return ddiv, buf







# алгоритм Евклида в кольце Z[X]
# возвращает x, y, НОД из уравнения a*x+b*y=НОД
# a, b - элементы кольца Z[X]
def EuclidZX(a, b):
    c1 = [0]
    c = [1]
    d1 = [1]
    d = [0]
    u = delzeroend(a)
    v = delzeroend(b)
    while not v == [0]:
        qr = divZX(u, v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subZX(cold, mulZX(q, c1))
        dold = d
        d = d1
        d1 = subZX(dold, mulZX(q, d1))
        u = v
        v = r
    return c, d, u









# алгоритм Евклида в кольце Zn[X]
# возвращает x, y, НОД из уравнения a*x+b*y=НОД
# a, b - элементы кольца Zn[X]
def EuclidZnX (a, b):
    c1 = [0]
    c = [1]
    d1 = [1]
    d = [0]
    u = a
    v = b
    while not v == [0]:
        qr = divZnX(u, v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subZnX(cold, mulZnX(q, c1))
        dold = d
        d = d1
        d1 = subZnX(dold, mulZnX(q, d1))
        u = v
        v = r
    return c, d, u









#############################################################################


















#Функция удаления не значащих нулей
#a - элемент кольца Z(Fp)[X]
def delzeroend(a):
    while(len(a)>0):
        if(a[len(a)-1] != 0):
            return a
        else:
            a.pop()
    return [0]

#Вспомогатльная функция для копирования списка
#a-элемент кольца Z(Fp)[X]
def copyelem(a):
    c=[]
    for i in range(0,len(a)):
        c.append(a[i])
    return c

#Сложение в кольце Z(Fp)[X]"
#a, b - элементы кольца Z(Fp)[X]
def addFpX(a,b):
    c=[]
    if(len(a)>len(b)):
        for it in range(0,len(b)):
            c.append(addZp(a[it],b[it]))
        for it in range(len(b),len(a)):
            c.append(a[it])    
    else:
        if(len(a)==len(b)):
            for it in range(0,len(a)):
                c.append(addZp(a[it],b[it]))
        else:
            for it in range(0,len(a)):
                c.append(addZp(a[it],b[it]))
            for it in range(len(a),len(b)):
                c.append(b[it])
    return delzeroend(c)







#Функция нахождение противоположного элемента
#a - элемент кольца Z(Fp)[X]
def negateFpX(a):
    c=[]
    for i in range(0,len(a)):
        c.append(addZp(0,-a[i]))
    return c


#Вычитание в кольце Z(Fp)[X]"
#a, b - элементы кольца Z(Fp)[X]
def subFpX(a,b):
    return delzeroend(addFpX(a,negateFpX(b)))







#Умножение на скаляр в кольце Z(Fp)[X]"
#a - элемент кольца Z(Fp)[X],scal - элемент Fp
def smulFpX(a,scal):
    c=[]
    scal = addZp(0,scal)
    for it in range(0,len(a)):
        c.append(mulZp(a[it],scal))
    return delzeroend(c)







#Перемножение методом сдвигов и сложений в кольце Z(Fp)[X]"
#a, b - элементы кольца Z(Fp)[X]
def mulFpX(a,b):
    c=[0 for i in range(len(a)+len(b)-1)]
    for ib in range(0,len(b)):
        for ia in range(0,len(a)):
            c[ia + ib] = addZp(c[ia + ib],mulZp(a[ia],b[ib])) #c[ia + ib] = (c[ia + ib] + a[ia] * b[ib])%p
    return delzeroend(c)







#Деление с остатком в кольце Z(Fp)[X]"
#a, b - элементы кольца Z(Fp)[X]
def divFpX(a,b):
    if(b==[0]):
        print "Ошибка деление на 0 !"
        return "error"
        
    buf = copyelem(a)
    if(len(buf)<len(b)):
        return [[0],buf]
        
    ddiv=[0 for i in range(len(a)-len(b)+1)]
    while(len(buf)>=len(b) and buf!=[0]):
        c=[]
        div=0
        #Взяли часть от a и записали её в новую переменную c
        for i in range(0,len(b)):
            c.insert(0,buf[len(buf)-1-i])
        
        #Найдём остаток от разности c и b
        #c!=[0] необходимо , чтобы при len(b)==1 происходил сразу же выход!
        while(len(c)==len(b) and c!=[0]):
            c  = subFpX(c,b) 
            div+=1 
            
        #запоминаем частное
        ddiv[len(buf)-len(b)]=div 
        
        #Удалим из buf = a последнии len(b) символов
        for i in range(0,len(b)):
            buf.pop()
        
        #Припишем остаток c%b к buf = a в конец , если c%b не равен 0
        if(c!=[0]):
            for i in range(0,len(c)):
                buf.append(c[i])
        else:
            if(len(buf)==0 and c==[0]):
                buf.append(0)
    return [ddiv,buf]










#Разложение показателя степени по основанию порядка элемента набора,начиная со старшего разряда"
#a - целое число >0
def decToFpX(a):
    Blist=[]
    while not a==0:
        q=divZ(a,p)
        Blist.insert(0,q[1])
        a=q[0]
    return Blist

#Разложение показателя степени в бинарный список,начиная со старшего разряда"
#a - целое число >0
def decToBinFpX(a):
    Blist=[]
    while not a==0:
        q=divZ(a,2)
        Blist.insert(0,q[1])
        a=q[0]
    return Blist
    
#Возведение в степень: показатель степени раскладывается в бинарный набор" 
#a - элемент кольца Z(Fp)[X],d - целое число >0
def powerBinFpX(a,d):
    dbin=decToBinFpX(d)
    n=len(dbin)
    b=[1]
    for it in range(0,n):
        if (dbin[it] == 1):
            b = mulFpX(mulFpX(b,b),a)
        else:
            b = mulFpX(b,b)
    return b   

#Вспомогательная функция: для случая x^p, где p-порядок Fp
#a - элемент кольца Z(Fp)[X]
def powerdegpFpX(a):
    c=[]
    for j in range(0,len(a)-1):
        c.append(a[j])
        for i in range(0,p-1):
            c.append(0)
    c.append(a[len(a)-1])
    return c

#Возведение в степень в кольце Z(Fp)[X]"
#a- элемент кольца Z(Fp)[X],d - целое число > 0
def powerFpX(a,d):
    if (d==p):
        return powerdegpFpX(a)
    else:
        if(d==0):
            return [1]
        else:
            dp=decToFpX(d)
            n=len(dp)
            b = [1]
            for it in range(0,n):
                b = mulFpX(powerdegpFpX(b),powerBinFpX(a,dp[it]))
            return b



dg = 2



# Алгоритм Евклида в кольце Z(Fp)[X]
# Возвращает НОД двух элементов
# a, b - элементы кольца Z(Fp)[X]
def EuclidFpX(a,b):
    c1 = [0]
    c = [1]
    d1 = [1]
    d = [0]
    u = a
    v = b
    while not v == [0]:
        qr = divFpX(u,v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFpX(cold,mulFpX(q,c1))
        dold = d
        d = d1
        d1 = subFpX(dold,mulFpX(q,d1))
        u = v
        v = r
    return (c,d,u)# [c*a + d*b = u], u - НОД(a,b)









#Приведения по модулю неприводимого многочлена f(X) в поле Fp^l
#a - элемент кольца Z(Fp)[X]
def modf(a):
    return divFpX(a,f)[1]

#Сложение в поле Fp^l"
#a,b - элементы поля Fp^l
def addFpl(a,b):
    return addFpX(a,b)







#Вычитание в поле Fp^l"
#a,b - элементы поля Fp^l
def subFpl(a,b):
    return subFpX(a,b)
    






#Умножение на скаляр в поле Fp^l"
#a - элемент поля Fp^l,sl - элемент Fp
def smulFpl(a,sl):
    return smulFpX(a,sl)







#Перемножение методом сдвигов и сложений в поле Fp^l
#a,b - элементы поля Fp^l
def mulFpl(a,b):
    return modf(mulFpX(a,b))







#Вспомогательная функция: для случая x^(p^l), где p-порядок Fp,l-степень f(X)
#a - элемент поля Fp^l
def powerdegplFpl(a):
    c=[]
    for j in range(0,len(a)-1):
        c.append(a[j])
        for i in range(0,n-1):
            c.append(0)
    c.append(a[len(a)-1])
    return modf(c)

#Разложение показателя степени по основанию p^l,начиная со старшего разряда"
#a - целое число > 0 
def decToFpl(a):
    Blist=[]
    while not a==0:
        q=divZ(a,n)
        Blist.insert(0,q[1])
        a=q[0]
    return Blist

#Возведение в степень в поле Fp^l
#a - элемент поля Fp^l,a - целое число > 0 
def powerFpl(a,d):
    if (d == p):
        return modf(powerdegpFpX(a))
    else:
        if (d == n):
            return powerdegplFpl(a)
        else:
            dpl=decToFpl(d)
            ln=len(dpl)
            b = [1]
            for it in range(0,ln):
                b = mulFpl(powerdegplFpl(b),modf(powerFpX(a,dpl[it])))
            return b



dg = 113



#Обращение в поле Fp^l"
#a - элемент поля Fp^l
def invFpl(a):
    c1 = [0]
    c = [1]
    u = a
    v = f
    while len(v) > 1:
        qr = divFpX(u,v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFpl(cold,mulFpl(q,c1))
        u = v
        v = r
    c = smulFpl(c1,invFp(v[0]))
    return (c,[1])








#############################################################################


















# Функция, убирающая незначащие нули
# a - элемент поля Fp^l
def clearNulls(a):
    lena = len(a)
    while (lena > 1) & (a[lena - 1] == [0]):
        a.pop(lena - 1)
        lena = lena - 1
    return a

# Сложение в кольце Fp^l[Y]
# a1, a2 - элементы кольца Fp^l[Y]
def addFplY(a1, a2):
    global l
    rez = []
    m = len(a1)
    prom = a2
    if len(a1) > len(a2):
        m = len(a2)
        prom = a1
    for i in range(m):
        rez.append(addFpl(a1[i], a2[i]))
    for i in range(m, len(prom)):
        rez.append(prom[i])
    return clearNulls(rez)







# Сложение в поле Fp^l[Y]f(Y)= Fp^ld
# a1, a2 - элементы поля Fp^ld
def addFpld(a1, a2):
    global d, l
    rez = []
    for i in range(d):
        rez.append(addFpl(a1[i], a2[i]))
    return rez







# Вычитание в кольце Fp^l[Y]
# a1, a2 - элементы кольца Fp^l[Y]
def subFplY(a1, a2):
    global l
    rez = []
    m = len(a1)
    prom = a2
    if len(a1) > len(a2):
        m = len(a2)
        prom = a1
    for i in range(m):
        rez.append(subFpl(a1[i], a2[i]))
    for i in range(m, len(prom)):
        if len(prom) == len(a1):
            rez.append(prom[i])
        else:
            rez.append(subFpl([0], a2[i]))
    return clearNulls(rez)








# Вычитание в поле Fp^l[Y]f(Y)= Fp^ld
# a1, a2 - элементы кольца Fp^l[Y]
def subFpld(a1, a2):
    global d, l
    rez = []
    for i in range(d):
        rez.append(subFpl(a1[i], a2[i]))
    return rez








# Умножение на скаляр в кольце Fp^l[Y]
# a - элемент кольца Fp^l[Y]
# c - элемент поля Fp^l
def smulFplY(a, c):
    rez = []
    for i in range(len(a)):
        rez.append(mulFpl(a[i], c))
    return clearNulls(rez)









# Умножение на скаляр в поле Fp^l[Y]f(Y)= Fp^ld
# a - элемент поля Fp^ld
# c - элемент поля Fp^l
def smulFpld(a, c):
    global d
    rez = []
    for i in range(d):
        rez.append(mulFpl(a[i], c))
    return rez









# Деление в кольце Fp^l[Y]
# a1, a2 - элементы кольца Fp^l[Y]
def divFplY(a1, a2):
    pr = a1
    lena = len(a1)
    lenb = len(a2)
    while (a2[lenb - 1] == [0]) & (lenb >= 1):
        lenb = lenb - 1
    if lena < lenb:
        return [[[0]], a1]
    if lenb == 0:
        return "error"
    rez1 = [[0] for i in range(lena - lenb + 1)]
    rez2 = [[0] for i in range(0, lena)]
    for i in range(lena - lenb + 1):
        c = mulFpl(invFpl(a2[lenb - 1])[0], pr[len(pr)-1])
        rez1[lena - lenb - i] = c
        prom = []
        for j in range(lena - lenb - i):
            prom.append(pr[j])
        pr = prom + subFplY(pr[lena - lenb - i:], smulFplY(a2, c))
    for i in range(0, len(pr)):
        rez2[i] = pr[i]
    return [clearNulls(rez1), clearNulls(rez2)] # [частное, остаток]
















# Перемножение методом сдвигов и сложений в кольце Fp^l[Y]
# a1, a2 - элементы кольца Fp^l[Y]
def mulFplY(a1, a2):
    global l
    rez = [[0] for i in range(len(a1) + len(a2) - 1)]
    for i in range(0, len(a2)):
        for j in range(0, len(a1)):
            rez[i + j] = addFpl(rez[i + j], mulFpl(a2[i], a1[j]))
    return clearNulls(rez)







# Перемножение методом сдвигов и сложений и приведение по модулю многочлена mod(Y) в поле Fp^l[Y]f(Y)= Fp^ld
# a1, a2 - элементы поля Fp^ld
def mulFpld(a1, a2):
    global l, d, mod
    rez = [[0] for i in range(2 * d - 1)]
    for i in range(0, d):
        for j in range(0, d):
            rez[i + j] = addFpl(rez[i + j], mulFpl(a2[i], a1[j]))
    rez = divFplY(rez, mod)[1]
    return rez







# Возведение в степень в кольце Fp^l[Y]
# a1 - элемент кольца Fp^l[Y]
# pw - целое число > 0
def powerFplY(a1, pw):
    rez = [[1]]
    pr = a1
    while pw != 0:
        if pw % 2 == 1:
            if rez == [[1]]:
                rez = pr
            else:
                rez = mulFplY(rez, pr)
            pw -= 1
        else:
            pr = mulFplY(pr, pr)
            pw /= 2
    return rez



dg = 2

dg = 3



# Возведение в степень в поле Fp^l[Y]f(Y)= Fp^ld
# a1 - элемент поля Fp^ld
# pw - целое число > 0
def powerFpld(a1, pw):
    global mod
    rez = [[1]]
    pr = a1
    while pw != 0:
        if pw % 2 == 1:
            if rez == [[1]]:
                rez = pr
            else:
                rez = divFplY(mulFplY(rez, pr), mod)[1]
            pw -= 1
        else:
            pr = divFplY(mulFplY(pr, pr), mod)[1]
            pw /= 2
    return rez



dg = 2

dg = 3



# Алгоритм Евклида в кольце Fp^l[Y]
# Возвращает НОД двух элементов
# a1, b1 - элементы кольца Fp^l[Y]
def EuclidFplY(a1, b1):
    c1 = [[0]]
    c = [[1]]
    d1 = [[1]]
    d0 = [[0]]
    u = clearNulls(a1)
    v = clearNulls(b1)
    while not v == [[0]]:
        #print c,d0,u
        qr = divFplY(u, v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFplY(cold, mulFplY(q, c1))
        dold = d0
        d0 = d1
        d1 = subFplY(dold, mulFplY(q, d1))
        u = v
        v = r
    return [c, d0, u] # [c*a1 + d0*b1 = u], u - НОД(a1,a2)










# Обращение в поле Fp^l[Y]f(Y)= Fp^ld
# Возвращает обратный к a элемент: a*a^-1 = [[1]]
# a1 - элемент поля Fp^ld
def invFpld(a1):
    global mod
    c1 = [[0]]
    c = [[1]]
    u = a1
    v = mod
    while len(v) > 1:
        qr = divFplY(u,v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFplY(cold,mulFplY(q,c1))
        u = v
        v = r
    c = smulFplY(c1,invFpl(v[0])[0])
    return divFplY(c,mod)[1]







