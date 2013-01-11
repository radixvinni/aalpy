<div class="container">
    <ul class="nav nav-pills">
      <li><a href="/help/python">Язык Python</a></li>
      <li class="active"><a href="/help/aal">Библиотека AAL</a></li>
      <li><a href="/help/dev">Для разработчиков AAL</a></li>
    </ul>
    <div class="row sidebar" id="pythonhelp">
        <div class="span2">
        <ul class="nav nav-list well affix visible-desktop">
            <li class="nav-header">Библиотека AAL</li>
            <li class="active">
              <a href="#classes">Список классов</a>
            </li>
            <li class="">
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
        <h1>Руковоство MPEI AAL</h1>
        <p>В этом руководстве рассмотрены основные классы библиотеки MPEI AAL.</p>
        <div class='section'>
          <div class='page-header'>
            <h2 id='classes'>Список классов</h2>
          </div>
          <div class='section'>
          <p>Доступ к следующим классам библиотеки осуществляется по их названиям:</p>
           <pre>
        Converter
        DecompositionManager
        DecompositionMember
        EllipticCurve
        EllipticCurveGF2
            NonSuperSingularEllipticCurve
            SuperSingularEllipticCurve
        EllipticPoint
        EllipticPointGF2
            NonSuperSingularEllipticPoint
            SuperSingularEllipticPoint
        FactorizationAlgorithms
        Integer
        IntegerBinom
        IntegerBinomEllipticCurve
        IntegerBinomEllipticPoint
        IntegerBinomModulePolynom
        Matrix
        NumberVector
        Polynom
        PolynomGF2_mY_7
        PolynomGF2_m_4
        PolynomGF3
        PolynomGF7
        PrimeTester
        SwigPyIterator
        TableManager</pre>
           Также определены аналоги std::vector для некоторых классов:
        <pre>
        DecompositionMemberVector - аналог std::vector&lt;AAL::DecompositionMember&gt;
        IntVector аналог std::vector&lt;int&gt;
        IntegerBinomVector аналог std::vector&lt;AAL::IntegerBinom&gt;
        IntegerBinomEllipticPointVector аналог std::vector&lt;AAL::IntegerBinomEllipticPoint&gt;
        IntegerPVector аналог std::vector&lt;AAL::Integer*&gt;
        IntegerVector аналог std::vector&lt;AAL::Integer&gt;</pre>
          Для доступа к методам AAL::BasicType в классах библиотеки определены и его аналоги:
        <pre>
        ucharBasicType - предок Polynom
        uintBasicType - предок Integer</pre> 
          </div>
        </div>
        <div class='section'>
          <div class='page-header'>
            <h2 id='integer'>Класс Integer</h2>
          </div>
          <div class='section'>
            <p> Для класса используется числовой и строковый(для больших чисел) конструкторы. Доступны операции сложение <code>res.Add(a,b)</code>, умножение <code>res.Mul(a,b)</code>, деление <code>res.Div(a,b)</code>, операция вычитания(сравнения): <code>a.Compare(b)</code>, тест на простоту <code>a.isPrime()</code>, взятие числа по модулю n <code>res.Mod(a,n)</code>, возведение в степень <code>res.Pow(a,n)</code>, извлечение квадратного корня <code>res.Sqrt(a)</code>, операции по модулю <code>ModPow</code>, <code>ModDiv</code>, алгоритмы Евклида <code>res.Euclid(i, j)</code> и <code>res.ExEuclid(i, j, x, y)</code> 
            </p>
            <div class='section'>
              <h4>Пример</h4>
              <pre class="prettyprint"><code>x = Integer('2')&#x000A;x.Add(x,Integer(1))&#x000A;#AAL.Integer(3)&#x000A;x += Integer(1)&#x000A;x&#x000A;#AAL.Integer(4)&#x000A;x.Mul(x,Integer(2)).Add(x, Integer(1))&#x000A;#AAL.Integer(9)</code></pre>
            </div>
            <div class='section'>
              <h4>Пример ExEuclid(1071*(-3)+462*7=21)</h4>
              <pre class="prettyprint"><code>a = Integer()&#x000A;b = Integer()&#x000A;x = Integer()&#x000A;x.ExEuclid(Integer(1071),Integer(462),a,b)&#x000A;#AAL.Integer(21)&#x000A;a&#x000A;#AAL.Integer(-3)&#x000A;b&#x000A;#AAL.Integer(7)</code></pre>
            </div>
            <p>Как видно на примерах выше, для всех операций в библиотеке принята запись: <code>&lt;переменная-результат&gt;.&lt;операция&gt;(&lt;аргументы&gt;)</code>. Возможна цепочная запись, где одна операция следует за другой. Если операция имеет более одного результата(как в случае ExEuclid), переменные передаются как параметры.</p>
            <p>При работе с интерпретатором результат каждой операции выводится в формате, пригодном для чтения(через <code>str()</code> и <code>repr()</code>), поэтому необходимость преобразования объекта в строку возникает редко, например, если мы хотим преобразовать AAL.Integer в число python. Сделать это можно через функцию <code>int()</code>: 	<code>int(a.ToString())</code>. Для сравнения чисел, их также можно преобразовывать в строки, поскольку <code>Integer(12)==Integer(12)</code> вернет <code>False</code>.</p>
          </div>
        </div>
        <div class='section'>
          <div class='page-header'>
            <h2 id='decompositions'>Разложение чисел на множители</h2>
          </div>
          <div class='section'>
            <p>Существуют 2 способа получния разложения:</p>
            <ol>
              <li><code>DecompositionManager.Instance().getDecomposition(Integer(12),False)</code> – получить разложение числа 12 из таблиц с разложениями.</li>
              <li><code>FactorizationAlgorithms(Integer(84)).MsieveDecomposition()</code> – получить разложение числа 84 используя метод msieve.</li>
            </ol>
            <p>Результат в обоих случаях представляется в python как список, состоящий из кортежей строк(строка-число и строка-степень).</p>
            <div class='section'>
              <h4>Пример разложения(84=2*2*3*7)</h4>
              <pre class="prettyprint"><code> a=FactorizationAlgorithms(Integer(84)).MsieveDecomposition()
 a
#[('2', '2'), ('3', '1'), ('7', '1')]
 a.reverse()
 a
#[('7', '1'), ('3', '1'), ('2', '2')]</code></pre>
            </div>
            <p>Если же у нас уже есть разложение числа и мы хотим передать его в функцию, тут все сложнее. Массивы(std::vector) передаются в функции через специально созданные классы-аналоги(пока другие способы не описаны). Для std::vector<AAL::DecompositionMember> создан класс DecompositionMemberVector. При создании массива указывается его размер, далее он заполняется. В этом примере проверяется разложение числа 12:</p>
            <h4>Проверка разложения(12=2*2*3)</h4>
              <pre class="prettyprint"><code> d=DecompositionMemberVector(2)
 d[0]=DecompositionMember(Integer(2),Integer(2))
 d[1]=DecompositionMember(Integer(3),Integer(1))
 DecompositionMember.isRightDecomposition(Integer(12),d)
#True</code></pre>
            
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
