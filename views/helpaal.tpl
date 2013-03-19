<div class="container">
    <ul class="nav nav-pills">
      <li><a href="/help/python">Язык Python</a></li>
      <li class="active"><a href="/help/aal">Библиотека AAL</a></li>
      <li><a href="/help/class">Список классов AAL</a></li>
      <li><a href="/help/dev">Для разработчиков AAL</a></li>
    </ul>
    <div class="row sidebar" id="pythonhelp">
        <div class="span2">
        <ul class="nav nav-list well affix visible-desktop">
            <li class="nav-header">Библиотека AAL</li>
            <li class="active">
              <a href="#integer">Класс Integer</a>
            </li>
            <li class="">
              <a href="#decompositions">Разложения</a>
            </li>
            <li class="">
              <a href="#polynom">Класс Polynom</a>
            </li>
            <li class="">
              <a href="#elliptic">Эллиптические кривые</a>
            </li>
        </ul>
    </div>
    <div class="span10" id="glossary-content">
        <h1>Руководство MPEI AAL</h1>
        <p>В этом руководстве рассмотрены основные классы библиотеки MPEI AAL.</p>
        <p>Для всех операций в библиотеке принята запись: <code>&lt;переменная-результат&gt;.&lt;операция&gt;(&lt;аргументы&gt;)</code>. Возможна цепочная запись, где одна операция следует за другой. Если операция имеет более одного результата(как в случае ExEuclid см. пример ниже), переменные передаются как параметры.</p>
        <div class='section'>
          <div class='page-header'>
            <h2 id='integer'>Класс Integer</h2>
          </div>
          <div class='section'>
            <p> Для класса используется числовой и строковый(для больших чисел) конструкторы. То есть числа можно передавать в  числовом формате(для чисел длиной до 32 бит) или в виде строк, например "127" или '127'. Доступны следующие операции:</p>
            <h3>Операции в кольце Z, не использующие разложение чисел</h3> 
            <p>Взятие числа <code>res=Integer(127)</code>,<code>res=Integer("127")</code>, <code>res=Integer('127')</code>,отрицание <code>arg.Negate()</code>, сложение <code>res.Add(a,b)</code>, деление с остатком <code>quotient.Div(a,b,remainder)</code>, умножение <code>res.Mul(a,b)</code>, <!--деление <code>res.Div(a,b)</code>, операция сравнения: <code>a.Compare(b)</code> и--> вычитание <code>res.Sub(arg1,arg2)</code>, тест на простоту Миллера-Рабина <code>a.isPrime()</code>, взятие целой части квадратного корня <code>res.Sqrt(arg)</code>, возведение в степень <code>res.Pow(a,n)</code>, Взятие НОК <code>res.LCM(i, j)</code>, Взятие НОД <code>res.Euclid(i, j)</code> и линейное диофантово уравнение <em>ix+jy=z</em> <code>z.ExEuclid(i, j, x, y)</code>, Символ Лежандра <code>Integer.LegendreSymbol(arg1,arg2)</code>, символ Якоби <code>Integer.JacobySymbol(arg1,arg2)</code>, генерация вероятностно-простого числа длиной n двоичных символов <code>res.GeneratePrime(n)</code>. </p>
            
            <div class='section'>
              <h4>Примеры</h4>
              <pre class="prettyprint"><code>x = Integer('2')&#x000A;x.Add(x,Integer(1))&#x000A;#AAL.Integer(3)&#x000A;x += Integer(1)&#x000A;x&#x000A;#AAL.Integer(4)&#x000A;x.Mul(x,Integer(2)).Add(x, Integer(1))&#x000A;#AAL.Integer(9)
