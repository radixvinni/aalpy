print "Программа дискретного логарифмирования в мультипликативной группе простого поля"
print "ВХОД:"
p=Integer(17)
a=Integer(3)
go=Integer()
print "Простое число - порядок поля GF(p)p=", p
c=Integer("15")
print "Элемент. для которого будем искать дискретный логарифм, c=", c
print "ВЫХОД: два ряда элементов."
print "ВЫЧИСЛЕНИЯ:"
print "Вычислим порядок группы GF(p)* go=", go.Sub(p,Integer("1"))
v=FactorizationAlgorithms(Integer(16)).MsieveDecomposition()
print "Факторизация порядка go группы GF(p)* v=", v.toList()
print "Подберем образующий элемент группы GF(p)* a=", a, a.isGenerator(p,v)
r1=Integer()
r=Integer()
print "Возьмем целую часть квадратного корня из порядка группы GF(p)* r1=", r1.Sqrt(go)
print "Добавим 1 r=", r.Add(r1,Integer("1"))
i=Integer()
b=Integer("1")
print "Bозьмем нулевую степень образующего элемента, нулевой элемент первого ряда", b
print "Вычислим остальные элементы первого рядa - r степеней образующего элемента"
s=Integer()
print "Вычислим отрицание элемента r s=go-r =-r s=", s.Sub(go,r)
beta=Integer()
print "Внимание! В следующем операторе for вторую границу следует заменить числом r,"
print " если изменялся порядок поля p. "
for i in range(1,5):
    print i, b.MulInFp(b,a,p)

w=c
print "Возьмем элемент. для которого будем искать дискретный логарифм, c=", c
print "Исходный элемент с примем  за нулевой элемент второго ряда w=", w
#с
print "Вычислим s-ю степень образующего элемента beta=", beta.PowInFp(a,s,p)
print "Внимание! В следующем операторе for вторую границу следует заменить числом r,"
print " если изменялся порядок поля p. "
print "Вычислим элементы второго ряда"
for i in range(1,5):
    print i, w.MulInFp(w,beta,p)

res=Integer()
dlog=Integer("6")
print "Проверка с=", res.PowInFp (a,dlog,p)

