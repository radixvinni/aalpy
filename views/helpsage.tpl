<div class="container">
    <ul class="nav nav-pills">
        <li><a href="/help/python">Язык Python</a></li>
        <li><a href="/help/aal">Библиотека AAL</a></li>
        <li><a href="/help/class">Список классов AAL</a></li>
        <li><a href="/help/dev">Для разработчиков AAL</a></li>
        <li class="active"><a href="/help/sage">Язык Sage</a></li>
    </ul>
    <div class="row sidebar">
        <div class="span2 affix visible-desktop">
            <ul class="nav nav-list well">
                <li class="nav-header">Sage и Python</li>
                <li class="active">
                    <a href="#import">Импорт модулей</a>
                </li>
                <li class="">
                    <a href="#sessions">Несколько сессий</a>
                </li>
                <li class="">
                    <a href="#constants">Константы</a>
                </li>
                <li class="">
                    <a href="#aal">Алгебраические структуры</a>
                </li>
            </ul>
        </div>
        <div class="span10 offset2" id="glossary-content">
            <h1>Инструкция по использованию Sage</h1>
            <p>Sage - система компьютерной алгебры на основе языка Python, покрывающая много областей математики,
                включая алгебру, комбинаторику, вычислительную математику и матанализ.<br>Для переключения между
                режимами интерпретации Sage и Python в алгебраическом процессоре используется
                переключатель <button type="button" class="btn btn-small btn-primary" data-toggle="button"><i
                        class="icon-sage"
                        style="background-image: url(/assets/img/sage.png);background-position: 0 0;"></i>
                    Sage</button>.
            </p>
            <p>
                Для выполнения программ Sage использует пре-парсер, который преобразует код, прежде чем выполнять его с
                использованием интерпретатора Python. В данной справке описаны основные отличия языка Sage от Python
                применительно к алгебраческим структурам данных, реализованным в AAL. Для более детального изучения
                возможностей Sage смотри <a href="http://doc.sagemath.org/html/ru/tutorial/index.html">руководство на
                    русском</a> и более полную <a
                    href="http://doc.sagemath.org/html/en/reference/index.html">документацию на английском</a>.
            </p>
            <div class='section'>
                <div class='page-header'>
                    <h2 id='import'>Импорт модулей</h2>
                </div>
                <div class='section'>
                    <p>
                        В режиме Sage разрешён импорт любых модулей языка python, включая AAL. Это позволяет
                        использовать AAL в режиме Sage. Для импорта используется синтаксис
                        <code>import <i>название модуля</i></code> или <code>from <i>название модуля</i> import <i>список импортируемых
                        переменных через запятую</i></code> для доступа к содержимому модуля без префикса с названием
                        модуля.
                    </p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">import numpy;print numpy.arange(10)</pre>
                            <pre>[0 1 2 3 4 5 6 7 8 9]</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">import numpy</pre>
                            <pre>Traceback (most recent call last):
File "&lt;program&gt;", line 1, in &lt;module&gt;
        ImportError: __import__ not found</pre>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">print AAL.Integer('123')</pre>
                            <pre>AAL.Integer(123)</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">print AAL.Integer('123')</pre>
                            <pre>AAL.Integer(123)</pre>
                        </div>
                    </div>
                </div>
            </div>
            <div class='section'>
                <div class='page-header'>
                    <h2 id='sessions'>Несколько сессий</h2>
                </div>
                <div class='section'>
                    <p>
                        Интерфейс алгебраического процессора позволяет одному пользователю активировать режим Sage на
                        нескольких вкладах браузера. В этом случае для каждой вкладки на сервере будет создан отдельный
                        процесс со своими переменными(в режиме python у каждого пользователя одна сессия с общими
                        переменными на всех вкладках). Обмен данными между этими процессами можно вести через модуль
                        share, но только с автоматическим преобразованием этих данных в строки. В режиме python можно
                        обмениваться любыми объектами, а не только строками.
                    </p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">share.a = AAL.Integer('123')
print [share.a]</pre>
                            <pre>['AAL.Integer(123)']</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">share.a = AAL.Integer('123')