# Символ Лежандра по модулю 127
Integer.LegendreSymbol(Integer(23),Integer(127))
#-1
# Генерация вероятностно-простого числа длиной 100 двоичных символов
p=Integer()
p.GeneratePrime(100)
#AAL.Integer(893979678444396264020998566383)
# Тест Миллера-Рабина числа 126 на простоту
Integer(126).isPrime()
#False
# Тест Лука - Лемера на простоту чисел Мерсенна 2^n-1, пример n=4
Integer().TestLukaLemera(Integer(4))
#False
              </code></pre>
            </div>
            <div class='section'>
              <h4>Пример деления с остатком</h4>
              <pre class="prettyprint"><code>a = Integer(117)&#x000A;b = Integer(25)&#x000A;q = Integer()&#x000A;r=Integer()&#x000A;q.Div(a,b,r)&#x000A;#AALInteger(4)&#x000A;r&#x000A;#AALInteger(17)</code></pre>
            </div>
            <div class='section'>
              <h4>Диофантово уравнение(1071*x+462*y=z)</h4>
              <pre class="prettyprint"><code>a = Integer()&#x000A;b = Integer()&#x000A;x = Integer()&#x000A;x.ExEuclid(Integer(1071),Integer(462),a,b)&#x000A;#AAL.Integer(21)&#x000A;a&#x000A;#AAL.Integer(-3)&#x000A;b&#x000A;#AAL.Integer(7)</code></pre>
            </div>
            <p>При работе с интерпретатором результат каждой операции выводится в формате, пригодном для чтения(через <code>str()</code> и <code>repr()</code>), поэтому необходимость преобразования объекта в строку возникает редко, например, если мы хотим преобразовать AAL.Integer в число python. Сделать это можно через функцию <code>int()</code>: 	<code>int(a.ToString())</code>. Для сравнения чисел, их также можно преобразовывать в строки, поскольку <code>Integer(12)==Integer(12)</code> вернет <code>False</code>.</p>
          </div>
        </div>
        <div class='section'>
          <h3 id='decompositions'>Разложение чисел на множители</h3>
          <div class='section'>
            <p>Реализованы 2 способа получния разложения:</p>
            <ol>
              <li><code>DecompositionManager.Instance().getDecomposition(Integer(1023),False)</code> – получить разложение числа 1023 из таблиц факторизации чисел b<sup>n</sup>-1, b=2,3,7, ... (кеннингемовского проекта).</li>
              <li><code>FactorizationAlgorithms(Integer(84)).MsieveDecomposition()</code> – получить разложение числа 84 используя метод msieve(MIRACL).</li>
            </ol>
            <p>Результат в обоих случаях можно использовать в числовых и полиномиальных  алгоритмах, основанных на разложении. Через вызов <code>res.toList()</code> результат может представляется в как список python, состоящий из кортежей строк(строка-число и строка-степень).</p>
            <div class='section'>
              <h4>Пример разложения(84=2*2*3*7)</h4>
              <pre class="prettyprint"><code>a=FactorizationAlgorithms(Integer(84)).MsieveDecomposition().toList()
a
#[('2', '2'), ('3', '1'), ('7', '1')]
a.reverse()
a
#[('7', '1'), ('3', '1'), ('2', '2')]
v=DecompositionManager.Instance().getDecomposition(Integer(126),False)
v.toList()
#[('2', '1'), ('3', '2'), ('7', '1')]</code></pre>
            </div>
            <p>Вектор разложения <code>DecompositionMemberVector</code> для его последующего использования можно записать по известному разложению. В этом примере проверяется разложение числа 12:</p>
            <h4>Проверка разложения(12=2^2*3)</h4>
              <pre class="prettyprint"><code> d=DecompositionMemberVector(2)
 d[0]=DecompositionMember(Integer(2),Integer(2))
 d[1]=DecompositionMember(Integer(3),Integer(1))
 DecompositionMember.isRightDecomposition(Integer(12),d)
