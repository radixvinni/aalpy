#coding:utf-8
def copymas(a):
    ret=[]
    for i in range(0,len(a)):
        ret.append(a[i])
    return ret

# сумма в кольце Z
def addZ(a, b):
    return a+b

# сумма в кольце Zn
def addZn(a, b):
    global n
    return (a+b)%n

# сумма в кольце Zp
def addZp(a, b):
    global p
    return (a+b)%p

# разность в кольце Z
def subZ(a, b):
    return a-b

# разность в кольце Zn
def subZn(a, b):
    global n
    return (a-b)%n

# разность в кольце Zp
def subZp(a, b):
    global p
    return (a-b)%p

# умножение в кольце Z
def mulZ(a, b):
    return a*b

# умножение в кольце Zn
def mulZn(a, b):
    global n
    return (a*b)%n

# умножение в кольце Zp
def mulZp(a, b):
    global p
    return (a*b)%p

# сумма в кольце ZX
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

# сумма в кольце ZnX
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

# разность в кольце ZX
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

# разность в кольце ZnX
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

# умножение на скаляр в кольце ZX
def smulZX(c, a):
    s=[]
    l=len(a)
    for i in range(0,l):
        s.append((a[i]*c))
    return delzeroend(s)

# умножение на скаляр в кольце ZnX
def smulZnX(c, a):
    global n
    s=[]
    l=len(a)
    for i in range(0,l):
        s.append(((a[i]*c)%n))
    return delzeroend(s)

# перемножение методом сдвигов и сложений в кольце Z[X]
def mulZX(a, b):
    s=[0 for i in range(0,len(a)+len(b)-1)]
    for i in range(0,len(b)):
        for j in range(0,len(a)):
            s[i+j]=addZ(s[i+j],mulZ(b[i],a[j]))
    return delzeroend(s)

# перемножение методом сдвигов и сложений в кольце Zn[X]
def mulZnX(a, b):
    global n
    s=[0 for i in range(0,len(a)+len(b)-1)]
    for i in range(0,len(b)):
        for j in range(0,len(a)):
            s[i+j]=addZn(s[i+j],mulZn(b[i],a[j]))
    return delzeroend(s)

# деление с остатком в кольце Z
def divZ(a, b):
    return a//b, a%b

