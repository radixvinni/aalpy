#coding: utf-8
from AAL import *
def negate(a):
    #print "Возвращает противоположный элемент в Z"
    c=Integer()
    c.Sub(Integer("0"),Integer(str(int(a))))
    return int(c.ToString())
a=-13
c=negate(a)
#print "negate(",a,")=",c
def generate(n):
    #print "Возвращает ненулевой элемент кольца Z_",n
    a=Integer()
    while int(a.ToString())==0:
        a.Generate(Integer(str(int(n))))
    return int(a.ToString())
#n=60
#print "generate(",n,")", generate(n)
def add(a,b):
    #print "Сложение в кольце Z"
    c=Integer()
    c.Add(Integer(str(int(a))),Integer(str(int(b))))
    return int(c.ToString())
a=7
b=5
#print "add(",a,",",b,")",add(a,b)
def sub(a,b):
    #print "Вачитание в кольце Z"    
    c=Integer()
    c.Sub(Integer(str(int(a))),Integer(str(int(b))))
    return int(c.ToString())
a=7
b=5
#print "sub(",a,",",b,")",sub(a,b)
def mul(a,b):
    #print "Умножение в кольце Z"  
    c=Integer()
    c.Mul(Integer(str(int(a))),Integer(str(int(b))))
    return int(c.ToString())
a=7
b=5
#print "mul(",a,",",b,")",mul(a,b)
def modAddInFp(a,b,module):
    #print "Сложение в группе F_",p,"*"
    c=Integer()
    c.ModAddInFp(Integer(str(int(a))),Integer(str(int(b))),Integer(str(int(module))))
    return int(c.ToString())
a=3
b=5
p=7
#c=modAddInFp(a,b,p)
#print "c=modAddInFp(",a,",",b,",",p,")=",c
def subInFp(a,b,module):
    #print "Вычитание в группе F_",p,"*"    
    c=Integer()
    c.SubInFp(Integer(str(int(a))),Integer(str(int(b))),Integer(str(int(module))))
    return int(c.ToString())
a=3
b=5
p=7
c=subInFp(a,b,p)
#print "c=subInFp(",a,",",b,",",p,")=",c
def modAdd(a,b,module):
    #print "Сложение в кольце Z_",n
    c=Integer()
    c.ModAdd(Integer(str(int(a))),Integer(str(int(b))),Integer(str(int(module))))
    return int(c.ToString())
a=3
b=5
n=7
c=modAdd(a,b,n)
#print "c=modAdd(",a,",",b,",",n,")=",c
def modSub(a,b,module):
    #print "Вычитание в кольце Z_",n
    c=Integer()
    c.ModSub(Integer(str(int(a))),Integer(str(int(b))),Integer(str(int(module))))
    return int(c.ToString())
a=3
b=5
n=7
c=modSub(a,b,n)
#print "c=modSub(",a,",",b,",",n,")=",c
def mulInFp(a,b,module):
    #print "Умножение в группе F_",p,"*"     
    c=Integer()
    c.MulInFp(Integer(str(int(a))),Integer(str(int(b))),Integer(int(module)))
    return int(c.ToString())
a=3
b=5
n=7
c=mulInFp(a,b,n)
#print "с=mulInFp(",a,",",b,",",n,")=",c
def modMul(a,b,module):
    #print "Умножение в кольце Z_",n    
    c=Integer()
    c.ModMul(Integer(str(int(a))),Integer(str(int(b))),Integer(str(int(module))))
    return int(c.ToString())
a=3
b=5
n=7
c=modMul(a,b,n)
#print "с=modMul(",a,",",b,",",n,")=",c
def div(a,b):
    #print "Деление с остатком в кольце Z. Возвращает список [частное,остаток]"
    c=Integer()
    r=Integer()
    c.Div(Integer(str(int(a))),Integer(str(int(b))),r)
    return [int(c.ToString()),int(r.ToString())]
a=7
b=3
c=div(a,b)
#print "div(",a,",",b,")=",c
def power(a,d):
    #print "Возведение целого числа в неотрицательную целую степень"
    c=Integer()
    c.Pow(Integer(str(int(a))),Integer(str(int(d))))
    return int(c.ToString())