print [share.a]</pre>
                            <pre>[AAL.Integer(123)]</pre>
                        </div>
                    </div>
                    <p>
                        Механизм share.Session в python позволяет обмениваться переменными между режимами python и sage:
                    </p>
                    <div class='section'>
                        <h4>Режим Python</h4>
                        <pre class="prettyprint">sage_share = share.Session('http://localhost:8081/poll','user','123')
print sage_share.a</pre>
                        <pre>['AAL.Integer(123)']</pre>
                    </div>
                </div>
            </div>
            <div class='section'>
                <div class='page-header'>
                    <h2 id='constants'>Константы</h2>
                </div>
                <div class='section'>
                    <p>
                        Пре-парсер Sage превращает все константы кроме строк в типы Sage.
                        То есть он оборачивает, например, целочисленные константы в коде в конструктор
                        <code>Integer( )</code>. Получить объект python можно применив к константе название типа python,
                        то есть <code>int( )</code>.</p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">print type(123)
print type(0.123)
print type(1+1j)
print type('abc')
print type(int(123))</pre>
                            <pre>&lt;type 'sage.rings.integer.Integer'&gt;
&lt;type 'sage.rings.real_mpfr.RealLiteral'&gt;
&lt;type 'sage.rings.complex_number.ComplexNumber'&gt;
&lt;type 'str'&gt;
&lt;type 'int'&gt;</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">print type(123)
print type(0.123)
print type(1+1j)
print type('abc')
print type(int(123))</pre>
                            <pre>&lt;type 'int'&gt;
&lt;type 'float'&gt;
&lt;type 'complex'&gt;
&lt;type 'str'&gt;
&lt;type 'int'&gt;</pre>
                        </div>
                    </div>
                    <p>
                        Соответственно, математические операции (напр. деление) переопределяются в типах sage и могут
                        выдавать отличный от python результат:</p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">print 2/3
print 2//3
print int(2)/int(3)</pre>
                            <pre>2/3
0
0</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">print 2/3
print 2//3
print int(2)/int(3)</pre>
                            <pre>0
0
0</pre>
                        </div>
                    </div>
                    <p>
                        В Python, <code>^</code> означает «исключающее "или" (xor)», а не возведение в степень, так в
                        Sage. Эта опрация в отличие от деления, заменяется пре-парсером, а не переопределяется в
                        типах Sage:
                    </p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">print 2^2
print 2**2
print '2^2'
print int(2)^int(2)</pre>
                            <pre>4
4
2^2
4</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">print 2^2
print 2**2
print '2^2'
print int(2)^int(2)</pre>
                            <pre>0
4
2^2
0</pre>
                        </div>
                    </div>
                </div>
            </div>
            <div class='section'>
                <div class='page-header'>
                    <h2 id='aal'>Алгебраические структуры</h2>
                </div>
                <div class='section'>
                    <p>
                        Для всех классов и методов AAL существуют аналоги в Sage
                    </p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">ZZ, Integer #эквивалентные обозначения в кольце Z
#Конструктор
a = 123 # или ZZ(123)
#Операции в кольце Z
-a
a+b
quotient=a//b; remainder=a%b
a*b
a-b
a.sqrt().n()
a.is_prime()
a^n
lcm(i, j)
gcd(i,j)
xgcd(i,j)
legendre_symbol(arg,prime)
jacobi_symbol(arg,composite)
next_prime(n)
#Разложение чисел
print factor(84) #2^2 * 3 * 7
print list(factor(84))
#[(2, 2), (3, 1), (7, 1)]
Zmod, IntegerModRing # в кольце Zn
#Конструктор
Zn = Zmod(97); a = Zn(123)
#Операции в кольце Zn
a+b
a-b
a*b
a/b
a^b
1/a
GF, FiniteField # в кольце Fp, группе Fp*
#Конструктор
Fp = GF(97); a = Fp(123)
#Операции
a+b
a-b
a*b
a/b
a^b
1/a
a.order()
a.order() == Fp.order()
GF(2)['x'], PolynomialRing #обозначения GF(2)[X]
#Конструктор
poly = GF(2)['x'] # или PolynomialRing(GF(2), 'x')
b = poly("x^0+x^1+x^3+x^6")
EllipticCurve
#Конструктор
E = EllipticCurve(GF(101),[2,3])
</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Режим Python</h4>
                            <pre class="prettyprint">AAL.Integer #в кольце Z