#True</code></pre>
            <h3>Операции в кольце Z, использующие разложение чисел</h3>
            <ul>
              <li><code>Integer().ModifiedTestLuka(decomposition,Integer(13))</code> - Тест простоты Люка</li>
              <!--li><code>Integer().TestLukaLemera(Integer(4))</code> - Тест простоты Люка ─ Лемера(числа 2<sup>n</sup> - 1, аргумент - n)</li-->
              <li><code>Integer().TestPoklingtona(decomposition,Integer(13))</code> - Тест простоты Поклингтона</li>
              <li><code>res.GeneratePrime(Integer(12),decomposition)</code> - Генерация достоверно простого числа в Zn</li>
              <li><code>a = Integer(12);a.Euler(d)</code> - Функция Эйлера</li>
            </ul>
            <h3>Операции в кольце Z<sub>n</sub>, не использующие разложение порядка мультипликативной группы.</h3>
            <p>Предварительно проверяется посредством НОД взаимная простота каждого аргумента и модуля n.</p>
            <p>Операции: сложение <code>res.ModAdd(arg1,arg2,n)</code>, вычитание <code>res.ModSub(arg1,arg2,n)</code> умножение <code>res.ModMul(arg1,arg2,n)</code>, деление <code>res.ModDiv(arg1,arg2,n)</code>, возведение в степень <code>res.ModPow(arg1,arg2,n)</code>, обращение <code>res.Inverse(arg,n)</code></p>
            <h3>Операции в кольце Z<sub>n</sub>, использующие разложение порядка мультипликативной группы.</h3>
            <p>Предварительно проверяется посредством НОД взаимная простота аргумента и модуля n.</p>
            <h4>Пример. Порядок группы вычисляется по разложению &#966;(n), &#966;(n) вычисляется по разложению n</h4>
            <h4>Пример. Тест образующего элемента группы Zn*  вычисляется по разложению &#966;(n), &#966;(n) вычисляется по разложению n</h4>
            <h3>Операции в кольце F<sub>p</sub>, не использующие разложение порядка мультипликативной группы.</h3>
            <p>Предварительно проверяется посредством НОД взаимная простота каждого аргумента и модуля p.</p>
            <p>Операции: сложение <code>res.ModAddInFp(arg1,arg2,n)</code>, вычитание <code>res.SubInFp(arg1,arg2,n)</code> умножение <code>res.MulInFp(arg1,arg2,n)</code>, деление <code>res.DivInFp(arg1,arg2,n)</code>, возведение в степень <code>res.PowInFp(arg1,arg2,n)</code>, обращение <code>res.InverseInFp(arg,n)</code></p>
            <h3>Операции в кольце F<sub>p</sub>, использующие разложение порядка мультипликативной группы.</h3>
            <p>Предварительно проверяется посредством НОД взаимная простота каждого аргумента и модуля p.</p>
            <h4>Пример. Порядок группы вычисляется  по разложению p─1</h4>
            <h4>Пример. Тест образующего элемента группы Fp* вычисляется по разложению p─1</h4>

          </div>
        </div>
        <div class='section'>
          <div class='page-header'>
            <h2 id='polynom'>Класс Polynom</h2>
          </div>
          <div class='section'>
            <p>Для класса используется строковый конструктор. Вторым аргументом в конструкторе указывается тип записи полинома: 2=двоичная, 10=Dec=степенями, 16=шестнадцатиричная. В методе <code>ToString</code>, осуществляющем обратное преобразование, также можно указать тип записи.</p>
          </div>
          <div class='section'>
              <h4>Пример</h4>
              <pre class="prettyprint"><code>a = Polynom("111")
b = Polynom("0 1 3 6",Dec)
a.ToString()==b.ToString()
#True</code></pre>
          </div>
          <p>Класс содержит методы для работы в в поле многочленов GF(2)[X]: <code>Add</code>, <code>Mul</code>, <code>Div</code>, <code>Pow</code>; для работы в поле с приведением по модулю используются функции <code>ModAdd</code>, <code>ModMul</code>, <code>ModDiv</code>, <code>ModPow</code>, для работы в поле GF(2<sup>n</sup>) используются функции с  <code>InGF2_n</code> на конце, например <code>AddInGF2_n</code> и т.д. Подобным образом устроены классы <code>PolynomGF3</code> и <code>PolynomGF7</code>.</p>
        </div>
        <div class='section'>
          <div class='page-header'>
            <h2 id='elliptic'>Классы эллиптических точек и кривых</h2>
          </div>
          <div class='section'>
            <p>Для задания эллиптической кривой над GF(p) с уравнением Y<sup>2</sup> = X<sup>2</sup> + <em>a</em>X + <em>b</em> используется конструктор <code>EllipticCurve(p, a, b)</code>, где p, a, b - экземпляры <code>Integer</code>. Для задания точки на кривой используется конструктор <code>EllipticPoint(с)</code> в который передается заданная кривая. Функция <code>Generate</code> позволяет взять случайную точку на кривой. Точки можно складывать - <code>Add</code>, удваивать - <code>Double</code>, умножать на константу - <code>Mul</code>.</p>
          </div>
          <div class='section'>
              <h4>Пример</h4>
              <pre class="prettyprint"><code>c=EllipticCurve(Integer(5),Integer(1),Integer(1))
p=EllipticPoint(c)
p.Generate()
#AAL.EllipticPoint(x=2,y=1)</code></pre>
          </div>
          <p>Аналогично для несуперсингулярных эллиптических кривых над полем GF(2<sup>n</sup>) вида Y<sup>2</sup> + X Y = X<sup>3</sup> + <em>a</em> X<sup>2</sup> + <em>b</em> используется <code>NonSuperSingularEllipticCurve(module,a,b)</code>, для суперсингулярных эллиптических кривых над полем GF(2<sup>n</sup>) вида Y<sup>2</sup> + <em>a</em> Y = X<sup>3</sup> + <em>b</em> X + <em>c</em> используется <code>SuperSingularEllipticCurve(module,a,b,c)</code></p>
        </div>
        
    </div>
</div>

%rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False