a=-5
d=0
c=power(a,d)
#print "с=power(",a,",",d,")=",c
def powInFp(a,d,module):
    c=Integer()
    c.PowInFp(Integer(str(int(a))),Integer(str(int(d))),Integer(str(int(module))))
    return int(c.ToString())
#print "powInFp(2,5,23)",powInFp(2,5,23)
def modPow(a,d,module):
    #print "Возведение в неотрицательную целую степень в кольце Z",n    
    c=Integer()
    c.ModPow(Integer(str(int(a))),Integer(str(int(d))),Integer(str(int(module))))
    return int(c.ToString())
a=3
b=5
n=24
c=modPow(2,5,24)
#print"c=modPow(",a,",", b,",",n,")=",c
def sqrt(a):
    #print "Возвращает целую часть квадратного корня числа",a
    c=Integer()
    c.Sqrt(Integer (str(int(a))))
    return int(c.ToString())
a=17
c=sqrt(a)
#print "sqrt(",a,")=",c
def modSqrt(a,module):
    #print "Возвращает квадратный корень из квадратичного вычета",a,"по простому модулю",p    
    c=Integer()
    c.ModSqrt(Integer (str(int(a))),Integer(str(int(module))))
    return int(c.ToString())
a=4
p=7
c= modSqrt(a,p)
#print "modSqrt(",a,",",p,")=",c
def euclid(a,b):
    #print "Возвращает НОД(a,b)"
    c=Integer()
    c.Euclid(Integer(str(int(a))),Integer(str(int(b))))
    return int(c.ToString())
a=48
b=36
c=euclid(a,b)
#print "euclid(",a,",",b,")=",c
def exEuclid(a,b):
    #print "Возвращает решение [z,x,y] диофантова уравнения z=ax+by"
    i=Integer()
    j=Integer()
    x=Integer()
    y=Integer()
    d=Integer()
    d.ExEuclid(Integer(str(int(a))),Integer(str(int(b))),x,y)
    return [int(d.ToString()),int(x.ToString()),int(y.ToString())]
a=3
b=5
c=exEuclid(a,b)
#print "exEuclid(",a,",",b,")=",c
def inverseInFp(a,module):
    #print "Обращение в группе F_",module,"^*"
    c=Integer()
    c.InverseInFp(Integer (str(int(a))),Integer(str(int(module))))
    return int(c.ToString())
a=5
module=29
c=inverseInFp(a,module)
#print "inverseInFp(",a,",",module,")=",c
def inverse(a,module):
    #print "Обращение в группе Z_",module,"^*"    
    c=Integer()
    c.Inverse(Integer (str(int(a))),Integer(str(int(module))))
    return int(c.ToString())
a=5
module=28
c=inverse(a,module)
#print "inverse(",a,",",module,")=",c
def legendre(a,prime):
    #print "Возвращает символ Лежандра числа",a,"для простого числа",prime
    return Integer.LegendreSymbol(Integer (str(int(a))),Integer (str(int(prime))))
a=5
prime=29
c=legendre(a,prime)
print "legendre(",a,",",prime,")=",c
def jacobySymbol(a,n):
    #print "Возвращает символ Якоби числа",a,"для   числа",n
    return Integer.JacobySymbol(Integer(int(a)),Integer(int(n)))
a=2
n=28
c=jacobySymbol(a,n)
#print "jacobySymbol(",a,",",n,")=",c
def IsPrime(a):
    #print "Вовращает результат применения к числу",a,"теста Миллера-Рабина"
    c=Integer(int(a))
    return c.isPrime()
a=24
c=IsPrime(a)
#print "IsPrime(",a,")=",c
def generatePrime(a):
    #print "Возвращает вероятносто простое число длиной",a,"двоиных символов"
    p=Integer()
    p.GeneratePrime(a)
    c=p.ToString()
    return c
a=15
c=generatePrime(a)
#print "generatePrime (",a,")=",c, ",",Integer(str(int (c))).ToString(Bin)
def IsGenerator(a,p):
    #print "Возвращает True, если a=",a,"есть образующий элемент группы F_",p,"^*"
    v=FactorizationAlgorithms(Integer(str(sub(p,1)))).MsieveDecomposition()
    return Integer(int(a)).isGenerator(Integer(str(int(p))),v)
