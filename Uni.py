# -*- coding: utf-8 -*-
import random

"--------------------- Проверка функций Клягина Антона ---------------------"

global n, p, l, f, x, m


def xPow(i):
    global x
    if i == 0:
        return [0]
    else:
        return powerFpl(x, i)


def xPow(i):
    global x
    if i == 0:
        if l > 1:
            return [0]
        else:
            return 0
    if l == 1:
        return powerFp(x, i)
    return powerFpl(x, i)


def copymas(a):
    ret = []
    for i in range(0, len(a)):
        ret.append(a[i])
    return ret


# удаление при старших степенях нулей
def delzeroend(a):
    while (len(a) > 0):
        if (a[len(a) - 1] != 0):
            return a
        else:
            a.pop()
    return [0]


# сумма в кольце Z
# возвращает сумму элементов a и b
# a, b - элементы кольца Z
def addZ(a, b):
    return a + b


# сумма в кольце Zn
# возвращает сумму элементов a и b
# a, b - элементы кольца Zn
def addZn(a, b):
    global n
    return (a + b) % n


# сумма в поле Fp
# возвращает сумму элементов a и b
# a, b - элементы кольца Zp
def addFp(a, b):
    return (a + b) % p


def scalarproduct(a, b):
    sp = 0
    for i in range(0, int(len(a))):
        sp = subFp(sp, mulFp(a[i], b[i]))
    return sp


# разность в кольце Z
# возвращает разность элементов a и b
# a, b - элементы кольца Z
def subZ(a, b):
    return a - b


# разность в кольце Zn
# возвращает разность элементов a и b
# a, b - элементы кольца Zn
def subZn(a, b):
    global n
    return (a - b) % n


# разность в поле Fp
# возвращает разность элементов a и b
# a, b - элементы кольца Zp
def subFp(a, b):
    global p
    return (a - b) % p


# умножение в кольце Z
# возвращает произведение элементов a и b
# a, b - элементы кольца Z
def mulZ(a, b):
    return a * b


# умножение в кольце Zn
# возвращает произведение элементов a и b
# a, b - элементы кольца Zn
def mulZn(a, b):
    global n
    return (a * b) % n


# умножение в поле Fp
# возвращает произведение элементов a и b
# a, b - элементы кольца Zp
def mulFp(a, b):
    global p
    return (a * b) % p


# сумма в кольце Z[X]
# возвращает сумму элементов a и b
# a, b - элементы кольца Z[X]
def addZX(a, b):
    s = []
    ret = []
    if len(a) > len(b):
        l = len(b)
        ret = copymas(a)
    else:
        l = len(a)
        ret = copymas(b)
    for i in range(0, l):
        s.append((a[i] + b[i]))
    for i in range(l, len(ret)):
        s.append((ret[i]))
    return delzeroend(s)


# сумма в кольце Zn[X]
# возвращает сумму элементов a и b
# a, b - элементы кольца Zn[X]
def addZnX(a, b):
    global n
    s = []
    ret = []
    if len(a) > len(b):
        l = len(b)
        ret = copymas(a)
    else:
        l = len(a)
        ret = copymas(b)
    for i in range(0, l):
        s.append(((a[i] + b[i]) % n))
    for i in range(l, len(ret)):
        s.append((ret[i] % n))
    return delzeroend(s)


# разность в кольце Z[X]
# возвращает разность элементов a и b
# a, b - элементы кольца Z[X]
def subZX(a, b):
    s = []
    ret = []
    if len(a) > len(b):
        l = len(b)
        ret = copymas(a)
    else:
        l = len(a)
        for i in range(0, len(b)):
            ret.append((-b[i]))
    for i in range(0, l):
        s.append((a[i] - b[i]))
    for i in range(l, len(ret)):
        s.append((ret[i]))
    return delzeroend(s)


# разность в кольце Zn[X]
# возвращает разность элементов a и b
# a, b - элементы кольца Zn[X]
def subZnX(a, b):
    global n
    s = []
    ret = []
    if len(a) > len(b):
        l = len(b)
        ret = copymas(a)
    else:
        l = len(a)
        for i in range(0, len(b)):
            ret.append(-b[i])
    for i in range(0, l):
        s.append(((a[i] - b[i]) % n))
    for i in range(l, len(ret)):
        s.append((ret[i] % n))
    return delzeroend(s)


# умножение на скаляр в кольце Z[X]
# возвращает произведение элемента c на вектор a
# c - элемент кольца Z
# a - элемент кольца Z[X]
def smulZX(c, a):
    s = []
    l = len(a)
    for i in range(0, l):
        s.append((a[i] * c))
    return delzeroend(s)


# умножение на скаляр в кольце Zn[X]
# возвращает произведение элемента c на вектор a
# c - элемент кольца Zn
# a - элемент кольца Zn[X]
def smulZnX(c, a):
    global n
    s = []
    l = len(a)
    for i in range(0, l):
        s.append(((a[i] * c) % n))
    return delzeroend(s)


# перемножение методом сдвигов и сложений в кольце Z[X]
# возвращает произведение элементов a и b
# a, b - элементы кольца Z[X]
def mulZX(a, b):
    s = [0 for i in range(0, len(a) + len(b) - 1)]
    for i in range(0, len(b)):
        for j in range(0, len(a)):
            s[i + j] = addZ(s[i + j], mulZ(b[i], a[j]))
    return delzeroend(s)


