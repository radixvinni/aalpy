#coding: utf-8
#Согласование общего ключа тремя участниками  (GF2m4)

#Системные параметры(публикуются): 
# 1.эллиптическая кривая   над полем  GF(2^n) y^2+y=x^3+x+1, модулярный многочлен 1101
mod = Polynom("1101")
curve = SuperSingularEllipticCurve(mod,Polynom("1"),Polynom("1"),Polynom("1"))
# 2.общая точка
p=SuperSingularEllipticPoint(curve)
p.Generate()

#открытый ключ первого участника ap, закрытый = 11
ap=SuperSingularEllipticPoint(p)
ap.Mul(ap,Integer(11))

#открытый ключ второго участника bp, закрытый = 23
bp=SuperSingularEllipticPoint(p)
bp.Mul(bp,Integer(23))

#открытый ключ третьего участника cp, закрытый = 131
cp=SuperSingularEllipticPoint(p)
cp.Mul(cp,Integer(131))

#Далее, следуя протоколу, участники должны выполнить спаривание переданных им точек.
ro = PolynomGF2_m_4("1","1","0","0","1101")
rb = PolynomGF2_m_4("1","0","0","0","1101")

#Результат спаривания открытых ключей первого и второго участников
rab = p.DLK(ap,bp,ro,mod.getNumberBits()-1,rb,mod)
#Результат спаривания открытых ключей первого и третьего участников
rac = p.DLK(ap,cp,ro,mod.getNumberBits()-1,rb,mod)
#Результат спаривания открытых ключей второго и третьего участников
rbc = p.DLK(bp,cp,ro,mod.getNumberBits()-1,rb,mod)

#Возведением в степень участники находят общий секретный ключ
rbc.Pow(rbc,Integer(11))
rac.Pow(rac,Integer(23))
rab.Pow(rab,Integer(131))

# теперь rbc == rac === rab
print str(rbc)==str(rac)==str(rab)