a=4
p=5
#c=IsGenerator(a,p)
#print "IsGenerator(",4,",",5,")",c
def modifiedTestLuka(p):
    #print "Возвращвет результат применения модифицированного теста Люка к числу p=",p
    v=FactorizationAlgorithms(Integer(str(sub(p,1)))).MsieveDecomposition()
    return Integer().ModifiedTestLuka(v,Integer(str(int(p))))
p=17
#c=modifiedTestLuka(p)
#print "modifiedTestLuka(",p,")",c
def testPoklingtona(p):
    #print "Возвращвет результат применения   теста Поклингтона к числу p=",p    
    v=FactorizationAlgorithms(Integer(str(sub(p,1)))).MsieveDecomposition()
    return Integer().TestPoklingtona(v,Integer(str(int(p))))
p=1023
#c=testPoklingtona(p)
#print "testPoklingtona(",p,")",c
def sCM(a,b):
    #print "Возвращает НОК(",a,",",b,")"
    c=Integer()
    c.SCM(Integer(int(a)),Integer(str(int(b))))
    return int(c.ToString())
a=4
b=6
c=sCM(a,b)
#print "sCM(",4,",",6,")",c
def factorization(n):
    #print "Возвращает список списков множителей [простей множителеь, степень] числа n=",n
    v=FactorizationAlgorithms(Integer(str(int(n)))).MsieveDecomposition()
    v.toList()
    Factorslist=[]
    for it in v:
	    Factor=[]
	    p=int(it.getNumber().ToString())
	    Factor.append(int(p))
	    d=int(it.getDegree().ToString())
	    Factor.append(int(d))
	    Factorslist.append(Factor)
    return Factorslist
#print "factorization(6)",factorization(6)
def EulerFunction(n):
    #print "Возвращает список множителей функции Эйлера, соответсующих степеням простых множителей числа n=",n, ",значение функции Эйлера и значение порядка первообразного элемента группы Z_n^*"
    lf= factorization(n)
    Elist=[]
    for i in range (0,len(lf)):
        e=1
        if lf[i][0]==2:
            if lf[i][1]==2:
                e=2
            else:
                e=power(2,sub(lf[i][1],1))#2**(sub(lf[i][1],1))power(2,sub(lf[i][1],1))
        else:
            e=mul(power(lf[i][0],sub(lf[i][1],1)),sub(lf[i][0],1))#(lf[i][0]**(sub(lf[i][1],1)))*(sub(lf[i][0],1))
        Elist.append(e)
        ef=1
        maxorder=1
        for i in range (0,len(Elist)):
            ef=ef*Elist[i]
            maxorder=sCM(maxorder,Elist[i])
    return [Elist,ef,maxorder]
#print "EulerFunction(25)",EulerFunction(25)
def IsringPrimitiveElement(a,p,e):
    #print "Возвращает True, если a есть первообразный элемент группы Z_{p^e}^*, иначе возвращает False"
    if p==2:
        return ((e==1 and div(a,2)[1]==1)
        or(e==2 and div(a,4)[1]==3)
        or(e==3 and (div(a,8)[1]==3 or div(a,8)[1]==5 or div(a,8)[1]==7))
        or(e>=4 and (div(a,8)[1]==3 or div(a,8)[1]==5 or div(a,8)[1]==7)
        ))
    else:
        ef=EulerFunction(p)
        lf= factorization(ef[1])
    for i in range(0,len(lf)):
        if e==1:
            if (div(a,p)[1]==0) or div(power(a,div(ef[1],lf[i][0])[0]),p)[1]==1:
                return False
        else:
            if (div(a,p)[1]==0) or div(power(a,div(ef[1],lf[i][0])[0]),p)[1]==1 or div(power(a,ef[1]),power(p,2))[1]==1:
                return False
    return True
#print "IsringPrimitiveElement(2,5,1) ",IsringPrimitiveElement(2,5,1) 
def DecToBin(a):
    #print "Возвращает список значений двоичных разрядов, начиная со старшенго"
    Inta=Integer(str(int(a)))
    Blist=[]
    while not a==0:
        d=div(a,2)
        Blist.insert(0,d[1])
        a=d[0]
    return Blist
a=11
b=4
c=DecToBin(a)
#print "c=DecToBin(",a,")=",c 