# перемножение методом сдвигов и сложений в кольце Zn[X]
# возвращает произведение элементов a и b
# a, b - элементы кольца Zn[X]
def mulZnX(a, b):
    global n
    s = [0 for i in range(0, len(a) + len(b) - 1)]
    for i in range(0, len(b)):
        for j in range(0, len(a)):
            s[i + j] = addZn(s[i + j], mulZn(b[i], a[j]))
    return delzeroend(s)


# деление с остатком в кольце Z
# возвращает целую часть и остаток от деления a на b
# a, b - элементы кольца Z
def divZ(a, b):
    if b == 0:
        return 'error'
    return a // b, a % b


# расширенный алгоритм Евклида в кольце Z
# возвращает x, y, НОД из уравнения a*x+b*y=НОД
# a, b - элементы кольца Z
def EuclidZ(a, b):
    if b == 0:
        return 1, 0, a
    else:
        x, y, d = EuclidZ(b, a % b)
        return y, x - y * (a // b), d


# обратный элемент в поле Fp
# возвращает обратный элемент a^(-1) к элементу a
# a - элемент кольца Fp
def invFp(a):
    global p
    return divZ(EuclidZ(a, p)[0], p)[1]


# возведение в степень в кольце Z
# возвращает степень pw числа a
# a, pw - элементы кольца Z
def powerZ(a, pw):
    ret = 1
    pr = a
    while pw != 0:
        if pw % 2 == 1:
            ret *= pr
            pw -= 1
        else:
            pr *= pr
            pw /= 2
    return ret


# возведение в степень в кольце Zn
# возвращает степень pw числа a
# a - элемент кольца Zn
# pw - элемент кольца Z
def powerZn(a, pw):
    global n
    ret = 1
    pr = a
    while pw != 0:
        if pw % 2 == 1:
            ret = mulZn(ret, pr)
            pw -= 1
        else:
            pr = mulZn(pr, pr)
            pw /= 2
    return ret


# возведение в степень в поле Fp
# возвращает степень pw числа a
# a - элемент кольца Zp
# pw - элемент кольца Z
def powerFp(a, pw):
    global p
    ret = 1
    pr = a
    if pw == p:
        return a
    if pw == p - 1:
        return 1
    while pw != 0:
        if pw % 2 == 1:
            ret = mulFp(pr, ret)
            pw -= 1
        else:
            pr = mulFp(pr, pr)
            pw /= 2
    return ret


# возведение в степень в кольце Z[X]
# возвращает степень pw вектора a
# a - элемент кольца Z[X]
# pw - элемент кольца Z
def powerZX(a, pw):
    l = len(a)
    ret = [1]
    pr = copymas(a)
    while pw != 0:
        if pw % 2 == 1:
            if ret == 1:
                ret = copymas(a)
            else:
                ret = mulZX(ret, pr)
            pw -= 1
        else:
            pr = mulZX(pr, pr)
            pw /= 2
    return ret


# возведение в степень в кольце Zn[X]
# возвращает степень pw вектора a
# a - элемент кольца Zn[X]
# pw - элемент кольца Z
def powerZnX(a, pw):
    l = len(a)
    ret = [1]
    pr = copymas(a)
    while pw != 0:
        if pw % 2 == 1:
            if ret == 1:
                ret = copymas(a)
            else:
                ret = mulZnX(ret, pr)
            pw -= 1
        else:
            pr = mulZnX(pr, pr)
            pw /= 2
    return ret


#############################################################################

"--------------------- Проверка функций Темникова Дмитрия ---------------------"


# Функция удаления не значащих нулей
# a - элемент кольца Z(Fp)[X]
def delzeroend(a):
    while (len(a) > 0):
        if (a[len(a) - 1] != 0):
            return a
        else:
            a.pop()
    return [0]


# Вспомогатльная функция для копирования списка
# a-элемент кольца Z(Fp)[X]
def copyelem(a):
    c = []
    for i in range(0, len(a)):
        c.append(a[i])
    return c


# Сложение в кольце Z(Fp)[X]"
# a, b - элементы кольца Z(Fp)[X]
def addFpX(a, b):
    c = []
    if (len(a) > len(b)):
        for it in range(0, len(b)):
            c.append(addFp(a[it], b[it]))
        for it in range(len(b), len(a)):
            c.append(a[it])
    else:
        if (len(a) == len(b)):
            for it in range(0, len(a)):
                c.append(addFp(a[it], b[it]))
        else:
            for it in range(0, len(a)):
                c.append(addFp(a[it], b[it]))
            for it in range(len(a), len(b)):
                c.append(b[it])
    return delzeroend(c)


# Функция нахождение противоположного элемента
# a - элемент кольца Z(Fp)[X]
def negateFpX(a):
    c = []
    for i in range(0, len(a)):
        c.append(addFp(0, -a[i]))
    return c


# Вычитание в кольце Z(Fp)[X]"
# a, b - элементы кольца Z(Fp)[X]
def subFpX(a, b):
    return delzeroend(addFpX(a, negateFpX(b)))


# Умножение на скаляр в кольце Z(Fp)[X]"
# a - элемент кольца Z(Fp)[X],scal - элемент Fp
def smulFpX(a, scal):
    c = []
    scal = addFp(0, scal)
    for it in range(0, len(a)):
        c.append(mulFp(a[it], scal))
    return c  # delzeroend(c)


# Перемножение методом сдвигов и сложений в кольце Z(Fp)[X]"
# a, b - элементы кольца Z(Fp)[X]
def mulFpX(a, b):
    c = [0 for i in range(len(a) + len(b) - 1)]
    for ib in range(0, len(b)):
        for ia in range(0, len(a)):
            c[ia + ib] = addFp(c[ia + ib], mulFp(a[ia], b[ib]))  # c[ia + ib] = (c[ia + ib] + a[ia] * b[ib])%p
    return delzeroend(c)


# Деление с остатком в кольце Z(Fp)[X]"
# a, b - элементы кольца Z(Fp)[X]
def divFpX(a, b):
    if (b == [0]):
        print("Ошибка деление на 0 !")
        return "error"

    buf = copyelem(a)
    if (len(buf) < len(b)):
        return [[0], buf]

    ddiv = [0 for i in range(len(a) - len(b) + 1)]
    while (len(buf) >= len(b) and buf != [0]):
        c = []
        div = 0
        # Взяли часть от a и записали её в новую переменную c
        for i in range(0, len(b)):
            c.insert(0, buf[len(buf) - 1 - i])

        # Найдём остаток от разности c и b
        # c!=[0] необходимо , чтобы при len(b)==1 происходил сразу же выход!
        while (len(c) == len(b) and c != [0]):
            c = subFpX(c, b)
            div += 1

            # запоминаем частное
        ddiv[len(buf) - len(b)] = div

        # Удалим из buf = a последнии len(b) символов
        for i in range(0, len(b)):
            buf.pop()

        # Припишем остаток c%b к buf = a в конец , если c%b не равен 0
        if (c != [0]):
            for i in range(0, len(c)):
                buf.append(c[i])
        else:
            if (len(buf) == 0 and c == [0]):
                buf.append(0)
    return [ddiv, buf]


# Разложение показателя степени по основанию порядка элемента набора,начиная со старшего разряда"
# a - целое число >0
def decToFpX(a):
    Blist = []
    while not a == 0:
        q = divZ(a, p)
        Blist.insert(0, q[1])
        a = q[0]
    return Blist


# Разложение показателя степени в бинарный список,начиная со старшего разряда"
# a - целое число >0
# !!!!!!!!! decToBin - исправить
def decToBinFpX(a):
    Blist = []
    while not a == 0:
        q = divZ(a, 2)
        Blist.insert(0, q[1])
        a = q[0]
    return Blist


# Возведение в степень: показатель степени раскладывается в бинарный набор"
# a - элемент кольца Z(Fp)[X],d - целое число >0
def powerBinFpX(a, d):
    dbin = decToBinFpX(d)
    n = len(dbin)
    b = [1]
    for it in range(0, n):
        if (dbin[it] == 1):
            b = mulFpX(mulFpX(b, b), a)
        else:
            b = mulFpX(b, b)
    return b


# Вспомогательная функция: для случая x^p, где p-порядок Fp
# a - элемент кольца Z(Fp)[X]
def powerdegpFpX(a):
    c = []
    for j in range(0, len(a) - 1):
        c.append(a[j])
        for i in range(0, p - 1):
            c.append(0)
    c.append(a[len(a) - 1])
    return c


# Возведение в степень в кольце Z(Fp)[X]"
# a- элемент кольца Z(Fp)[X],d - целое число > 0
def powerFpX(a, d):
    if (d == p):
        return powerdegpFpX(a)
    else:
        if (d == 0):
            return [1]
        else:
            dp = decToFpX(d)
            n = len(dp)
            b = [1]
            for it in range(0, n):
                b = mulFpX(powerdegpFpX(b), powerBinFpX(a, dp[it]))
            return b


# Алгоритм Евклида в кольце Z(Fp)[X]
# Возвращает НОД двух элементов
# a, b - элементы кольца Z(Fp)[X]
def EuclidFpX(a, b):
    c1 = [0]
    c = [1]
    d1 = [1]
    d = [0]
    u = a
    v = b
    while not v == [0]:
        qr = divFpX(u, v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFpX(cold, mulFpX(q, c1))
        dold = d
        d = d1
        d1 = subFpX(dold, mulFpX(q, d1))
        u = v
        v = delzeroend(r)
    return (c, d, u)  # [c*a + d*b = u], u - НОД(a,b)


# Приведения по модулю неприводимого многочлена f(X) в поле Fp^l
# a - элемент кольца Z(Fp)[X]
def modf(a):
    global f
    return divFpX(a, f)[1]


# Сложение в поле Fp^l"
# a,b - элементы поля Fp^l
def addFpl(a, b):
    return addFpX(a, b)


# Вычитание в поле Fp^l"
# a,b - элементы поля Fp^l
def subFpl(a, b):
    return subFpX(a, b)


# Умножение на скаляр в поле Fp^l"
# a - элемент поля Fp^l,sl - элемент Fp
def smulFpl(a, sl):
    return smulFpX(a, sl)


# Перемножение методом сдвигов и сложений в поле Fp^l
# a,b - элементы поля Fp^l
def mulFpl(a, b):
    return modf(mulFpX(a, b))


# Вспомогательная функция: для случая x^(p^l), где p-порядок Fp,l-степень f(X)
# a - элемент поля Fp^l
def powercharFpl(a):
    c = []
    for j in range(0, len(a) - 1):
        c.append(a[j])
        for i in range(0, p - 1):
            c.append(0)
    c.append(a[len(a) - 1])
    return modf(c)


# Разложение показателя степени по основанию p^l,начиная со старшего разряда"
# a - целое число > 0
def decTocharFp(a):
    Blist = []
    while not a == 0:
        q = divZ(a, p)
        Blist.insert(0, q[1])
        a = q[0]
    return Blist


# Возведение в степень в поле Fp^l
# a - элемент поля Fp^l,a - целое число > 0
def powerFpl(a, d):
    if (d == p):
        return modf(powerdegpFpX(a))
    else:
        # if (d == n):
        # return powercharFpl(a)
        # else:
        dpl = decTocharFp(d)
        ln = len(dpl)
        b = [1]
        for it in range(0, ln):
            b = mulFpl(powercharFpl(b), modf(powerFpX(a, dpl[it])))
    return b


# Обращение в поле Fp^l"
# a - элемент поля Fp^l
def invFpl(a):
    c1 = [0]
    c = [1]
    u = a
    v = f
    while len(v) > 1:
        qr = divFpX(u, v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFpl(cold, mulFpl(q, c1))
        u = v
        v = delzeroend(r)
    c = smulFpl(c1, invFp(v[0]))
    return c


#############################################################################

"--------------------- Проверка функций Кочетовой Натальи ---------------------"
global d, mod


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
        c = mulFpl(invFpl(a2[lenb - 1]), pr[len(pr) - 1])
        rez1[lena - lenb - i] = c
        prom = []
        for j in range(lena - lenb - i):
            prom.append(pr[j])
        pr = prom + subFplY(pr[lena - lenb - i:], smulFplY(a2, c))
        for k in range(len(a1) - len(pr) - i - 1):
            pr.append([0])
    for i in range(0, len(pr)):
        rez2[i] = pr[i]
    return [clearNulls(rez1), clearNulls(rez2)]  # [частное, остаток]


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
    rez = clearNulls(rez)
    rez = divFplY(rez, mod)[1]
    for i in range(d - len(rez)):
        rez.append([0])
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
        # print (c,d0,u,v)
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
        v = clearNulls(r)
    return [c, d0, u]  # [c*a1 + d0*b1 = u], u - НОД(a1,a2)


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
        qr = divFplY(u, v)
        q = qr[0]
        r = qr[1]
        cold = c
        c = c1
        c1 = subFplY(cold, mulFplY(q, c1))
        u = v
        v = r
    c = smulFplY(c1, invFpl(v[0]))
    return divFplY(c, mod)[1]


##################################################################################


#######################___________________18.12.2020 Temnikov________________###########################

"----------------------Функции извлечения квадартных корней (Темников Д.Ю.)---------------------"


# Funktsiya randoma(Random function)
def getrandom(a, b):
    return random.randint(a, b)


# Razlozheniye(Decomposition) p=(s^i)*t
def get_st_from_p_minus_1(p):
    r = p - 1
    t = 0
    s = 0
    while (t == 0):
        buf = divZ(r, 2)
        if (buf[1] == 0):
            r = buf[0]
            s = s + 1
        else:
            t = r
    return s, t


# Sravneniye poryadka algebraicheskoy struktury(Comparison of the order of an algebraic structure)
def modulotype(p):
    if divZ(p, 4) == 3:
        print(u"p mod 4 =", p, "mod 4 =", 3)
        return 1
    else:
        if divZ(p, 8) == 5:
            print(u"p mod 8 =", p, "mod 8 =", 5)
            return 2
        else:
            return 3


#############################Osnovnyye algoritmy (Basic algorithms)################################

# print(u"Алгоритм взятия целой части кв.корня из натурального числа")
def sqrtZ(n):
    if (n <= 2):
        return "Error:n<=2"
    X = n
    Y = (n + 1) / 2
    while (X > Y):
        X = Y
        Y = (X ** 2 + n) / (2 * X)
        print(X, Y)
    return int(X)


# print(sqrtZ(15))

# 1.Kvadratichnyy vychet(1. quadratic residue)
def JACOBI(a, p):
    if a == 0:
        return 0
    if (a == 1):
        return 1
    if (divZ(a, 2)[1] == 0):
        if (divZ(divZ(subZ(mulZ(p, p), 1), 8)[0], 2)[1] == 0):
            return JACOBI(divZ(a, 2)[0], p)
        else:
            return mulZ(JACOBI(divZ(a, 2)[0], p), -1)
    if (divZ(divZ(mulZ(subZ(a, 1), subZ(p, 1)), 4)[0], 2)[1] == 0):
        return JACOBI(divZ(p, a)[1], a)
    else:
        return mulZ(JACOBI(divZ(p, a)[1], a), -1)


# 2.Izvlecheniye kvadratnogo kornya iz kvadaratichnogo vycheta po algoritmu Tonelli
# (Extraction of the square root of the quadratic residue using Tonelli's algorithm)
def Tonelli(a, p):
    # 1
    if a == 0:
        return 0
    s_t = get_st_from_p_minus_1(p)
    s = s_t[0]
    t = s_t[1]
    b = powerFp(a, t)
    k = 0
    # 2
    flag = 1
    while (flag == 1):
        f = getrandom(1, p)
        if (JACOBI(f, p) == -1):
            flag = 0
    g = powerFp(f, t)
    # print(u"f^t =",f,"^",t,"=",g)
    # 3
    while (b != 1):
        m = 0
        while (powerFp(b, powerFp(2, m)) != 1):
            m = m + 1
        b = mulFp(b, powerFp(g, powerFp(2, subZ(s, m))))
        k = addZ(k, powerZ(2, subZ(s, m)))
    x1 = mulFp(powerFp(a, divZ(addZ(t, 1), 2)[0]), powerFp(g, divZ(k, 2)[0]))
    return x1, subZ(p, x1)


# 3.Izvlecheniye kvadratnogo kornya iz kvadaratichnogo vycheta po determenirovannomu algoritmu
# (Extracting the square root of a quadratic residue using a deterministic algorithm)
def deterministic_algorithms(a, p, modulotype):
    if (modulotype == 1):
        x1 = powerFp(a, divZ(addZ(p, 1), 4)[0])
        return x1, subZ(p, x1)
    if (modulotype == 2):
        if (powerFp(a, divZ(subZ(p, 1), 4)[0]) == 1):
            x1 = powerFp(a, divZ(addZ(p, 3), 8)[0])
            return x1, subZ(p, x1)
    else:
        x1 = mulFp(powerFp(mulZn(4, a), divZ(addZ(p, 3), 8)[0]), divZ(EuclidZ(2, p)[0], p)[1])
        return x1, subZ(p, x1)
    return "inconsistent modulotyle"


def sqrtFp(a, p, modulotype):
    if (modulotype == 1 or modulotype == 2):
        sqrts = deterministic_algorithms(a, p, modulotype)
    else:
        sqrts = Tonelli(a, p)
    return sqrts[0], sqrts[1]


# 4.Algoritm izvlecheniya kvadratnykh korney po sostavnomu modulyu modulyu.
# (Algorithm for extracting square roots modulo composite modulus.)
# n=pq,gde p i q raznyye prostyye chisla izvestnyye zaraneye(where p and q are different primes known in advance)
def sqrtZpq(a, pp, pq):
    global p, n
    n = pp * pq
    # 1
    p = pp
    ys = sqrtFp(a, pp, modulotype(pp))
    p = pq
    zs = sqrtFp(a, pq, modulotype(pq))
    # 2
    ecl = EuclidZ(pp, pq)
    buf1 = mulZn(mulZn(ys[0], ecl[1]), pq)
    buf2 = mulZn(mulZn(zs[0], ecl[0]), pp)
    x1 = addZn(buf1, buf2)
    x2 = subZn(buf1, buf2)
    return x1, x2, subZn(n, x1), subZn(n, x2)


# 5.Algoritm vychisleniya kvadratnogo kornya iz kvadratichnogo vycheta a po modulyu stepeni p^b prostogo nechetnogo chisla p.
# (Algorithm for calculating the square root of the quadratic residue a modulo the power p ^ b of a prime odd number p.)
def sqrtZp_pow_beta(a, p, beta, n):
    # 1.b = sqrt(a) mod p
    b = sqrtFp(a, p, modulotype(p))[0]
    # 2
    inv2 = divZ(EuclidZ(2, p)[0], p)[1]  # =2^(-1)
    p1 = p
    p2 = 1
    for i in range(1, beta):
        p1 = mulZ(p1, p)  # p^(i+1)
        p2 = mulZ(p2, p)  # p^i
        t = mulFp(divZ(subZ(divZ(a, p1)[1], mulZ(b, b)), p2)[0], mulZ(inv2, divZ(EuclidZ(b, p)[0], p)[1]))
        b = addZ(b, mulZ(t, p2))
    return b, n - b


# 6.Algoritm vychisleniya kvadratnogo kornya iz kvadratichnogo vycheta a, a=1 mod 8 po modulyu stepeni 2^beta dvoyki.
# (Algorithm for calculating the square root of the quadratic residue a, a = 1 mod 8 modulo degree 2 ^ beta of two)
def sqrtZ2_pow_beta(a, beta):
    x = 1
    p = mulZ(2, 2)
    for i in range(3, beta + 1):
        p = mulZ(p, 2)  # 2^i
        if (divZ(mulZ(x, x), p)[1] != divZ(a, p)[1]):
            x = subZ(divZ(p, 4)[0], x)
    # p = 2^beta
    return x, subZ(divZ(p, 2)[0], x), addZ(divZ(p, 2)[0], x), subZ(p, x)


def sqrtZp_pow_b(a, p, b, n):
    if (p == 2):
        if (divZ(a, 8)[1] == 1):
            return sqrtZ2_pow_beta(a, b)
        else:
            return "Error : a!=1 mod 8"
    else:
        if (divZ(b, 2)[1] == 1):
            return sqrtZp_pow_beta(a, p, b, n)
        else:
            return "Error: b!=2t+1"


# 7.Algoritm izvlecheniya kvadratnykh korney v rasshirenii polya(Algorithm for extracting square roots in field expansion)
def sqrtFpl(a, p, l, n):
    if (p == 2):
        return powerFpl(a, divZ(n, 2)[0])
    else:
        # if l=2k+1
        if (divZ(n, 4)[1] == 3):
            if (powerFpl(a, divZ(n - 1, 2)[0]) == [1]):
                x1 = powerFpl(a, divZ(addZ(n, 1), 4)[0])
                return x1, smulFpl(x1, -1)
            else:
                return -1  # "Подкоренное выражение не является квадратичным вычетом!"


"----------------------------------------------------------------------------------------------------------------------------------"
"-------------------------------------------Функции для комбинатроных блок-схем----------------------------------------------------"


def ind(ell):
    if (l == 1):
        if (ell == 0):
            return 0
    else:
        if ell == [0]:
            return 0
    i = 1
    while not xPow(i) == ell:
        i = i + 1
    return i


def Phi(el):
    res = 0
    for i in range(0, int(len(el))):
        res = addZ(res, mulZ(powerZ(n, i), ind(el[i])))
    return res


def getTDm(i):
    global p, l, m, k, n

    def TDknBlockcreation(numer):
        global k
        _a = int(divZ(numer, n)[1])
        _b = int(divZ(subZ(numer, _a), n)[0])
        B = []
        for t in range(0, k):
            B.append(Phi([addFpl(mulFpl(xPow(_a), xPow(t)), xPow(_b)), xPow(t)]))
        return B

    def TD3knBlockcreation(numer):
        global k
        _a = int(divZ(divZ(numer, mulZ(n, n))[1], n)[1])
        _b = int(divZ(subZ(divZ(numer, mulZ(n, n))[1], _a), n)[0])
        _c = int(divZ(subZ(numer, subZ(_b, _a)), mulZ(n, n))[0])
        B = []
        for s in range(0, k):
            B.append(Phi([addFpl(mulFpl(xPow(_a), xPow(2 * s)), addFpl(mulFpl(xPow(_b), xPow(s)), xPow(_c))), xPow(s)]))
        return B

    if (m == 2):
        return TDknBlockcreation(i)
    else:
        if (m == 3):
            return TD3knBlockcreation(i)


def getDTDm(i):
    global p, l, m, k, n

    def GTDknN(t):
        G = []
        for i in range(0, n):
            for j in range(0, n):
                if Phi([addFpl(mulFpl(xPow(i), xPow(int(t / n))), xPow(j)), xPow(int(t / n))]) == t:
                    G.append(Phi([xPow(i), xPow(j)]))
        return G

    def GTD3knN(t):
        G = []
        for i in range(0, n):
            for j in range(0, n):
                for ss in range(0, n):
                    if Phi([addFpl(mulFpl(xPow(i), xPow(mulZ(2, int(t / n)))),
                                   addFpl(mulFpl(xPow(j), xPow(int(t / n))), xPow(ss))), xPow(int(t / n))]) == t:
                        G.append(Phi([xPow(i), xPow(j), xPow(ss)]))

    return G

    if (m == 2):
        return GTDknN(i)
    else:
        if (m == 3):
            return GTD3knN(i)


#############################_______________________18.20.2020 Temnikov__________________########################


#############################_______________________20.12.2020 Kochetova__________________########################
# Generating placements
def NextSet(a, n, m):
    j = m - 1
    while (j >= 0) & (a[j] == n):
        j = j - 1
    if (j < 0):
        return False
    if (a[j] >= n):
        j = j - 1
    a[j] = a[j] + 1
    if (j == m - 1):
        return True
    for k in range(j + 1, m):
        a[k] = 0
    return True


# Function for checking the simplicity of the number p
def is_prime(p):
    if (p == 2):
        return True
    if (p % 2 == 0):
        return False
    for i in range(3, int(p ** (1 / 2)), 2):
        if (p % i == 0):
            return False
    return True


# Decomposition of the number n into Prime factors
def PrimMultipliers(n):
    rez = []
    ch = n
    i = 2
    while i <= n:
        if (ch % i == 0) & is_prime(i):
            while (ch % i == 0):
                ch = ch / i
            rez.append(i)
        i = i + 1
    return rez


# Decomposition of numbers by powers of p
def razlP(num):
    rez = []
    for i in range(l):
        rez.append(0)
    s = p
    i = l - 1
    while num != 0:
        if (s ** i <= num):
            rez[i] = int(num / (s ** i))
            num = num - s ** i * rez[i]
        i = i - 1
    return rez


def ModifiedAlgoritm(p, l, f, n, fprim, fl):
    if fl == 0:
        q = p
        x = [0, 1]
    else:
        q = p ** l
        f = fprim
        x = [[0], [1]]
    N = q ** n - 1
    if (n != 1):
        s = PrimMultipliers(n)
        k = len(s)
        ft = x
        for t in range(1, n):
            if fl == 0:
                ft = delzeroend(powerFpl(ft, q))
            else:
                ft = clearNulls(powerFpld(ft, q))
            for i in range(0, k):
                if fl == 0:
                    eucl = EuclidFpX(f, subFpX(ft, x))[2]
                else:
                    eucl = EuclidFplY(f, subFplY(ft, x))[2]
                if ((t == n / s[i]) & (ft == x)) | (len(eucl) != 1):
                    return 0
        if fl == 0:
            fn = powerFpl(ft, q)
        else:
            fn = powerFpld(ft, q)
        if (fn != x):
            return 0
    d = PrimMultipliers(N)
    for di in d:
        if fl == 0:
            if powerFpl(x, int(N / di)) == [1]:
                return 1
        else:
            if clearNulls(powerFpld(x, int(N / di))) == [[1]]:
                return 1
    return 2


# Output of the polynomial in the field Fp^l
def outF(el):
    st = ""
    if el[0] != 0:
        st = str(el[0])
    for i in range(1, len(el)):
        if el[i] != 0:
            if st != "":
                st = st + " + "
            if el[i] != 1:
                st = st + str(el[i]) + "*"
            st = st + "z"
            if i != 1:
                st = st + "^" + str(i)
    return (st)


# Output of the polynomial in the field Fp^ld
def outG(el):
    st = outF(el[0])
    for i in range(1, len(el)):
        if el[i] != [0]:
            st = st + " + "
            if el[i] != [1]:
                if len(outF(el[i])) > 1:
                    st = st + "(" + outF(el[i]) + ")*"
                else:
                    st = st + outF(el[i]) + "*"
            st = st + "x"
            if i != 1:
                st = st + "^" + str(i)
    return (st)


# Algoritm1: Checking for irreducibility and primitiveness of a polynomial of degree l over a field GF(p)
def ALG1(p, l, f, s, d):
    x = [0, 1]
    if (l != 1):
        k = len(s)
        ft = x
        for t in range(1, l):
            ft = delzeroend(powerFpl(ft, p))
            for i in range(k):
                if ((t == l / s[i]) & (ft == x)) | (len(EuclidFpX(f, subFpX(ft, x))[2]) != 1):
                    return 0
        fl = delzeroend(powerFpl(ft, p))
        if (fl != x):
            return 0
    r = len(d)
    for i in range(r):
        if powerFpl(x, int((p ** l - 1) / d[i])) == [1]:
            return 1
    return 2


# Algoritm2: Checking for irreducibility and primitiveness of a polynomial of degree l over a field GF(p)
def ALG2(q, n, fprim, f, s, d):
    f = fprim
    x = [[0], [1]]
    k = len(s)
    ft = x
    for t in range(1, n):
        ft = clearNulls(powerFpld(ft, q))
        for i in range(k):
            if ((t == n / s[i]) & (ft == x)) | (len(EuclidFplY(f, subFplY(ft, x))[2]) != 1):
                return 0
    fn = powerFpld(ft, q)
    if (fn != x):
        return 0
    r = len(d)
    for i in range(r):
        if clearNulls(powerFpld(x, int((q ** n - 1) / d[i]))) == [[1]]:
            return 1
    return 2


# Generating all irreducible and primitive polinomials of degree l over a field GF(p)
def genAllPolsFpl():
    a = []
    for i in range(l):
        a.append(0)
    a.append(1)
    rez1 = [[], []]
    f = a
    N = p ** l - 1
    s = PrimMultipliers(l)
    d = PrimMultipliers(N)
    zn = ALG1(p, l, a, s, d)
    if zn == 1:
        rez1[0].append(copyelem(a))
    if zn == 2:
        rez1[0].append(copyelem(a))
        rez1[1].append(copyelem(a))
    while (NextSet(a, p - 1, l)):
        f = a
        zn = ALG1(p, l, a, s, d)
        if zn == 1:
            rez1[0].append(copyelem(a))
        if zn == 2:
            rez1[0].append(copyelem(a))
            rez1[1].append(copyelem(a))
    return rez1


# Generating irreducible polinomial of degree l over a field GF(p)
def genIrreducibleFpl():
    a = []
    for i in range(l):
        a.append(0)
    a.append(1)
    f = a
    N = p ** l - 1
    s = PrimMultipliers(l)
    d = PrimMultipliers(N)
    zn = ALG1(p, l, a, s, d)
    if (zn == 1) | (zn == 2):
        return copyelem(a)
    while (NextSet(a, p - 1, l)):
        f = a
        zn = ALG1(p, l, a, s, d)
        if (zn == 1) | (zn == 2):
            return copyelem(a)
    return []


# Generating primitive polinomial of degree l over a field GF(p)
def genPrimitiveFpl():
    a = []
    for i in range(l):
        a.append(0)
    a.append(1)
    f = a
    N = p ** l - 1
    s = PrimMultipliers(l)
    d = PrimMultipliers(N)
    zn = ALG1(p, l, a, s, d)
    if zn == 2:
        return copyelem(a)
    while (NextSet(a, p - 1, l)):
        f = a
        zn = ALG1(p, l, a, s, d)
        if zn == 2:
            return copyelem(a)
    return []


# Generating all irreducible and primitive polinomials of degree d over a field GF(p^l)
def genAllPolsFpld():
    fprim = genPrimitiveFpl()
    rez2 = [[], []]
    a = []
    for i in range(d):
        a.append(0)
    a.append(1)
    el = []
    for i in a:
        el.append(delzeroend(razlP(i)))
    mod = el
    q = p ** l
    N = q ** d - 1
    s = PrimMultipliers(d)
    d = PrimMultipliers(N)
    zn = ALG2(q, d, fprim, el, s, d)
    if zn == 1:
        rez2[0].append(copyelem(el))
    if zn == 2:
        rez2[0].append(copyelem(el))
        rez2[1].append(copyelem(el))
    while (NextSet(a, p ** l - 1, d)):
        el = []
        for i in a:
            el.append(delzeroend(razlP(i)))
        mod = el
        zn = ALG2(q, d, fprim, el, s, d)
        if zn == 1:
            rez2[0].append(copyelem(el))
        if zn == 2:
            rez2[0].append(copyelem(el))
            rez2[1].append(copyelem(el))
    return rez2


# Generating irreducible polinomial of degree d over a field GF(p^l)
def genIrreducibleFpld():
    fprim = genPrimitiveFpl()
    a = []
    for i in range(d):
        a.append(0)
    a.append(1)
    el = []
    for i in a:
        el.append(delzeroend(razlP(i)))
    mod = el
    q = p ** l
    N = q ** d - 1
    s = PrimMultipliers(d)
    d = PrimMultipliers(N)
    zn = ALG2(q, d, fprim, el, s, d)
    if (zn == 1) | (zn == 2):
        return copyelem(el)
    while (NextSet(a, p ** l - 1, d)):
        el = []
        for i in a:
            el.append(delzeroend(razlP(i)))
        mod = el
        zn = ALG2(q, d, fprim, el, s, d)
        if (zn == 1) | (zn == 2):
            return copyelem(el)
    return []


# Generating primitive polinomial of degree d over a field GF(p^l)
def genPrimitiveFpld():
    fprim = genPrimitiveFpl()
    a = []
    for i in range(d):
        a.append(0)
    a.append(1)
    el = []
    for i in a:
        el.append(delzeroend(razlP(i)))
    mod = el
    q = p ** l
    N = q ** d - 1
    s = PrimMultipliers(d)
    d = PrimMultipliers(N)
    zn = ALG2(q, d, fprim, el, s, d)
    if zn == 2:
        return copyelem(el)
    while (NextSet(a, p ** l - 1, d)):
        el = []
        for i in a:
            el.append(delzeroend(razlP(i)))
        mod = el
        zn = ALG2(q, d, fprim, el, s, d)
        if zn == 2:
            return copyelem(el)
    return []
#############################_______________________20.12.2020 Kochetova__________________########################

def mulFpldNew(a1, a2):
    global l, d, mod
    if int(len(a1)) == 1:
        rez = smulFplY(a2, a1[0])
        return clearNulls(rez)
    else:
        if int(len(a2)) == 1:
            rez = smulFplY(a1, a2[0])
            return clearNulls(rez)
        else:
            rez = [[0] for i in range(2 * d - 1)]
            for i in range(0, d):
                for j in range(0, d):
                    rez[i + j] = addFpl(rez[i + j], mulFpl(a2[i], a1[j]))
            rez = clearNulls(rez)
            rez = divFplY(rez, mod)[1]
            return rez


def subFpldNew(a1, a2):
    global d, l
    l1 = len(a1)
    l2 = len(a2)
    dmin = min(l1, l2)
    dmax = max(l1, l2)
    if dmax <= d:
        rez = []
        for i in range(0, dmin):
            rez.append(subFpl(a1[i], a2[i]))
        if l1 > 1:
            for i in range(dmin, l1):
                rez.append(subFpl([0], a1[i]))
        elif l2 > 1:
            for i in range(dmin, l2):
                rez.append(subFpl([0], a2[i]))
        return clearNulls(rez)
    else:
        print("arguments not in field")


def addFpldNew(a1, a2):
    global d, l
    l1 = len(a1)
    l2 = len(a2)
    dmin = min(l1, l2)
    dmax = max(l1, l2)
    if dmax <= d:
        rez = []
        for i in range(0, dmin):
            rez.append(addFpl(a1[i], a2[i]))
        if l1 > 1:
            for i in range(dmin, l1):
                rez.append(addFpl([0], a1[i]))
        elif l2 > 1:
            for i in range(dmin, l2):
                rez.append(addFpl([0], a2[i]))
        return clearNulls(rez)
    else:
        print("arguments not in field")


def subFpldsq(a1, a2):
    global d, l
    l1=len(a1)
    l2=len(a2)
    dmin=min(l1,l2)
    dmax=max(l1,l2)
    if dmax<=d:
        rez = []
        for i in range (0,dmin):
            rez.append(subFpldNew(a1[0], a2[0]))
        if l1<dmin:
            for i in range (dmin,l2):
                rez.append(subFpldNew ([0], a2[i]))
        else:
            if l2<l1:
                rez.append(subFpldNew ([0], a1[i]))
        return rez
    else:
        print ("arguments not in field")


def addFpldsq(a1, a2):
    global d, l
    l1=len(a1)
    l2=len(a2)
    dmin=min(l1,l2)
    dmax=max(l1,l2)
    if dmax<=d:
        rez = []
        for i in range (0,dmin):
            rez.append(addFpldNew (a1[0], a2[0]))
        if l1<dmin:
            for i in range (dmin,l2):
                rez.append(addFpldNew ([0], a2[i]))
        else:
            if l2<l1:
                rez.append(addFpldNew ([0], a1[i]))
        return rez
    else:
        print ("arguments not in field")

def smulFplYsq(a, c):
    rez = []
    for i in range(len(a)):
        rez.append(mulFpldNew(a[i], c))
    return clearNulls(rez)

def invFpldsq(a):
    return [invFpld(a[0])]

def divFplYsq(a1, a2):
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
    for i in range(lena - lenb-1):
        #print ("a2[lenb - 1],invFpldsq(a2[lenb - 1])",a2[lenb - 1],invFpldsq(a2[lenb - 1]))
        c = mulFpldNew(invFpldsq(a2[lenb - 1]), pr[len(pr)-1])
        rez1[lena - lenb - i] = c
        prom = []
        for j in range(lena - lenb - i):
            prom.append(pr[j])
        pr = prom + subFpldsq(pr[lena - lenb - i:], smulFplYsq(a2, c))
        for k in range(len(a1)-len(pr)-i-1):
            pr.append([0])
    for i in range(0, len(pr)):
        rez2[i] = pr[i]
    return [clearNulls(rez1), clearNulls(rez2)] # [частное, остаток]


def mulFpldsq(a1, a2):
    global l, d, mod
    if int(len(a1))==1:
        rez=smulFplYsq(a2,a1[0])
        return clearNulls(rez)
    else:
        if int(len(a2))==1:
            rez=smulFplYsq(a1,a2[0])
            return clearNulls(rez)
        else:
            rez = [[[0]] for i in range(2 * d - 1)]
            for i in range(0, d):
                for j in range(0, d):
                    #print ("a2[i], a1[j],mulFpldNew (a2[i], a1[j])",a2[i], a1[j])
                    #print (rez[i + j], mulFpldNew (a2[i], a1[j]))
                    rez[i + j] = addFpldNew(rez[i + j], mulFpldNew (a2[i], a1[j]))
            rez = clearNulls(rez)
            rez = divFplYsq(rez, mod)[1]
            return rez

