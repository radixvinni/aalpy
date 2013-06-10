print "Программа дискретного логарифмирования в мультипликативной группе GF(2^n)"
mm, m='101001', '01'
print "ВХОД:"
p=Polynom(mm)
x=Polynom("011")
w=x
print "Неприводимый полином", p
print "Элемент,  для которого будем искать дискретный логарифм, x=", x
print "ВЫХОД: Два списка элементов поля GF(2^n)."
print "ВЫЧИСЛЕНИЯ:"
fieldorder=Integer()
grouporder=2**(len(mm)-1)-1
fieldorder=2**(len(mm)-1)
fo=Integer(fieldorder)
print "Определим порядки поля GF(2^n)}) и группы GF(2^n)})* fieldorder=", fieldorder
print "Определим порядки поля GF(2^n)}) и группы GF(2^n)})* grouporder=", grouporder
v=DecompositionManager.Instance().getDecomposition(Integer(grouporder),False)
print "Факторизация порядка группы", v.toList()
a=Polynom(m)
print "Подберем образующий элемент группы a=", Polynom().isGenerator(p,a,v,Integer(fieldorder))
r1=Integer()
r=Integer()
print "Возьмем целую часть квадратного корня из порядка группы GF(p)* r1="
r1.Sqrt(Integer(grouporder))
print "Добавим 1 r=", r.Add(r1,Integer("1"))
i=Integer()
b=Polynom("1")
print "Bозьмем нулевую степень образующего элемента, нулевой элемент первого ряда", b
print "Вычислим остальные элементы первого рядa - r степеней образующего элемента"
s=Integer()
print "Вычислим отрицание элемента r s=grouporder-r=-r s=", s.Sub(Integer(grouporder),r)
beta=Polynom()
print "Вычислим остальные элементы первого ряда, напомним, что его нулевой элемент есть", b
for i in range(1,int(r.ToString())):
    print i, b.MulGF2_n(b,a,p)

w=x
print "Примем исходный элемент x за нулевой элемент второго ряда w=", w
print "Вычислим s-ю степень образующего элемента beta=", beta.PowGF2_n(a,s,p)
print "Вычислим остальные элементы второго ряда, напомним его нулевой элемент", c
for i in range(1,int(r.ToString())):
    print i, w.MulGF2_n(w,beta,p)

res=Polynom()
print "Совпали  первый элемент первого ряда (t=1) и третий элемент второго ряда (s=3),"
print "отсюда дискретный логарифм dlog=t+sr=1+3*6=19"
dlog=Integer("19")
dlog
print "Проверка x=", res.PowGF2_n(a,dlog,p)

