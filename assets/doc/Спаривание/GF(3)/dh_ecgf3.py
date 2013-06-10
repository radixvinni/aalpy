#coding: utf-8
#Согласование общего ключа тремя участниками  (GF3m6)

#Системные параметры(публикуются): 
# 1.эллиптическая кривая   над полем  GF(3^n) y^2+y=x^3+2x+1, модулярный многочлен 220001
mod = PolynomGF3("220001")
curve = EllipticCurveGF3(mod,PolynomGF3("0"),PolynomGF3("2"),PolynomGF3("1")) 
# 2.общая точка
p=EllipticPointGF3(curve)
#p.Generate()
p.setXY(PolynomGF3("0001"),PolynomGF3("21221"))

#открытый ключ первого участника ap, закрытый = 11
ap=EllipticPointGF3(curve)
ap.Mul(p,Integer(11))

#открытый ключ второго участника bp, закрытый = 23
bp=EllipticPointGF3(curve)
bp.Mul(p,Integer(23))

#открытый ключ третьего участника cp, закрытый = 131
cp=EllipticPointGF3(curve)
cp.Mul(p,Integer(131))

#Далее, следуя протоколу, участники должны выполнить спаривание переданных им точек.
m = mod.getNumberBits() - 1;
b =  PolynomGF3_m_6(curve.getA6().ToString(),"0","0","0","0","0",mod.ToString());
ro = PolynomGF3_m_6("0","0","2","1","2","0",mod.ToString());
si = PolynomGF3_m_6("0","1","2","1","1","0",mod.ToString());
si.setModule(mod);


#Результат спаривания открытых ключей первого и второго участников
rab = p.DLK(ap,bp,ro,si,m,b,mod)
#Результат спаривания открытых ключей первого и третьего участников
while True:
    try:
        rac = p.DLK(ap,cp,ro,si,m,b,mod)
    except RuntimeError:
        pass
    else:
        break

#Результат спаривания открытых ключей второго и третьего участников
while True:
    try:
        rbc = p.DLK(bp,cp,ro,si,m,b,mod)
    except RuntimeError:
        pass
    else:
        break

#Возведением в степень участники находят общий секретный ключ
rbc.Pow(rbc,Integer(11))
rac.Pow(rac,Integer(23))
rab.Pow(rab,Integer(131))

# теперь rbc == rac === rab
print str(rbc)==str(rac)==str(rab)