# расширенный алгоритм Евклида в кольце Z(возвращает: x, y, НОД из уравнения a*x+b*y=НОД)
def EuclidZ(a, b):
    if b == 0:
        return 1, 0, a
    else:
        x, y, d = EuclidZ(b, a%b)
        return y, x-y*(a//b), d


# обратный элемент в кольце Fp
def invFp(a):
    global p
    return divZ(EuclidZ(a,p)[0],p)[1]

# возведение в степень в кольце Z
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
def powerZX(a, pw):
    l=len(a)
    ret=1
    pr=copymas(a)
    while pw!=0:
        if pw%2==1:
            if ret==1:
                ret=copymas(a)
            else:
                mulZX(ret,pr)
            pw-=1
        else:
            mulZX(pr,pr)
            pw/=2
    return ret

# возведение в степень в кольце Zn[X]
def powerZnX(a, pw):
    l=len(a)
    ret=1
    pr=copymas(a)
    while pw!=0:
        if pw%2==1:
            if ret==1:
                ret=copymas(a)
            else:
                mulZnX(ret,pr)
            pw-=1
        else:
            mulZnX(pr,pr)
            pw/=2
    return ret

# деление многочленов с остатком в кольце Zn[X]
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

# удаление при старших степенях нулей
def delzeroend(a):
    while(len(a)>0):
        if(a[len(a)-1] != 0):
            return a
        else:
            a.pop()
    return [0]

# деление многочленов с остатком в кольце Z[X]
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
def EuclidZX(a, b):
    c1 = [0]
    c = [1]
    d1 = [1]
    d = [0]
    u = delzeroend(a)
    v = delzeroend(b)
    while not v == [0]:
        qr = divZX(u, v)
        print(u,v,qr)
        q = qr[0]
        #print(q)
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


#Функии Клягина , которые я и спользую в своих функциях:
# 1)сумма в кольце Zp
def addZp(a,b):
    global p
    return (a+b)%p
# 2)умножение в кольце Zp
def mulZp(a,b):
    global p
    return (a*b)%p
# 3) деление с остатком в кольце Z
def divZ(a, b):
    return a//b, a%b
    
# 4)расширенный алгоритм Евклида в кольце Z(возвращает: НОД, x, y из уравнения a*x+b*y=НОД)
def EuclidZ(a, b):
    if b == 0:
        return 1, 0, a
    else:
        x, y, d = EuclidZ(b, a%b)
        return y, x-y*(a//b), d
# 5)обратный элемент в кольце Fp
def invFp(a):
    global p
    return divZ(EuclidZ(a,p)[0],p)[1]


global p
p=3
a=[2,0,1,2,2] #[1,2,1] #1*x^0 + 2*x^1 + 1*x^2
b=[1,2,1,2] #[1,0,2] #1*x^0 + 0*x^1 + 2*x^2
scalr=2

def delzeroend(a):
    while(len(a)>0):
        if(a[len(a)-1] != 0):
            return a
        else:
            a.pop()
    return [0]

#print "Сложение – поэлементное сложение элементов наборов одинаковой длины."
def addFpX(a,b):
    c=[]
    if(len(a)>len(b)):
        for it in range(0,len(b)):
            c.append(addZp(a[it],b[it]))#c.append((a[it]+b[it])%p)
        for it in range(len(b),len(a)):
            c.append(a[it])    
    else:
        if(len(a)==len(b)):
            for it in range(0,len(a)):
                c.append(addZp(a[it],b[it]))#c.append((a[it]+b[it])%p)
        else:
            for it in range(0,len(a)):
                c.append(addZp(a[it],b[it]))#c.append((a[it]+b[it])%p)
            for it in range(len(a),len(b)):
                c.append(b[it])
    return delzeroend(c)

#print "Функция нахождение противоположного элемента"
def negateFpX(a):
    c=[]
    for i in range(0,len(a)):
        c.append(addZp(0,-a[i]))#c.append((-a[i])%p)
    return c

#print "Вычитание: согласно правилу a + (-a)"
def subFpX(a,b):
    return delzeroend(addFpX(a,negateFpX(b)))

#print "Умножение на скаляр [a0,…, at] : a_i из Fp , t из N"
def smulFpX(a,scal):
    c=[]
    scal = addZp(0,scal)#scal=scal%p
    for it in range(0,len(a)):
        c.append(mulZp(a[it],scal))#c.append((a[it]*scal)%p)
    return delzeroend(c)

#print "Умножение в кольце – перемножение «столбиком», как в школе."
def mulFpX(a,b):
    c=[0 for i in range(len(a)+len(b)-1)]
    for ib in range(0,len(b)):
        for ia in range(0,len(a)):
            c[ia + ib] = addZp(c[ia + ib],mulZp(a[ia],b[ib])) #c[ia + ib] = (c[ia + ib] + a[ia] * b[ib])%p
    return delzeroend(c)

#print "Вспомогатльная функция для копирования списка"
def copyelem(a):
    c=[]
    for i in range(0,len(a)):
        c.append(a[i])
    return c
#print "Деление с остатком – «столбиком», как в школе."
#print "Примечание:операнды могут быть разной длины"
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

#print "Возведение в степень: показатель степени раскладывается по основанию порядка элемента набора"
#print "Разложение показателя степени по основанию порядка элемента набора,начиная со старшего разряда"
def decToFpX(a):
    Blist=[]
    #число a из Fp , частное и остаток от деления скорее всего заменить функцией как Антона
    while not a==0:
        q=divZ(a,p)
        Blist.insert(0,q[1])
        a=q[0]
    return Blist

#print "Разложение показателя степени в бинарный список,начиная со старшего разряда"
def decToBinFpX(a):
    Blist=[]
    #число a из Fp , частное и остаток от деления скорее всего заменить функцией как Антона
    while not a==0:
        q=divZ(a,2)
        Blist.insert(0,q[1])
        a=q[0]
    return Blist
    
#print "Возведение в степень: показатель степени раскладывается в бинарный набор" 
def powerBinFpX(a,d):
    dbin=decToBinFpX(d)#показатель степени разложили по основанию 2
    n=len(dbin)
    b=[1]
    for it in range(0,n):
        if (dbin[it] == 1):
            b = mulFpX(mulFpX(b,b),a)
        else:
            b = mulFpX(b,b)
    return b   

#Вспомогательная функция: для случая x^p, где p-порядок Fp
def powerdegpFpX(a):
    c=[]
    for j in range(0,len(a)-1):
        c.append(a[j])
        for i in range(0,p-1):
            c.append(0)
    c.append(a[len(a)-1])
    return c

#print "Возведение в степень в Fp[X] "
def powerFpX(a,d):
    if (d==p):
        return powerdegpFpX(a)
    else:
        if(d==0):
            return [1]
        else:
            dp=decToFpX(d)#показатель степени разложили по основанию p
            n=len(dp)
            b = [1]
            for it in range(0,n):
                #Пояснение строчки ниже: b = ( (b**p)%p * (a**dp[it])%p )%p
                b = mulFpX(powerdegpFpX(b),powerBinFpX(a,dp[it]))
            return b

#print "Расширенный алгоритм Евклида:"
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
    return (c,d,u)

global f,l,n

p=3
l=3 #степень неприводимого многочлена 
f=[1,2,0,1] #x^3 + 2*x + 1
#print "Для поля поля Z(F_3)[X]_x^3 + 2x + 1 = F_(3^3)"

n=p**l #порядок поля F_p^l
a=[1,1,1] #[1,1] #1*x^0 + 1*x^1
b=[0,1,1] #[0,1] #0*x^0 + 1*x^1
scalr=2

#print "Функция удаляет последние нули в списке, которые ''не имеют важности'' "
def delzeroend(a):
    while(len(a)>0):
        if(a[len(a)-1] != 0):
            return a
        else:
            a.pop()
    return [0]

#print "Функция приведения по модулю неприводимого многочлена f(X)"
def modf(a):
    return divFpX(a,f)[1]

a=[2,1,2]
b=[1,2,1]
#print "Сложение – поэлементное сложение элементов наборов."
def addFpl(a,b):
    return addFpX(a,b)

#print "Вычитание  – поэлементное вычитание элементов наборов."
def subFpl(a,b):
    return subFpX(a,b)

#print "Умножение на скаляр : [с*a_0,…, с*a_l-1]"
def smulFpl(a,sl):
    return smulFpX(a,sl)

#print "Умножение в поле Z(Fp)[X]_f(X)–умножение в кольце и взятие остатка по mod f(X)."
#print "Перемножение методом сдвигов и сложений и приведение по модулю многочлена f(X)"
def mulFpl(a,b):
    return modf(mulFpX(a,b))

#Вспомогательная функция: для случая x^(p^l), где p-порядок Fp,l-степень f(X)
#Между элементами a вставляем n=p^l-1 нулей - это и есть x^(p^l)
def powerdegplFpl(a):
    c=[]
    for j in range(0,len(a)-1):
        c.append(a[j])
        for i in range(0,n-1):
            c.append(0)
    c.append(a[len(a)-1])
    return modf(c)

#print "Разложение показателя степени по основанию p^l,начиная со старшего разряда"
def decToFpl(a):
    Blist=[]
    while not a==0:
        q=divZ(a,n)
        Blist.insert(0,q[1])
        a=q[0]
    return Blist

#Возведение в степень в F_p^l 
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

#print "Обращение – по упрощенному расширенному алгоритму Евклида."
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

#print
#print
#print "--------------------- Проверка функций Кочетовой Натальи ---------------------"
#print

p = 3
l = 2
d = 4
f = [1,0,1] # x^2 + 1
mod  = [[2,2],[0,1],[0],[0],[0,1]] # z2*x^4 + z2*x + 2*z2 + 2 
#print "p = ", p
#print "l = ", l
#print "d = ", d
#print "f = ", f
#print "mod = ", mod
#print

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

#print "Сложение в кольце Fp^l[Y]"
a = [[0, 1], [1, 2], [2]]
b = [[1, 2], [1]]
#print a, ' + ', b, ' = ', addFplY(a, b)
#print

# Сложение в поле Fp^l[Y]f(Y)= Fp^ld
# a1, a2 - элементы поля Fp^ld
def addFpld(a1, a2):
    global d, l
    rez = []
    for i in range(d):
        rez.append(addFpl(a1[i], a2[i]))
    return rez

#print "Сложение в поле Fp^l[Y]f(Y)= Fp^ld"
a = [[0, 1], [1, 2], [2], [1]]
b = [[1, 2], [1], [0], [2]]
#print a, ' + ', b, ' = ', addFpld(a, b)
#print

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

#print "Вычитание в кольце Fp^l[Y]"
a = [[0, 1], [1, 2], [2]]
b = [[1, 2], [1]]
#print a, ' - ', b, ' = ', subFplY(a, b)
#print b, ' - ', a, ' = ', subFplY(b, a)
#print

# Вычитание в поле Fp^l[Y]f(Y)= Fp^ld
# a1, a2 - элементы кольца Fp^l[Y]
def subFpld(a1, a2):
    global d, l
    rez = []
    for i in range(d):
        rez.append(subFpl(a1[i], a2[i]))
    return rez

#print "Вычитание в поле Fp^l[Y]f(Y)= Fp^ld"
a = [[0, 1], [1, 2], [2], [1]]
b = [[1, 2], [1], [0], [2]]
#print a, ' - ', b, ' = ', subFpld(a, b)
#print b, ' - ', a, ' = ', subFpld(b, a)
#print

# Умножение на скаляр в кольце Fp^l[Y]
# a - элемент кольца Fp^l[Y]
# c - элемент поля Fp^l
def smulFplY(a, c):
    rez = []
    for i in range(len(a)):
        rez.append(mulFpl(a[i], c))
    return clearNulls(rez)

#print "Умножение на скаляр в кольце Fp^l[Y]"
a = [[0, 1], [2, 1], [2]]
c = [1, 2]
#print a, ' * ', c, ' = ', smulFplY(a, c)
c = [1]
#print a, ' * ', c, ' = ', smulFplY(a, c)
#print

# Умножение на скаляр в поле Fp^l[Y]f(Y)= Fp^ld
# a - элемент поля Fp^ld
# c - элемент поля Fp^l
def smulFpld(a, c):
    global d
    rez = []
    for i in range(d):
        rez.append(mulFpl(a[i], c))
    return rez

#print "Умножение на скаляр в поле Fp^l[Y]f(Y)= Fp^ld"
a = [[0, 1], [1, 2], [2], [1]]
c = [1, 2]
#print a, ' * ', c, ' = ', smulFpld(a, c)
c = [1]
#print a, ' * ', c, ' = ', smulFpld(a, c)
#print

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

#print "Деление в кольце Fp^l[Y]"
a = [[1, 1], [0], [1, 2], [2]]
b = [[1, 2], [1]]
#print a, ' / ', b, ' = '
rez = divFplY(a, b)
#print 'Частное: ', rez[0]
#print 'Остаток: ', rez[1]
a = [[1, 1], [0], [1, 2], [1]]
b = [[1, 2], [1]]
#print a, ' / ', b, ' = '
rez = divFplY(a, b)
#print 'Частное: ', rez[0]
#print 'Остаток: ', rez[1]
#print

# Перемножение методом сдвигов и сложений в кольце Fp^l[Y]
# a1, a2 - элементы кольца Fp^l[Y]
def mulFplY(a1, a2):
    global l
    rez = [[0] for i in range(len(a1) + len(a2) - 1)]
    for i in range(0, len(a2)):
        for j in range(0, len(a1)):
            rez[i + j] = addFpl(rez[i + j], mulFpl(a2[i], a1[j]))
    return clearNulls(rez)

#print "Перемножение методом сдвигов и сложений в кольце Fp^l[Y]"
a = [[0, 1], [2, 1], [2]]
b = [[1, 2], [1]]
#print a, ' * ', b, ' = ', mulFplY(a, b)
#print

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

#print "Перемножение методом сдвигов и сложений по модулю многочлена mod(Y) в поле Fp^l[Y]f(Y)= Fp^ld"
a = [[0, 1], [1, 2], [2], [1]]
b = [[1, 2], [1], [0], [2]]
#print a, ' * ', b, ' = ', mulFpld(a, b)
#print

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

#print "Возведение в степень в кольце Fp^l[Y]"
a = [[1, 2], [1]]
dg = 2
#print a, ' ^ ', dg, ' = ', powerFplY(a, dg)
dg = 3
#print a, ' ^ ', dg, ' = ', powerFplY(a, dg)
#print

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

#print "Возведение в степень в поле Fp^l[Y]f(Y)= Fp^ld"
b = [[1, 2], [1], [0], [2]]
dg = 2
#print a, ' ^ ', dg, ' = ', powerFpld(a, dg)
dg = 3
#print a, ' ^ ', dg, ' = ', powerFpld(a, dg)
#print

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

#print "Алгоритм Евклида в кольце Fp^l[Y]"
a = [[1], [1]]
b = [[1], [2], [1]]
#print 'НОД(',a, ',', b, ') = ', EuclidFplY(a, b)
a = [[0], [1], [1]]
b = [[1], [2], [1]]
#print 'НОД(',a, ',', b, ') = ', EuclidFplY(a, b)
#print

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

#print "Обращение в поле Fp^l[Y]f(Y)= Fp^ld"
a = [[1, 2], [1], [0], [2]]
#print "a = ", a
#print 'a^-1 = ', invFpld(a)
#print "a*a^-1 = ", divFplY(mulFplY(a, invFpld(a)), mod)[1]