#Конструктор
a = AAL.Integer('123')
#Операции в кольце Z
a.Negate()
.Add(a,b)
.Div(a,b,remainder)
.Mul(a,b)
.Sub(arg1,arg2)
.Sqrt(arg)
.isPrime()
.Pow(a,n)
.LCM(i, j)
.Euclid(i, j)
.ExEuclid(i, j, x, y)
.LegendreSymbol(arg,prime)
.JacobySymbol(arg,composite)
.GeneratePrime(n)
#Разложение чисел
fa = FactorizationAlgorithms(Integer(84))
print fa.MsieveDecomposition().toList()
#[('2', '2'), ('3', '1'), ('7', '1')]
AAL.Integer #в кольце Zn
#Конструктор
a = AAL.Integer('123')
#Операции в кольце Zn
.ModAdd(arg1,arg2,n)
.ModSub(arg1,arg2,n)
.ModMul(arg1,arg2,n)
.ModDiv(arg1,arg2,n)
.ModPow(arg1,arg2,n)
.Inverse(arg,n)
AAL.Integer #в кольце Fp, группе Fp*
#Конструктор
a = AAL.Integer('123')
#Операции
.ModAddInFp
.SubInFp
.MulInFp
.DivInFp
.PowInFp
.InverseInFp
.elementOrder
.isGenerator
Polynom #GF(2)[X]
#Конструктор
a = Polynom("1101001")
b = Polynom("0 1 3 6",Dec)
EllipticCurve # кривая характеристики > 3
#Конструктор
E = EllipticCurve(Integer(101), Integer(2), Integer(3))
</pre>
                        </div>
                    </div>
                    <p>Для эллиптической кривой можно задать список из 5 коэффициентов [a<sub>1</sub>, a<sub>2</sub>,
                        a<sub>3</sub>, a<sub>4</sub>, a<sub>6</sub>] или из двух [a<sub>4</sub>, a<sub>6</sub>],
                        уравнение кривой
                        y<sup>2</sup>+a<sub>1</sub>xy+a<sub>3</sub>y=x<sup>3</sup>+a<sub>2</sub>x<sup>2</sup>+a<sub>4</sub>x+a<sub>6</sub>.
                        Если первый аргумент (поле) не задан, то подразумевается поле рациональных чисел.
                    </p>
                    <p>
                        Во всех структурах данных Sage чтобы задать элемент структуры можно использовать образующие
                        элементы(генераторы):</p>
                    <div class='section'>
                        <h4>Режим Sage</h4>
                        <pre class="prettyprint">poly = GF(2)['x']
x = poly.gen()
print x^2 == poly('x^2')
print x^2 in poly</pre>
                        <pre>True
True</pre>
                    </div>
                    <p>
                        Получить все генераторы(порождающее множество) можно через метод gens(), отдельный генератор
                        через gen(номер), эти методы универсальны во всех структурах sage:
                    </p>
                    <div class='section'>
                        <h4>Режим Sage</h4>
                        <pre class="prettyprint">E=EllipticCurve(GF(97),[2,3])
print E.order()
P,Q = E.gens()
print P.xy(), Q.xy()
print P.order(), Q.order()
#Сгенерируем случайную точку R
R = P * randint(1, P.order()) + Q * randint(1, Q.order())
print R.xy()</pre>
                        <pre>100
(39, 91) (68, 0)
50 2
(59, 32)</pre>
                    </div>
                    <p>
                        Также в программах sage часто можно встретить особую синтаксическую конструкцию, позволяющую
                        одновременно объявить множество и его генератор:
                    </p>
                    <div class="row-fluid">
                        <div class='section span6'>
                            <h4>Режим Sage</h4>
                            <pre class="prettyprint">poly.&lt;x&gt; = GF(2)[]
E.&lt;P,Q&gt; = EllipticCurve(GF(97),[2,3])</pre>
                        </div>
                        <div class='section span6'>
                            <h4>Это эквивалентно</h4>
                            <pre class="prettyprint">poly = GF(2)['x']; x = poly.gen()
E = EllipticCurve(GF(97),[2,3]); P,Q = E.gens()</pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

%rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False