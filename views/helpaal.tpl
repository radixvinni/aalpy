<script type="text/javascript">
  function run(code, output, type) {
    type = type || "console";

    $.post('/console/run', { cmd: code + '\n', type: type }, function (data) {
      output.text(data);
      output.show();
    });
  }
  function add_run_cell(input, output) {
    var btn = $('<a href="#" class="btn btn-small pull-right"><i class="icon-repeat"></i></a>');
    btn.click(function () {
      run(input.text(), output);
      return false;
    });
    input.prepend(btn);
  }
  $(function () {
    $('pre.prettyprint').each(function () {
      var output = $("<pre class='hide'></pre>").insertAfter($(this));
      add_run_cell($(this), output);
    });
  });

</script>
<div class="container">
  <ul class="nav nav-pills">
    <li><a href="/help/python">Язык Python</a></li>
    <li class="active"><a href="/help/aal">Библиотека AAL</a></li>
    <li><a href="/help/class">Список классов AAL</a></li>
    <li><a href="/help/dev">Для разработчиков AAL</a></li>
    <li><a href="/help/sage">Язык Sage</a></li>
  </ul>
  <div class="row sidebar" id="pythonhelp">
    <div class="span2 affix visible-desktop">
      <ul class="nav nav-list well">
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
          <a href="#polynomGF7N">Класс PolynomGF7N</a>
        </li>
        <li class="">
          <a href="#elliptic">Эллиптические кривые</a>
        </li>
        <li class="">
          <a href="#kerberos">GSSAPI/Kerberos</a>
        </li>
        <li class="nav-header">Библиотека GMP</li>
        <li class="">
          <a href="#mpf">Вещественные числа</a>
        </li>
        <li class="">
          <a href="#matrix">Вещественные матрицы</a>
        </li>
        <li class="">
          <a href="#iv">Вещественные интервалы</a>
        </li>
        <li class="">
          <a href="#mpc">Комплексные числа</a>
        </li>
        <li class="">
          <a href="#mpz">Целые числа</a>
        </li>
        <li class="nav-header">Другие библиотеки</li>
        <li><a href="#uni">Universal</a></li>
        <li><a href="#maude">Maude</a></li>
        <li><a href="#numpy">Numpy</a></li>
        <li><a href="#scipy">Scipy</a></li>
        <li><a href="#matplotlib">Matplotlib</a></li>
        <li><a href="#seaborn">Seaborn</a></li>
        <li><a href="#sklearn">Библиотеки машинного обучения</a></li>
      </ul>
    </div>
    <div class="span10 offset2" id="glossary-content">
      <h1>Руководство MPEI AAL</h1>
      <p>В этом руководстве рассмотрены основные классы библиотеки MPEI AAL.</p>
      <p>Для всех операций в библиотеке принята запись:
        <code>&lt;переменная-результат&gt;.&lt;операция&gt;(&lt;аргументы&gt;)</code>. Возможна цепочная запись, где
        одна операция следует за другой. Если операция имеет более одного результата(как в случае ExEuclid см. пример
        ниже), переменные передаются как параметры.
      </p>
      <div class='section'>
        <div class='page-header'>
          <h2 id='integer'>Класс Integer</h2>
        </div>
        <div class='section'>
          <p> Для класса используется числовой и строковый(для больших чисел) конструкторы. То есть числа можно
            передавать в числовом формате(для чисел длиной до 32 бит) или в виде строк, например "127" или '127'.
            Доступны следующие операции:</p>
          <h3>Операции в кольце Z, не использующие разложение чисел</h3>
          <p>Взятие числа <code>res=Integer(127)</code>,<code>res=Integer("127")</code>,
            <code>res=Integer('127')</code>,отрицание <code>arg.Negate()</code>, сложение <code>res.Add(a,b)</code>,
            деление с остатком <code>quotient.Div(a,b,remainder)</code>, умножение <code>res.Mul(a,b)</code>,
            <!--деление <code>res.Div(a,b)</code>, операция сравнения: <code>a.Compare(b)</code> и--> вычитание
            <code>res.Sub(arg1,arg2)</code>, тест на простоту Миллера-Рабина <code>a.isPrime()</code>, взятие целой
            части квадратного корня <code>res.Sqrt(arg)</code>, возведение в степень <code>res.Pow(a,n)</code>, Взятие
            НОК <code>res.LCM(i, j)</code>, Взятие НОД <code>res.Euclid(i, j)</code> и линейное диофантово уравнение
            <em>ix+jy=z</em> <code>z.ExEuclid(i, j, x, y)</code>, Символ Лежандра
            <code>Integer.LegendreSymbol(arg,prime)</code>, символ Якоби
            <code>Integer.JacobySymbol(arg,composite)</code>, генерация вероятностно-простого числа длиной n двоичных
            символов <code>res.GeneratePrime(n)</code>(n - обычное число, не Integer).
          </p>

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
            <pre
              class="prettyprint"><code>a = Integer(117)&#x000A;b = Integer(25)&#x000A;q = Integer()&#x000A;r=Integer()&#x000A;q.Div(a,b,r)&#x000A;#AALInteger(4)&#x000A;r&#x000A;#AALInteger(17)</code></pre>
          </div>
          <div class='section'>
            <h4>Диофантово уравнение(1071*x+462*y=z)</h4>
            <pre
              class="prettyprint"><code>a = Integer()&#x000A;b = Integer()&#x000A;x = Integer()&#x000A;x.ExEuclid(Integer(1071),Integer(462),a,b)&#x000A;#AAL.Integer(21)&#x000A;a&#x000A;#AAL.Integer(-3)&#x000A;b&#x000A;#AAL.Integer(7)</code></pre>
          </div>
          <p>При работе с интерпретатором результат каждой операции выводится в формате, пригодном для чтения(через
            <code>str()</code> и <code>repr()</code>), поэтому необходимость преобразования объекта в строку возникает
            редко, например, если мы хотим преобразовать AAL.Integer в число python. Сделать это можно через функцию
            <code>int()</code>: <code>int(a.ToString())</code>. Обратное преобразование: <code>Integer(str(b))</code>.
            Для сравнения чисел, их также можно преобразовывать в строки, поскольку
            <code>Integer(12)==Integer(12)</code> вернет <code>False</code>.
          </p>
        </div>
      </div>
      <div class='section'>
        <h3 id='decompositions'>Разложение чисел на множители</h3>
        <div class='section'>
          <p>Реализованы 2 способа получния разложения:</p>
          <ol>
            <li><code>res=DecompositionManager.Instance().getDecomposition(Integer(1023),False)</code> – получить
              разложение числа 1023 из таблиц факторизации чисел b<sup>n</sup>-1, b=2,3,7, ... (кеннингемовского
              проекта).</li>
            <li><code>res=FactorizationAlgorithms(Integer(84)).MsieveDecomposition()</code> – получить разложение числа
              84 используя метод <a href="http://www.boo.net/~jasonp/qs.html">msieve</a>. Рекомендуется использовать
              этот способ для всех чисел.</li>
          </ol>
          <p>Результат <code>res</code> в обоих случаях можно использовать в числовых и полиномиальных алгоритмах,
            основанных на разложении. Через вызов <code>res.toList()</code> результат может представляется в как список
            python, состоящий из кортежей строк(строка-число и строка-степень).</p>
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
          <p>Вектор разложения <code>DecompositionMemberVector</code> для его последующего использования можно записать
            по известному разложению. В этом примере проверяется разложение числа 12:</p>
          <h4>Проверка разложения(12=2^2*3)</h4>
          <pre class="prettyprint"><code> d=DecompositionMemberVector(2)
 d[0]=DecompositionMember(Integer(2),Integer(2))
 d[1]=DecompositionMember(Integer(3),Integer(1))
 DecompositionMember.isRightDecomposition(Integer(12),d)
#True</code></pre>
          <h3>Операции в кольце Z, использующие разложение чисел</h3>
          <ul>
            <li><code>Integer().ModifiedTestLuka(decomposition,Integer(prime))</code> - Тест простоты Люка</li>
            <!--li><code>Integer().TestLukaLemera(Integer(prime))</code> - Тест простоты Люка ─ Лемера(числа 2<sup>n</sup> - 1, аргумент - n)</li-->
            <li><code>Integer().TestPoklingtona(decomposition,Integer(prime))</code> - Тест простоты Поклингтона</li>
            <li><code>res.GeneratePrime(Integer(n),decomposition)</code> - Генерация достоверно простого числа в
              Z<sub>n</sub></li>
            <li><code>a = Integer();a.Euler(decomposition)</code> - Функция Эйлера</li>
          </ul>
          <p>Здесь <code>decomposition</code> ─ вектор разложения числа <code>prime-1</code>.</p>
          <h3>Операции в кольце Z<sub>n</sub>, не использующие разложение порядка мультипликативной группы.</h3>
          <p>Предварительно проверяется посредством НОД взаимная простота каждого аргумента и модуля n.</p>
          <p>Операции: сложение <code>res.ModAdd(arg1,arg2,n)</code>, вычитание <code>res.ModSub(arg1,arg2,n)</code>
            умножение <code>res.ModMul(arg1,arg2,n)</code>, деление <code>res.ModDiv(arg1,arg2,n)</code>, возведение в
            степень <code>res.ModPow(arg1,arg2,n)</code>, обращение <code>res.Inverse(arg,n)</code></p>
          <h3>Операции в кольце Z<sub>n</sub>, использующие разложение порядка мультипликативной группы.</h3>
          <p>Предварительно проверяется посредством НОД взаимная простота аргумента и модуля n.</p>
          <h4>Примечание. Порядок группы вычисляется по разложению &#966;(n), &#966;(n) вычисляется по разложению n</h4>
          <!--h4>Пример. Тест образующего элемента группы Zn*  вычисляется по разложению &#966;(n), &#966;(n) вычисляется по разложению n</h4-->
          <h3>Операции в кольце F<sub>p</sub>, не использующие разложение порядка мультипликативной группы.</h3>
          <p>Предварительно проверяется посредством НОД взаимная простота каждого аргумента и модуля p.</p>
          <p>Операции: сложение <code>res.ModAddInFp(arg1,arg2,n)</code>, вычитание
            <code>res.SubInFp(arg1,arg2,n)</code> умножение <code>res.MulInFp(arg1,arg2,n)</code>, деление
            <code>res.DivInFp(arg1,arg2,n)</code>, возведение в степень <code>res.PowInFp(arg1,arg2,n)</code>, обращение
            <code>res.InverseInFp(arg,n)</code>
          </p>
          <h3>Операции в кольце F<sub>p</sub>, использующие разложение порядка мультипликативной группы.</h3>
          <p>Предварительно проверяется посредством НОД взаимная простота каждого аргумента и модуля p.</p>
          <h4>Пример. Порядок элемента и тест образующего элемента группы F<sub>p</sub>* или Z<sub>n</sub>* вычисляются
            соответственно по разложению p─1 или &#966;(n)</h4>
          <p>Порядок элемента <code>Integer().elementOrder(module,element,vector,grouporder)</code>.</p>
          <p>Тест образующего элемента <code>element.isGenerator(module,vector)</code>.</p>
          <p>Здесь <code>vector</code> есть разложение <code>p─1</code>.</p>
        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='polynom'>Класс Polynom</h2>
        </div>
        <div class='section'>
          <p>Для класса используется строковый конструктор. Вторым аргументом в конструкторе указывается тип записи
            полинома: 2=двоичная, 10=Dec=степенями, 16=шестнадцатиричная. В методе <code>ToString</code>, осуществляющем
            обратное преобразование, также можно указать тип записи.</p>
        </div>
        <div class='section'>
          <h4>Пример</h4>
          <pre class="prettyprint"><code>a = Polynom("1101001")
b = Polynom("0 1 3 6",Dec)
a.ToString()==b.ToString()
#True</code></pre>
        </div>
        <p>Класс содержит методы для работы в кольцах GF(2)[X], GF(2)[X]<sub>f(X)</sub> и в полях GF(2<sup>n</sup>),
          аналогичные методам в кольцах Z, Z<sub>n</sub> и в полях F<sub>p</sub>, обозначения методов либо совпадают,
          либо различаются суффиксом (GF2_n или InGF2_n вместо InFp). Различие исполнения определяется по наименованиям
          классов операндов. Метод вычисления НОД в классе Polynom обозначается <code>gсd.ExEuclid(i,j,x,y)</code>.</p>
        <div class='section'>
          <h4>Пример</h4>
          <pre class="prettyprint"><code>a = Polynom("01")
a
#AAL.Polynom(01)
a.Pow(a,Integer(5))
#AAL.Polynom(000001)</code></pre>
        </div>
        <p>В методе определения порядка элемента последним аргументом является порядок поля, а не порядок группы. Метод
          тестирования образующего элемента имеет 5 аргументов:
          <code>Polynom().isGenerator(module, element, vector, field_order)</code>.
        </p>
        <p>При генерации многочленов указываются через запятые наименьший вес, наибольший возможный вес и степень
          многочлена, при тестировании указывается только имя многочлена, например,</p>
        <pre class="prettyprint"><code>a=Polynom()
a.GenerateNormal(3, 5, 15)
#AAL.Polynom(1000000000000011)
a.GenerateIrreducible(3,3,15)
#AAL.Polynom(1100000000000001)
a.isIrreducible()
#True
a.isPrimitivity()
#True</code></pre>
        <p>Работа в классах <code>PolynomGF3</code> и <code>PolynomGF7</code> происходит аналогично.</p>
      </div>

      <div class='section'>
        <div class='page-header'>
          <h2 id='polynomGF7N'>Класс PolynomGF7N</h2>
        </div>
        <div class='section'>
          <p>Для класса доступны следующие методы:</p>
          <table class="table">
            <tbody>
              <tr>
                <th>Метод</th>
                <th>Описание</th>
              </tr>
              <tr>
                <td>PolynomGF7N()</td>
                <td>
                  Конструктор нулевого полинома </td>
              </tr>
              <tr>
                <td>PolynomGF7N(int a_deg)</td>
                <td>
                  Конструктор нулевого полинома заданой длины </td>
              </tr>
              <tr>
                <td>PolynomGF7N(const PolynomGF7N &amp;a_pgf7)</td>
                <td>
                  Конструктор копирования </td>
              </tr>
              <tr>
                <td>PolynomGF7N(aal_uint16 *a_coeffs, int a_size)</td>
                <td>
                  Конструктор:
                  a_coeffs - массив коэффициентов полинома
                  a_size - размер массива: степень полинома + 1 </td>
              </tr>
              <tr>
                <td>PolynomGF7N(string &amp;a_strgf7)</td>
                <td>
                  Конструктор строковый </td>
              </tr>
              <tr>
                <td>PolynomGF7N(char *a_str)</td>
                <td>
                  Конструктор строковый </td>
              </tr>
              <tr>
                <td>~PolynomGF7N()</td>
                <td>
                  Деструктор </td>
              </tr>
              <tr>
                <td>GetDeg() const</td>
                <td>
                  Возвращает степень полинома </td>
              </tr>
              <tr>
                <td>SetDeg(int a_deg)</td>
                <td>
                  Устанавливает степень полинома </td>
              </tr>
              <tr>
                <td>isNull()</td>
                <td>
                  Проверяется условие равенства '0' всех коэффициентов полинома - true - все коэффициенты = 0 </td>
              </tr>
              <tr>
                <td>GetCoeffsPtr() const</td>
                <td>
                  Возвращает указатель на массив коэффициентов полинома </td>
              </tr>
              <tr>
                <td>GetParCoeffsPtr(int a_num) const</td>
                <td>
                  Возвращает указатель на массив 0-х, 1-х или 2-х битов коэффициентов
                  a_num = {0, 1, 2} </td>
              </tr>
              <tr>
                <td>ToString()</td>
                <td>
                  Возвращает строку коэффициентов полинома </td>
              </tr>
              <tr>
                <td>ParPackToUnPack()</td>
                <td>
                  Преобразование коэффициентов из трёх параллельных массивов в один линейный </td>
              </tr>
              <tr>
                <td>UnPackToParPack()</td>
                <td>
                  Преобразование коэффициентов из одного линейного в три параллельных массива </td>
              </tr>
              <tr>
                <td>TrimZero()</td>
                <td>
                  Удаление лишних нулей </td>
              </tr>
              <tr>
                <td>Generate(PolynomGF7N &amp;a_mod_pol)</td>
                <td>
                  Генерация случайного полинома из кольца, образованным многочленом a_mod_pol, степень генерируемоо
                  полинома на 1 меньше степени a_mod_pol </td>
              </tr>
              <tr>
                <td>Shift_R_ParallelPack(aal_uint32 a_val)</td>
                <td>
                  Сдвиг полинома вправо на a_val коэффициентов (умножение на полином x^a_val) упаковка в 3 массива </td>
              </tr>
              <tr>
                <td>Shift_L_ParallelPack(aal_uint32 a_val)</td>
                <td>
                  Сдвиг полинома вправо на a_val коэффициентов (умножение на полином x^a_val) упаковка в 3 массива </td>
              </tr>
              <tr>
                <td>DegDecomp(aal_uint32 *a_decomp, aal_uint32 a_deg, int a_p)</td>
                <td>
                  Разложение показателя степени по степеням a_p </td>
              </tr>
              <tr>
                <td>DegDecompLength(aal_uint32 a_val, int a_p)</td>
                <td>
                  Количество элементов в массиве разложения </td>
              </tr>
              <tr>
                <td>GetPermutation(int a_n)</td>
                <td>
                  Метод вычисления перестановки для переставленного базиса </td>
              </tr>
              <tr>
                <td>InversePermutation(std::vector&lt; int &gt; &amp;a_perm)</td>
                <td>
                  Метод вычисления обратной перестановки к заданной </td>
              </tr>
              <tr>
                <td>Factorization(std::vector&lt; DecompositionMemberN &gt; &amp;a_fact, aal_uint32 a_deg, bool
                  degreeFlag=false)</td>
                <td>
                  Разложение числа на простые множители
                  a_fact - вектор разложения
                  a_deg - разлагаемая степень
                  degreeFlag
                  = false (по умолчанию), если требуется разложение без показателей степеней у множителей (с
                  дублированием множителей)
                  degreeFlag
                  = true, если требуется разложение с показателями степеней - произведение </td>
              </tr>
              <tr>
                <td>reverseBits(aal_uint32 n)</td>
                <td>
                  Функция, меняющая порядок следования битов в 32 битном целом числе на противоположный </td>
              </tr>
              <tr>
                <td>operator=(PolynomGF7N a_pol)</td>
                <td>
                  Перегрузка операторa = </td>
              </tr>
              <tr>
                <td>operator==(PolynomGF7N &amp;a_pol)</td>
                <td>
                  Перегрузка логических операторов: == </td>
              </tr>
              <tr>
                <td>operator !=(PolynomGF7N &amp;a_pol)</td>
                <td>
                  Перегрузка логических операторов: != </td>
              </tr>
              <tr>
                <td>gf7_mul_coeffs(aal_uint16 &amp;a_val1, aal_uint16 &amp;a_val2)</td>
                <td>
                  Побитовое умножение двух элементов поля GF(7) по алгоритму из статьи С.Б.Гашкова, А.Б.Фролова
                  a_val1 - 1-е слагаемое
                  a_val1 - 2-е слагаемое
                  произведение </td>
              </tr>
              <tr>
                <td>gf7_add_coeffs(aal_uint16 &amp;a_val1, aal_uint16 &amp;a_val2)</td>
                <td>
                  Побитовое сложение двух элементов поля GF(7) по алгоритму из статьи С.Б.Гашкова, А.Б.Фролова
                  a_val1 - 1-е слагаемое
                  a_val1 - 2-е слагаемое
                  произведение </td>
              </tr>
              <tr>
                <td>Div(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2, PolynomGF7N &amp;a_pol_quot=default_quot)</td>
                <td>
                  Деление полиномов с остатком с использованием побитовых операций
                  a_pol1 - 1-й делимое
                  a_pol2 - 2-й делитель
                  a_pol_quot - полином для хранения частного (необязательный параметр) - остаток от деления a_pol1 на
                  a_pol2 </td>
              </tr>
              <tr>
                <td>InverseMod(PolynomGF7N &amp;a_pol, PolynomGF7N &amp;a_simple_pol, bool a_is_irr)</td>
                <td>
                  Обращение полинома на основании алгоритма Евклида с использованием побитовых операций
                  a_pol - обращаемый полином
                  a_simple_pol - полином, взаимно простой с первым
                  a_is_irr - признак второго полинома (если =true - неприводимый) - обратный полином </td>
              </tr>
              <tr>
                <td>Add(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2)</td>
                <td>
                  побитовое сложение двух полиномов в кольце GF(7)[X] с упаковкой коэффициентов в три массива по
                  алгоритму из статьи С.Б.Гашкова, А.Б.Фролова и др.
                  a_pol1 - 1-е слагаемое
                  a_pol2 - 2-е слагаемое - сумма </td>
              </tr>
              <tr>
                <td>ModAdd(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  побитовое сложение двух полиномов в кольце GF7[X](x)mod f(x) с упаковкой коэффициентов в три массива
                  по алгоритму из статьи С.Б.Гашкова, А.Б.Фролова и др.
                  a_pol1 - 1-е слагаемое
                  a_pol2 - 2-е слагаемое - сумма </td>
              </tr>
              <tr>
                <td>AddInGF7_n(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  побитовое сложение двух полиномов в GF(7^n) с упаковкой коэффициентов в три массива по алгоритму из
                  статьи С.Б.Гашкова, А.Б.Фролова и др.
                  a_pol1 - 1-е слагаемое
                  a_pol2 - 2-е слагаемое - сумма </td>
              </tr>
              <tr>
                <td>Mul(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2)</td>
                <td>
                  побитовое умножение двух полиномов в кольце GF(7)[X] по алгоритму из статьи С.Б.Гашкова, А.Б.Фролова и
                  др. с упаковкой в три массива типа aal_uint32 СТОЛБИКОМ
                  a_pol1 - 1-й сомножитель
                  a_pol2 - 2-й сомножитель - произведение </td>
              </tr>
              <tr>
                <td>ModMul(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  побитовое умножение двух полиномов в кольце GF(7)[X] mod f(x) по алгоритму из статьи С.Б.Гашкова,
                  А.Б.Фролова и др. с упаковкой в три массива типа aal_uint32 СТОЛБИКОМ
                  a_pol1 - 1-й сомножитель
                  a_pol2 - 2-й сомножитель - произведение </td>
              </tr>
              <tr>
                <td>MulGF7_n(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  побитовое умножение двух полиномов в поле GF(7^n) по алгоритму из статьи С.Б.Гашкова, А.Б.Фролова и
                  др. с упаковкой в три массива типа aal_uint32 СТОЛБИКОМ
                  a_pol1 - 1-й сомножитель
                  a_pol2 - 2-й сомножитель - произведение </td>
              </tr>
              <tr>
                <td>MulGF7_n_ONB(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2, int a_n)</td>
                <td>
                  побитовое умножение двух полиномов в поле GF(7^n) по алгоритму из статьи С.Б.Гашкова, А.Б.Фролова и
                  др. с упаковкой в три массива типа aal_uint32 СТОЛБИКОМ и с использованием оптимальных нормальных
                  базисов для приведения по mod
                  a_pol1 - 1-й сомножитель
                  a_pol2 - 2-й сомножитель
                  a_n - степень расширения поля - произведение </td>
              </tr>
              <tr>
                <td>Sub(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2)</td>
                <td>
                  побитовое вычитание двух полиномов над полем GF7[X] с упаковкой в три массива типа aal_uint32
                  a_pol1 - уменьшаемое
                  a_pol2 - вычитаемое - разность </td>
              </tr>
              <tr>
                <td>GCD(PolynomGF7N &amp;a_pol1, PolynomGF7N &amp;a_pol2)</td>
                <td>
                  Вычисление НОД двух полиномов по алгоритму Евклида с использованием стандартных операций
                  a_pol1 - 1-й полином
                  a_pol2 - 2-й полином - НОД a_pol1 и a_pol2 </td>
              </tr>
              <tr>
                <td>Pow(PolynomGF7N &amp;a_pol, aal_uint32 a_deg)</td>
                <td>
                  Возведение полинома a_pol в степень a_deg в кольце GF(7)[x] с использованием операций упаковки 3x32
                  a_pol - полином
                  a_deg - показатель степени - степень полинома a_pol^a_deg </td>
              </tr>
              <tr>
                <td>ModPow(PolynomGF7N &amp;a_pol, aal_uint32 a_deg, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  Возведение полинома a_pol в степень a_deg в кольце GF(7)[x] mod f(x) с использованием операций
                  упаковки 3x32
                  a_pol - полином
                  a_deg - показатель степени
                  a_pol_mod - модулярный полином - степень полинома a_pol^a_deg </td>
              </tr>
              <tr>
                <td>PowGF7_n(PolynomGF7N &amp;a_pol, aal_uint32 a_deg, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  Возведение полинома a_pol в степень a_deg GF(7^n) с использованием операций упаковки 3x32
                  a_pol - полином
                  a_deg - показатель степени
                  a_pol_mod - неприводимый модулярный полином - степень полинома a_pol^a_deg </td>
              </tr>
              <tr>
                <td>PowGF7_n_ONB(PolynomGF7N &amp;a_pol, aal_uint32 a_deg, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  Возведение полинома a_pol в степень a_deg GF(7^n) с использованием ОНБ 2 или 3 типов при возведении в
                  степень характеристики поля. Используется для теста и сравнения результатов со стандартной реализацией
                  a_pol - полином в переставленном ОНБ
                  a_deg - показатель степени
                  a_pol_mod - неприводимый модулярный полином - степень полинома a_pol^a_deg </td>
              </tr>
              <tr>
                <td>isIrreducible()</td>
                <td>
                  Тестирование неприводимости многочлена
                  a_pol - тестируемый полином </td>
              </tr>
              <tr>
                <td>GenerateBinIrreducible(aal_uint32 a_deg)</td>
                <td>
                  Генерация неприводимого двучлена
                  a_deg - степень генерируемого полинома - неприводимый двучлен над GF7 </td>
              </tr>
              <tr>
                <td>GenerateTrinIrreducible(aal_uint32 a_deg)</td>
                <td>
                  Генерация неприводимого трёхчлена
                  a_deg - степень генерируемого полинома - неприводимый двучлен над GF7 </td>
              </tr>
              <tr>
                <td>GenerateGNBIrreducible(aal_uint32 a_deg)</td>
                <td>
                  Генерация неприводимого полинома для ОНБ 2-го или 3-го типа
                  a_deg - степень генерируемого полинома - неприводимый двучлен над GF7 </td>
              </tr>
              <tr>
                <td>ElementOrder(PolynomGF7N &amp;a_pol, PolynomGF7N &amp;a_pol_mod, const int a_ord)</td>
                <td>
                  Вычсление порядка элемента (полинома) мультипликативной группы поля GF(7^n)
                  a_pol - элемент мультипликативной группы
                  a_pol_mod - неприводимый многочлен над полем GF(7^n)
                  a_ord - порядок мультипликативной группы поля - порядок элемента мультипликативной группы поля GF(7^n)
                </td>
              </tr>
              <tr>
                <td>IsGenerator(PolynomGF7N &amp;a_pol, PolynomGF7N &amp;a_pol_mod, const int a_ord)</td>
                <td>
                  Тестирование образующего элемента
                  a_pol - элемент мультипликативной группы
                  a_pol_mod - неприводимый многочлен над полем GF(7^n)
                  a_ord - порядок поля - неприводимый двучлен над GF7 </td>
              </tr>
              <tr>
                <td>isPrimitivity()</td>
                <td>
                  Тестирование полинома на примитивность
                  a_pol - многочлен над полем GF(7^n) - true, если полином примитивный false - в противном случае </td>
              </tr>
              <tr>
                <td>GNB_Test(int a_n)</td>
                <td>
                  Функция, проверяющая существования гауссова нормального базиса 1-го или 2-го порядка для указанной
                  степени расширения поля
                  a_n - степень расширения поля
                  0 - гауссовых нормальных базисов не существует 1 - существует гауссов нормальный базис 1-го порядка 2
                  - существует гауссов нормальный базис 2-го порядка 3 - существуют гауссовы нормальные базисы 1-го и
                  2-го порядка </td>
              </tr>
              <tr>
                <td>gf7_sum_Parallelpack(const aal_uint32 a_val11, const aal_uint32 a_val12, const aal_uint32 a_val13,
                  const aal_uint32 a_val21, const aal_uint32 a_val22, const aal_uint32 a_val23, aal_uint32 *a_sum1,
                  aal_uint32 *a_sum2, aal_uint32 *a_sum3)</td>
                <td>
                  побитовое сложение 32 чисел над полем GF7[X] с упаковкой в три массива типа aal_uint32 по алгоритму из
                  статьи С.Б.Гашкова, А.Б.Фролова и др.
                  a_val1 - 1-е слагаемое
                  a_val2 - 2-е слагаемое - сумма </td>
              </tr>
              <tr>
                <td>gf7_mul_Parallelpack(const aal_uint32 a_val11, const aal_uint32 a_val12, const aal_uint32 a_val13,
                  const aal_uint32 a_val21, const aal_uint32 a_val22, const aal_uint32 a_val23, aal_uint32 *a_prod1,
                  aal_uint32 *a_prod2, aal_uint32 *a_prod3)</td>
                <td>
                  побитовое умножение 32 чисел над полем GF7[X] с упаковкой в три массива типа aal_uint32 по алгоритму
                  из статьи С.Б.Гашкова, А.Б.Фролова и др.
                  a_val1 - 1-е слагаемое
                  a_val2 - 2-е слагаемое - произведение </td>
              </tr>
              <tr>
                <td>gf7_mult_num_ParPack(PolynomGF7N &amp;a_pol, aal_uint32 a_val)</td>
                <td>
                  Побитовое умножение полинома на число в GF7[X]
                  a_pol1 - полином
                  a_val - константа
                  произведение </td>
              </tr>
              <tr>
                <td>Pow7(PolynomGF7N &amp;a_pol)</td>
                <td>
                  Возведение в 7 степень в полиномиальном базисе
                  a_pol - полином - полином в степени 7 </td>
              </tr>
              <tr>
                <td>Pow7_NB(PolynomGF7N &amp;a_pol, aal_uint32 a_7deg, PolynomGF7N &amp;a_pol_mod)</td>
                <td>
                  Возведение в степень характеристики поля в переставленном базисе
                  a_pol - полином
                  a_7deg - показатель степени характеристики поля
                  a_pol_mod - неприводимый многочлен - полином в степени 7^a_7deg </td>
              </tr>
              <tr>
                <td>Pow7_NB_TEST(PolynomGF7N &amp;a_pol, vector&lt; int &gt; &amp;a_perm, vector&lt; int &gt;
                  a_inv_perm, int a_7deg, int a_n)</td>
                <td>
                  Возведение в степень характеристики поля в переставленном базисе используется в ТЕСТОВОМ методе
                  возведения полинома в любую степень для сравнения со стандартной реализацией
                  a_pol - полином
                  a_perm - прямая перестановка
                  a_inv_perm - обратная перестановка
                  a_7deg - показатель степени характеристики поля
                  a_n - степень расширения поля - полином в степени 7^a_7deg </td>
              </tr>
              <tr>
                <td>PowGFp(aal_uint32 a_elem, int a_deg, int a_p)</td>
                <td>
                  Возведение элемента поля в степень
                  a_elem - элемент поля GF(p)
                  a_deg - показатель степени
                  a_p - характеристика поля - степень a_deg элемента поля a_elem </td>
              </tr>
              <tr>
                <td>PolynomialToReduced(PolynomGF7N &amp;a_pol, int a_n)</td>
                <td>
                  Перевод из полиномиального базиса в приведённый param a_pol - полином в полиномиальном базисе полином
                  в приведённом базисе </td>
              </tr>
              <tr>
                <td>PToR_TEST(PolynomGF7N &amp;a_pol, int a_n, int &amp;add_f0, int &amp;add_fk, int &amp;mul_f0, int
                  &amp;mul_fk, int &amp;b_size, int &amp;k_step)</td>
                <td>
                  тест </td>
              </tr>
              <tr>
                <td>PToR_TEST_OLD(PolynomGF7N &amp;a_pol, int a_n, int &amp;add_f0, int &amp;add_fk, int &amp;mul_f0,
                  int &amp;mul_fk, int &amp;b_size, int &amp;k_step)</td>
                <td>
                  тест </td>
              </tr>
              <tr>
                <td>ReducedToPolynomial(PolynomGF7N &amp;a_pol, int a_n)</td>
                <td>
                  Перевод из приведённого базиса в полиномиальный param a_pol - полином в приведённом базисе полином в
                  приведённом базисе </td>
              </tr>
              <tr>
                <td>RToP_TEST(PolynomGF7N &amp;a_pol, int a_n, int &amp;add_f0, int &amp;add_fk, int &amp;mul_f0, int
                  &amp;mul_fk, int &amp;b_size, int &amp;k_step)</td>
                <td>
                  тест </td>
              </tr>
              <tr>
                <td>ReducedToRedundant(PolynomGF7N &amp;a_pol, int a_n)</td>
                <td>
                  Перевод из приведённого базиса в полиномиальный param a_pol - полином в приведённом базисе param a_n -
                  степень расширения поля полином в приведённом базисе </td>
              </tr>
              <tr>
                <td>RedundantToReduced(PolynomGF7N &amp;a_pol, int a_n)</td>
                <td>
                  Перевод из редундантного базиса в приведённый param a_pol - полином в редундантном базисе param a_n -
                  степень расширения поля полином в приведённом базисе </td>
              </tr>
              <tr>
                <td>ReducedToPermuted(PolynomGF7N &amp;a_pol, int a_n)</td>
                <td>
                  Перевод из приведённого базиса в переставленный param a_pol - полином в приведённом базисе param a_n -
                  степень расширения поля полином в переставленном базисе </td>
              </tr>
              <tr>
                <td>PermutedToReduced(PolynomGF7N &amp;a_pol, int a_n)</td>
                <td>
                  Перевод из переставленного базиса в приведённый param a_pol - полином в переставленном базисе param
                  a_n - степень расширения поля полином в приведённом базисе </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class='section'>
          <h4>Пример</h4>
          <pre class="prettyprint"><code>x1 = PolynomGF7N()
print x1.GNB_Test(100) != 0
#True
irr = PolynomGF7N()
irr.GenerateGNBIrreducible(100);
x1.Generate(irr);
x2 = PolynomGF7N()
x2.Generate(irr);
prod = PolynomGF7N()
prod.Mul(x1, x2);
xbetalon = PolynomGF7N()
xbetalon.Div(prod, irr);
prod.PolynomialToReduced(prod, 100);
prod.ReducedToRedundant(prod, 100);
prod.RedundantToReduced(prod, 100);
prod.ReducedToPolynomial(prod, 100);
print prod == xbetalon
#True</code></pre>
        </div>
      </div>

      <div class='section'>
        <div class='page-header'>
          <h2 id='elliptic'>Классы эллиптических точек и кривых</h2>
        </div>
        <div class='section'>
          <p>Для задания эллиптической кривой над GF(p) с уравнением Y<sup>2</sup> = X<sup>3</sup> + <em>a</em>X +
            <em>b</em> используется конструктор <code>EllipticCurve(p, a, b)</code>, где p, a, b - экземпляры
            <code>Integer</code>. Для задания точки на кривой используется конструктор <code>EllipticPoint(с)</code> в
            который передается заданная кривая. Функция <code>Generate</code> позволяет взять случайную точку на кривой.
            Точки можно складывать - <code>Add</code>, удваивать - <code>Double</code>, умножать на константу -
            <code>Mul</code>.
          </p>
        </div>
        <div class='section'>
          <h4>Пример</h4>
          <pre class="prettyprint"><code>c=EllipticCurve(Integer(5),Integer(1),Integer(1))
c.getOrder()
#AAL.Integer(9)
p=EllipticPoint(c)
p.Generate()
#AAL.EllipticPoint(x=2,y=1)</code></pre>
        </div>
        <p>Аналогично для несуперсингулярных эллиптических кривых над полем GF(2<sup>n</sup>) вида Y<sup>2</sup> + X Y =
          X<sup>3</sup> + <em>a</em> X<sup>2</sup> + <em>b</em> используется
          <code>NonSuperSingularEllipticCurve(module,a,b)</code>, для суперсингулярных эллиптических кривых над полем
          GF(2<sup>n</sup>) вида Y<sup>2</sup> + <em>a</em> Y = X<sup>3</sup> + <em>b</em> X + <em>c</em> используется
          <code>SuperSingularEllipticCurve(module,a,b,c)</code>
        </p>
        <p>Для определения порядка всех кривых используется метод <code>getOrder()</code>(см. пример выше)</code>.</p>
        <p>Чтобы при каждом запуске программы использовать одну и ту же сгенерированную точку на кривой необходимо
          уставить её координаты методом <code>setXY(X,Y)</code>. Получить координаты можно через <code>getX()</code>,
          <code>getY()</code>:
        </p>
        <div class='section'>
          <h4>Пример</h4>
          <pre class="prettyprint"><code>c=EllipticCurve(Integer(5),Integer(1),Integer(1))
p=EllipticPoint(c)
p.Generate()
print 'x =',p.getX(),'y =',p.getY()
#x = AAL.Integer(2) y = AAL.Integer(1)
p.setXY(Integer(2),Integer(1))</code></pre>
        </div>
        <p>При использовании функций <code>getX()</code>, <code>getY()</code> нужно иметь в виду, что они не работают
          для точек на бесконечности, которые могут быть получены при сложении и умножении точек(но не при генерации).
          Для проверки точки на бесконечности используется метод <code>isInfinite()</code>. Для установки точки в
          бесконечность используется метод <code>setInfinite</code> c параметром <code>True</code>.</p>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='kerberos'>Протокол аутентификации Kerberos</h2>
        </div>
        <div class='section'>
          <p>Для авторизации и обмена сообщениями по протоколу Kerberos 5 используется библиотека <a
              href="http://pythonhosted.org/gssapi/basic-tutorial.html">GSSAPI</a>.</p>
        </div>
        <div class='section'>
          <h4>Пример</h4>
          <pre class="prettyprint"><code>print "Инициализация и прочие действия производятся с контекстами client_ctx и server_ctx. Контекст - это объект хранящий состояние протокола - ключи и тикеты авторизации. В этом коде выполняется взаимодействие между сервером и клиентом после получения TGT. В данной реализации Kerberos(MIT Kerberos) TGT является долгосрочным, он получается пользователем, который запускает алгебраический процессор, через команду kinit."
print "initial_client_token"
print "initial_server_token"
print "server_tok"
print "client_tok"
print "Это всё бинарные сообщения, модифицирующие состояние протокола, они пересылаются между сервером и клиентом."
print "1. В качестве имени сервера клиентом указывается известное ему имя's/localhost@'службы, зарегистрированное на сервере авторизации"
server_name = gssapi.Name('s/localhost@') 
print "2. Подготовка контекста клиента client_ctx, включающего имя сервера и команду об инициализации контекста клиента client_ctx и на его основе initial_client_token "
client_ctx = gssapi.SecurityContext(name=server_name, usage='initiate')
initial_client_token = client_ctx.step()
print "3. Подготовка контекста сервера server_ctx. Сервер получает конекст клиента - сообщение длиной", len(initial_client_token)
server_creds = gssapi.Credentials(usage='accept', name=server_name)
print "Сервер подтверждает свою учетную запись и создает конекст сервера, включающий подтветждение его учетной записи и на его основе с учетом initial_client_token создает initial_server_token"
server_ctx = gssapi.SecurityContext(creds=server_creds, usage='accept')
initial_server_token = server_ctx.step(initial_client_token)
print "4. Клиент и сервер используют client_ctx и server_ctx соотвественно, выполняют ctx.step(сообщение) пока не получат ctx.complete == True"
server_tok = initial_server_token
while not (client_ctx.complete and server_ctx.complete):
     client_tok = client_ctx.step(server_tok)
     print "Клиент получает сообщение длиной", len(server_tok), "статус контекста клиента и сервера", client_ctx.complete, server_ctx.complete
     if not client_tok:
         break
     server_tok = server_ctx.step(client_tok)
     print "Сервер получает сообщение длиной", len(client_tok), "статус контекста клиента и сервера", client_ctx.complete, server_ctx.complete
     
assert client_ctx.complete and server_ctx.complete
print "5. Теперь можно шифровать и расшифровывать сообщения через методы encrypt, decrypt"
message = 'текст сообщения'
encrypted_message = client_ctx.encrypt(message)
print "Клиент отправляет зашифрованное сообщение длиной", len(encrypted_message)
print "Сервер расшифровывает сообщение:", server_ctx.decrypt(encrypted_message)
print "ПРИМЕЧАНИЕ"
print "Здесь использованы методы encrypt, decrypt для шифрования и расшифрования сообщения. Методы wrap и unwrap позволяют подписывать сообщения и опционально шифровать их. "
print "5а. Вызов wrap с шифрованием, проверяется, что зашифрованное сообщение не содержит исходное. "
message = b'some message here'
wrapped_message, msg_encrypted = client_ctx.wrap(message, True)
print message not in wrapped_message, msg_encrypted
print 'Результат unwrap', server_ctx.unwrap(wrapped_message)
print "5б. Вызов wrap   без шифрования, проверяется, что зашифрованное сообщение содержит исходное:"
signed_message, msg_encrypted = client_ctx.wrap(message, False)
print message in wrapped_message, not msg_encrypted</code></pre>
        </div>
        <p>Обмен сообщениями можно вести как обычно, через модуль share.</p>
      </div>
      <h1>Руководство GMP</h1>
      <p>Библиотека GMP предназначена для работы с числами со сколь угодно высокой точностью. В ней реализованы
        вещественнозначные типы, доступные в пакете <code>mpmath</code>: <code>g.mpf</code> - число с плавающей точкой,
        <code>g.mpс</code> - комплексное число, <code>g.matrix</code> - матрица фиксированного размера,
        <code>g.iv.mpf</code> - закрытый интервал, <code>g.iv.mpс</code> - закрытый комплексный интервал(прямоугольник).
        Также есть поддержка больших целых чисел <code>gmpy.mpz</code>.
      </p>
      <div class='section'>
        <div class='page-header'>
          <h2 id='mpf'>Вещественные числа</h2>
        </div>
        <div class='section'>
          <p><code>g.mpf</code> создаёт число с плавающей точкой (multiple precision float) из строки или числа:</p>
          <pre class="prettyprint"><code>x=g.mpf('0.1')
print x
#0.1
y=g.mpf(0.1)
print y
#0.1000000000000000055511151231257827021181583404541</code></pre>
          <p>Здесь во втором случае 0.1 сначала преобразуется в число с плавающей точкой со стандартной (т.е. двойной)
            точностью, а потом уже оно преобразуется в <code>g.mpf</code>. Чтобы не терять точность, нужно делать mpf из
            строки или из отношения целых чисел:</p>
          <pre class="prettyprint"><code>y=g.mpf(1)/10
print y
#0.1</code></pre>
          <p>Точность контролируется глобальным контекстом <code>g.mp</code>:</p>
          <pre class="prettyprint"><code>print(g.mp)
#Mpmath settings:
#  mp.prec = 53                [default: 53]
#  mp.dps = 15                 [default: 15]
#  mp.trap_complex = False     [default: False]</code></pre>
          <p><code>prec</code> - число бит в мантиссе, <code>dps</code> - число значащих десятичных цифр. Если изменить
            один из этих атрибутов, другой изменится соответственно.</p>
          <pre class="prettyprint"><code>g.mp.dps=50
print g.mp
#Mpmath settings:
#  mp.prec = 169               [default: 53]
#  mp.dps = 50                 [default: 15]
#  mp.trap_complex = False     [default: False]</code></pre>
          <p>Математические константы типа <em>π</em> или <em>e</em> реализованы в виде ленивых объектов. Они содержат
            сколько-то вычисленных бит плюс алгоритм, позволяющий получить больше бит, если потребуется. Когда такой
            объект встречается в выражении, из него делается число с текущей точностью.</p>
          <pre class="prettyprint"><code>g.mp.prec=53
print g.pi
#3.14159265358979
g.mp.prec=169
print g.pi
#3.1415926535897932384626433832795028841971693993751
+g.pi
#mpf('3.1415926535897932384626433832795028841971693993751068')
g.sin(g.pi/4)**2
#mpf('0.50000000000000000000000000000000000000000000000000134')</code></pre>
          <p>Преобразовать <code>g.mpf</code> в число python можно через функцию <code>float()</code>:
            <code>float(x)</code>. Преобразование в строку: <code>str(x)</code>.
          </p>
          <p>Реализованы арифметические операции и тригонометрические функции: <code>g.sqrt</code>, кубический корень
            <code>cbrt</code>, корень порядка n <code>g.root</code>, <code>g.exp</code>, <code>g.power</code>,
            <code>g.log</code>, <code>g.ln</code>, <code>g.log10</code>, <code>g.sin</code>, <code>g.cos</code>,
            <code>g.tan</code>, <code>g.sec</code>, <code>g.csc</code>, <code>g.cot</code>, <code>g.asin</code>,
            <code>g.acos</code>, <code>g.atan</code>, <code>g.asec</code>, <code>g.acsc</code>, <code>g.acot</code>,
            <code>g.sinh</code>, <code>g.cosh</code>, <code>g.tanh</code>, <code>g.sech</code>, <code>g.csch</code>,
            <code>g.coth</code>, <code>g.asinh</code>, <code>g.acosh</code>, <code>g.atanh</code>, <code>g.asech</code>,
            <code>g.acsch</code>, <code>g.acoth</code>, константы <code>g.pi</code>, <code>g.e</code>,
            <code>g.phi</code>, <code>g.euler</code>, <code>g.catalan</code>, <code>g.apery</code>,
            <code>g.khinchin</code>, <code>g.glaisher</code>, <code>g.mertens</code>, <code>g.twinprime</code>.
          </p>
          <p><code>g.polyroots</code> - Корни многочлена, заданного списком коэффициентов, <code>g.polyval(l,x)</code> -
            значение многочлена в заданной точке:</p>
          <pre class="prettyprint"><code>l=[1,0,0,0,1,1]
r=g.polyroots(l)
for x in r:
    print x
#-0.75487766624669276004950889635852869189460661777279
#(0.8774388331233463800247544481792643459473033088864 - 0.74486176661974423659317042860439236724016308490682j)
#(0.8774388331233463800247544481792643459473033088864 + 0.74486176661974423659317042860439236724016308490682j)
#(-0.5 + 0.86602540378443864676372317075293618347140262690519j)
#(-0.5 - 0.86602540378443864676372317075293618347140262690519j)
for x in r:
    print g.polyval(l,x)
#0.0
#(2.672764710092195646140536467151481878815196880105e-51 - 4.6512209026900071036135543450317217153701063147101e-51j)
#(2.672764710092195646140536467151481878815196880105e-51 + 4.6512209026900071036135543450317217153701063147101e-51j)
#(0.0 + 0.0j)
#(0.0 + 0.0j)</code></pre>
          <p>Решение уравнения заданного функцией python на заданном интервале.</p>
          <pre class="prettyprint"><code>def f(x):
    return g.exp(-x)-g.sin(x)
print g.findroot(f,(0.5,0.7))
#0.58853274398186107743245204570290368853127151610903053</code></pre>
          <p>Также функция позволяет решать системы уравнений.</p>
          <pre class="prettyprint"><code>g.findroot([lambda x,y:x**2+y**2-1,lambda x,y:x*y-1/4],(1,0.25))
#matrix(
#[['0.9659258262890682867497431997288973676339048390084'],
#  ['0.25881904510252076234889883762404832834906890131993']])</code></pre>
          <p>Производная для заданной функции в заданной точке заданного порядка (по умолчанию первого).</p>
          <pre class="prettyprint"><code>g.diff(f,0.5)
#mpf('-1.4841132216030061397200811175950101054335633325969314')
g.diff(f,0.5,2)
#mpf('1.085956198316836423877087470206751841523721503427788')
g.diff(lambda x,y:sin(x)*cos(y),(pi,pi),(1,2))
#mpf('-1.0')</code></pre>
          <p><code>g.quad</code> вычисляет интеграл для функций на заданом отрезке. Дополнительный аргумент-отрезок
            вычислит двойной интеграл, ещё один - тройной. <code>g.extradps(5)</code> позволяет определить операции все
            вычисления которых будут производиться с точностью, на 5 значащих цифр большей; затем она вернётся к
            прежней.</p>
          <pre class="prettyprint"><code>print g.quad(g.cos, [-g.pi/2, g.pi/2])
#2.0
with g.extradps(5):
  I=g.quad(lambda x:g.log(x)**2/(1+x),(0,1))
  print I
#1.803085354739391428099607242267174986147479438510748322
            </code></pre>
          <p>Допустим, у нас есть причины подозревать, что число <code>I</code> равно числу <em>ζ(3)</em>, умноженному
            на рациональное число (с не очень большими числителем n<sub>1</sub> и знаменателем n<sub>2</sub>).
            <code>g.pslq([x1,x2,...])</code> находит целые числа n<sub>1</sub>, n<sub>2</sub>, ... такие, что
            <em>n<sub>1</sub>x<sub>1</sub>+n<sub>2</sub>x<sub>2</sub>+⋯&lt;eps</em>, где eps - очень маленькое число.
            Это - метод нахождения тождеств, называемый <em>экспериментальной математикой</em>. Для этого часто
            требуются вычисления с очень высокой точностью.
          </p>
          <pre class="prettyprint"><code>g.pslq([I,g.zeta(3)])
#[-2, 3]</code></pre>
          <p>То есть <code>I</code> примерно равен <em>3/2*ζ(3)</em>.</p>
          <p><code>g.nsum</code> позволяет посчитать сумму ряда, в том числе бесконечного. Для произведений можно
            аналогично использовать <code>g.nprod</code></p>
          <pre class="prettyprint"><code>with g.extradps(5):
    s=g.nsum(lambda n:(-1)**(n-1)/n**4,(1,g.inf))
    print s
#0.9470328294972459175765032344735219149279070829288860442
print g.pslq([s,g.pi**4])
#[-720, 7]</code></pre>
          <p>То есть эта сумма, вероятно, равна <em>7/720*π<sup>4</sup></em>. Функция <code>g.identify</code> пытается
            по значению числа восстановить его точную формулу, возвращая либо строку с формулой, либо <code>None</code>.
          </p>
          <pre class="prettyprint"><code>g.identify(s)
#'(3**(165/26)*7**(159/52))/(2**(191/52)*5**(337/52))'</code></pre>
          <p><code>g.odefun</code>возвращает функцию, являющаюся решением системы ОДУ</p>
          <pre class="prettyprint"><code>a=g.mpf('0.2')
def f(t,x):
    global a
    return [x[1],-x[0]-2*a*x[1]]
x=g.odefun(f,0,[1,0])
x(1)
#[mpf('0.59496623263788777500734762840237378880987158574261147'),
#  mpf('-0.69387986210972080683187214187798497495035321299936026')]</code></pre>
          <p>Вычисление предела функции</p>
          <pre class="prettyprint"><code>g.limit(lambda x: x/g.sin(x), 0)
#mpf('1.0')</code></pre>
        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='matrix'>Вещественные матрицы</h2>
        </div>
        <div class='section'>
          <p>Матрицы разреженные, реализованы как словари.</p>
          <pre class="prettyprint"><code>#Квадратная матрица
g.matrix(2)
#matrix(
#[['0.0', '0.0'],
#  ['0.0', '0.0']])
#Прямоугольная матрица
M=g.matrix(2,3)
M
#matrix(
#[['0.0', '0.0', '0.0'],
#  ['0.0', '0.0', '0.0']])
M.rows,M.cols
#(2, 3)
M[0,1]=1
M
#matrix(
#[['0.0', '1.0', '0.0'],
#  ['0.0', '0.0', '0.0']])</code></pre>
          <p>Операции с матрицами</p>
          <pre class="prettyprint"><code>M1=g.matrix([[0,1],[1,0]])
M2=g.matrix([[1,0],[0,-1]])
print M1+M2
#matrix(
#[['1.0', '1.0'],
# ['1.0', '-1.0']])
print M1*M2
#matrix(
#[['0.0', '-1.0'],
# ['1.0', '0.0']])
print M2*M1
#matrix(
#[['0.0', '1.0'],
# ['-1.0', '0.0']])
print M1**(-1)
#matrix(
#[['0.0', '1.0'],
# ['1.0', '0.0']])</code></pre>
          <p>Решение системы линейных уравнений</p>
          <pre class="prettyprint"><code>A=g.matrix([[1,2],[3,4]])
b=g.matrix([1,-1])
print b
#matrix(
#[['1.0'],
# ['-1.0']])
x=g.lu_solve(A,b)
print x
#matrix(
#[['-3.0'],
# ['2.0']])
print A*x-b
#matrix(
#[['0.0'],
# ['0.0']])</code></pre>
          <!--p>Собственные значения и собственные векторы</p>
            <pre class="prettyprint"><code>l,u=g.eig(A)
print l
#[mpf('-0.37228132326901432992530573410946465911013222899139797'),
# mpf('5.3722813232690143299253057341094646591101322289914067')]
print u
#matrix(
#[['-0.82456484013239376536905071707877267896095335074304', '-0.42222915041526045335929057758178658089159736117701'],
# ['0.56576746496899228472288762798052673125191630934726', '-0.92305231425019333318861560854941073593095247730112']])</code></pre-->
          <p>Диагональная матрица</p>
          <pre class="prettyprint"><code>L=g.diag(l)
print L
#matrix(
#[['-0.3722813232690143299253057341094646591101322289914', '0.0'],
# ['0.0', '5.3722813232690143299253057341094646591101322289914']])
<!--print A*u-u*L
#matrix(
#[['-2.0045735325691467346054023503636114091113976600788e-51', '5.3455294201843912922810729343029637576303937602101e-51'],
# ['0.0', '1.069105884036878258456214586860592751526078752042e-50']])--></code></pre>
        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='iv'>Вещественные интервалы</h2>
        </div>
        <div class='section'>
          <p><code>g.iv.mpf</code> можно использовать для представления доверительного интервала вещественного числа.
            Интервал можно создать указав одно или пару значений-границ интервала. Рекомендуется использовать строки для
            точного представления границ. Для интервалов используется свой контекст точности <code>g.iv</code>
            аналогичный <code>g.mp</code>.</p>
          <pre class="prettyprint"><code>g.iv.dps = 15
print g.iv.mpf('0.1')
#[0.099999999999999991673, 0.10000000000000000555]
print iv.mpf(['0.1', '0.2'])
#[0.099999999999999991673, 0.2000000000000000111]
print(1 / g.iv.mpf([2, 'inf']))
[0.0, 0.5]</code></pre>
          <p>Для проверки наличия значения в интервале используется оператор <code>in</code>. Оператор <code>==</code>
            проверяет интервалы на равенство границ, <code>&lt;</code> и <code>&gt;</code> проверяют неравенство для
            обоих границ и в случае несовпадения результата возвращают <code>None</code>.</p>
          <pre class="prettyprint"><code>print g.iv.mpf([0,2]) in g.iv.mpf([0,10])
#True
print 3 in g.iv.mpf(['-inf', 0])
#False
print g.iv.mpf([1,2]) == g.iv.mpf([1,2])
#True
print g.iv.mpf([1,2]) != g.iv.mpf([1,2])
#False
print g.iv.mpf([1,2]) &lt;= 2
#True
print g.iv.mpf([1,2]) &gt; 0
#True
print g.iv.mpf([1,2]) &lt; 1
#False
print g.iv.mpf([1,2]) &lt; 2    
#None
print g.iv.mpf([2,2]) &lt; 2
#False
print g.iv.mpf([1,2]) &lt;= g.iv.mpf([2,3])
#True
print g.iv.mpf([1,2]) &lt; g.iv.mpf([2,3])  
#None
print g.iv.mpf([1,2]) &lt; g.iv.mpf([-1,0])
#False</code></pre>
          <p>Для интервалов можно использовать все функции, описанные в разделе про вещественные числа, только вместо
            префикса <code>g</code> нужно использовать <code>g.iv</code>, либо предварительно присвоить
            <code>g = g.iv</code>.
          </p>

        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='mpc'>Комплексные числа</h2>
        </div>
        <div class='section'>
          <p>Создать число можно через <code>g.mpc</code> из строки или комплексного числа python:</p>
          <pre class="prettyprint"><code>x=g.mpc('1')
print x
#(1.0 + 0.0j)
y=g.mpc(1+1j)
print y
#(1.0 + 1.0j)</code></pre>
          <p>Для комплексных чисел работают все функции, описанные в разделе про вещественные числа. Получить
            вещественную часть можно через <code>g.re</code>, мнимую через <code>g.im</code>, абсолютное значение и
            комплексный аргумент можно через <code>g.fabs</code> и <code>g.arg</code>, либо <code>g.polar</code> вернёт
            обе полярные координаты комплексного числа, получить число из полярных координат можно через
            <code>g.rect</code>, комплексное сопряжение - <code>g.conj</code>.
          </p>
          <pre class="prettyprint"><code>print g.re(4+3j)
#4.0
print g.im(4+3j)
#3.0
print g.fabs(4+3j)
#5.0
print g.arg(4+3j)
#0.64350110879328438680280922871732263804151059111531
print g.polar(4+3j)
#(mpf('5.0'), mpf('0.64350110879328438680280922871732263804151059111531185'))
print g.rect(5,g.atan(0.75))
#(4.0 + 3.0j)</code></pre>
        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='mpz'>Целые числа</h2>
        </div>
        <div class='section'>
          <p><code>gmpy.mpz</code> представляет длинные целые из строки или числа python, аналогично
            <code>AAL.Integer</code>. Доступны все арифметические операции чисел python.
          </p>
          <pre class="prettyprint"><code>gmpy.mpz('123')+1
#mpz(124)
print 10-gmpy.mpz(10**100)
#-9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999990</code></pre>
          <p>Доспупны также следующие функции:
            <br /><code>gmpy.is_power</code> возвращает <code>True</code>, если переданое число идеальная степень, иначе
            <code>False</code>.
            <br /><code>gmpy.is_square</code> возвращает <code>True</code>, если переданое число идеальный квадрат,
            иначе <code>False</code>.
            <br /><code>gmpy.is_prime(a,n)</code> возвращает <code>True</code>, если переданое число, <b>вероятно</b>,
            простое число. <code>False</code> возвращается, если переданое число определенно составное. Переданое число
            проверяется на наличие малых делителей и выполняется до <code>n</code> (по умолчанию 25) тестов
            Миллера-Рабина.
            <br /><code>gmpy.bit_length</code> возвращает количество значащих бит в двоичном представлении переданного
            числа. Для совместимости с Python <code>gmpy.mpz(0).bit_length()</code> возвращает 0.
            <br /><code>gmpy.getbit(a,n)</code> возвращает бит <code>n</code> в двоичном представлении числа
            <code>a</code>.
            <br /><code>gmpy.digits(a,n)</code> возвращает строку, представляющую <code>a</code> по основанию
            <code>n</code>.
            <br /><code>gmpy.bincoef(a,n)</code> возвращает биномиальный коэффициент.
            <br /><code>gmpy.legendre(a,b)</code> возвращает символ Лежандра <em>(a | b)</em>. <em>b</em> предполагается
            нечетным простым числом.
            <br /><code>gmpy.hamdist(a,b)</code> возвращает расстояние Хемминга (количество битовых позиций, где биты
            различаются) между целыми числами.
            <br /><code>gmpy.invert(x,m)</code> возвращает <code>y</code> такой, что <code>x * y == 1</code> по модулю
            <code>m</code> или 0, если такого <code>y</code> не существует.
            <br /><code>gmpy.remove(x,f)</code> удалит множитель <code>f</code> из <code>x</code> столько раз, сколько
            возможно, и вернет кортеж <code>(y,m)</code>, где <code>y = x // (f ** m)</code>. <code>f</code> не делит
            <code>y</code>. <code>m</code> кратность множителя <code>f</code> в <code>x</code>. <code>f</code> должно
            быть больше 1.
            <br /><code>gmpy.next_prime</code> возвращает следующее, <b>вероятно</b>, простое число больше переданного.
            <br /><code>gmpy.popcount</code> возвращает количество битов со значением 1 в переданном числе. Если
            переданное число меньше 0, число битов со значением 1 бесконечно, поэтому в этом случае возвращается -1.
            <br /><code>gmpy.kronecker(a,b)</code> возвращает символ Кронекера-Якоби <em>(a | b)</em>.
            <br /><code>gmpy.jacobi(a,b)</code> возвращает символ Якоби <em>(a | b)</em>. <em>b</em> должен быть
            нечетным и положительным.
            <br /><code>gmpy.comb(x,n)</code> возвращает количество комбинаций из <code>x</code>, принимая
            <code>n</code> за раз. <code>n</code> должно быть больше или равно 0.
            <br /><code>gmpy.fdivmod(x,y)</code> возвращает частное и остаток от <code>x</code>, деленного на
            <code>y</code>. Частное округляется в сторону -Inf (округление в меньшую сторону), а остаток будет иметь тот
            же знак, что и <code>y</code>.
            <br /><code>gmpy.tdivmod(x,y)</code> возвращает частное и остаток от <code>x</code>, деленного на
            <code>y</code>. Частное округляется в сторону 0 (усечение), а остаток будет иметь тот же знак, что и
            <code>y</code>.
            <br /><code>gmpy.cdivmod(x,y)</code> возвращает частное и остаток от <code>x</code>, деленного на
            <code>y</code>. Частное округляется в сторону +Inf (округление в большую сторону), а остаток будет иметь
            противоположный к <code>y</code> знак.
          </p>
        </div>
      </div>
      <h2 id='uni'>Библиотека Universal</h2>
      <p>Даны обозначения операций и перечни операндов, а также параметров <code>Uni.&lt;параметр&gt;</code>,
        определяющих модули используемых в операции алгебраических структур. Они должны быть объявлены в программе перед
        использованием данной операции. Операции сложения, вычитания и умножения обозначены <code>+,-,*</code>, операции
        взятия частного и остатка от деления в кольце обозначены <code>\\</code> и <code>%</code>, операция возведения в
        степень обозначена <code>^</code>.</p>
      <table class="table">
        <tr>
          <th>
            Название
          </th>
          <th>
            Функция
          </th>
          <th>
            Подсказка
          </th>
        </tr>
        <tr>
          <td colspan="7">
            <center>
              Операции в кольцах Z, Zn и в поле Fp</center>
          </td>
        </tr>
        <tr>
          <td>
            Сложение в кольце Z
          </td>
          <td><code>Uni.addZ</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Z
          </td>
        </tr>
        <tr>
          <td>
            Сложение в кольце Zn
          </td>
          <td><code>Uni.addZn</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Zn, Uni.n в N
          </td>
        </tr>
        <tr>
          <td>
            Сложение в поле Fp
          </td>
          <td><code>Uni.addFp</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Fp, Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Разность в кольце Z
          </td>
          <td><code>Uni.subZ</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Z
          </td>
        </tr>
        <tr>
          <td>
            Разность в кольце Zn
          </td>
          <td><code>Uni.subZn</code></td>
          <td>
            B=A1-A2. B,A1, A2 в Zn, Uni.n в N
          </td>
        </tr>
        <tr>
          <td>
            Разность в поле Fp
          </td>
          <td><code>Uni.subFp</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Fp, Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Умножение в кольце Z
          </td>
          <td><code>Uni.mulZ</code></td>
          <td>
            B=A1*A2. B,A1,A2 в Z
          </td>
        </tr>
        <tr>
          <td>
            Умножение в кольце Zn
          </td>
          <td><code>Uni.mulZn</code></td>
          <td>
            B=A1*A2.
            B,A1, A2 в Zn, Uni.n в Z
          </td>
        </tr>
        <tr>
          <td>
            Умножение в поле Fp
          </td>
          <td><code>Uni.mulFp</code></td>
          <td>
            B=A1*A2. B,A1,A2 в Fp, Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Деление с остатком в кольце Z
          </td>
          <td><code>Uni.divZ</code></td>
          <td>
            B1=A1\\A2, B2=A1%A2. B1,B2,A1,A2 в Z[X],A2&ne;0.
          </td>
        </tr>
        <tr>
          <td>
            Расширенный алгоритм Евклида в кольце Z
          </td>
          <td><code>Uni.EuclidZ</code></td>
          <td>
            Нахождение корней B1=X,B2=Y,&nbsp; уравнения A1*X+A2*Y=НОД(A1,A2) и числа B3=НОД(A1,A2). B1,B2,B3,A1,A2 в Z,
            A1*A2 не равно 0.
          </td>
        </tr>
        <tr>
          <td>
            Обращение в кольце Zn
          </td>
          <td>
            &nbsp;
          </td>
          <td>
            B=A^(-1). B,A в Fn, B*A=1, Uni.n в N
          </td>
        </tr>
        <tr>
          <td>
            Обращение в поле Fp
          </td>
          <td><code>Uni.invFp</code></td>
          <td>
            B=A^(-1). B,A в Fp, A не равно 0, Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в кольце Z
          </td>
          <td><code>Uni.powerZ</code></td>
          <td>
            B=A^D. B,A,D в N<sup>+</sup>
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в кольце Zn
          </td>
          <td><code>Uni.powerZn</code></td>
          <td>
            B=A^D. B,A в Zn, D в Z<sup>+</sup>, Uni.n в Z
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в поле Fp
          </td>
          <td><code>Uni.powerFp</code></td>
          <td>
            B=A^D. B,A в Fp, D в Z<sup>+</sup>, Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td colspan="7">
            <center>
              Операции в кольцах Z[x], Zn[n] и Fp[X]</center>
          </td>
        </tr>
        <tr>
          <td>
            Сложение в кольце Z[X]
          </td>
          <td><code>Uni.addZX</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Z[X]
          </td>
        </tr>
        <tr>
          <td>
            Сложение в кольце Zn[X]
          </td>
          <td><code>Uni.addZnX</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Z[X], Uni.n в N
          </td>
        </tr>
        <tr>
          <td>
            Сложение в кольце Fp[X]
          </td>
          <td><code>Uni.addFpX</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Fp[X], Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Вычитание в кольце Z[X]
          </td>
          <td><code>Uni.subZX</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Z[X]
          </td>
        </tr>
        <tr>
          <td>
            Вычитание в кольце Zn[X]
          </td>
          <td><code>Uni.subZnX</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Zn[X],Uni.n в N
          </td>
        </tr>
        <tr>
          <td>
            Вычитание в кольце Fp[X]
          </td>
          <td><code>Uni.subFpX</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Fp[X], Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Умножение на скаляр в кольце Z[X]
          </td>
          <td><code>Uni.smulZX</code></td>
          <td>
            B=С*A. С в Z, B,A в Z[X]
          </td>
        </tr>
        <tr>
          <td>
            Умножение на скаляр в кольце Zn[X]
          </td>
          <td><code>Uni.smulZnX</code></td>
          <td>
            B=С*A. С в Zn, B,A в Zn[X], Uni.n в N
          </td>
        </tr>
        <tr>
          <td>
            Умножение на скаляр в кольце Fp[X]
          </td>
          <td><code>Uni.smulFpX</code></td>
          <td>
            B=С*A. С в Fp, B,A в Fp[X], Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Умножение в кольце Z[X]
          </td>
          <td><code>Uni.mulZX</code></td>
          <td>
            B=A1*A2. B,A1,A2 в Z[X]
          </td>
        </tr>
        <tr>
          <td>
            Умножение в кольце Zn[X]
          </td>
          <td><code>Uni.mulZnX</code></td>
          <td>
            B=A1*A2. B,A1,A2 в Zn[X], Uni.n в Z
          </td>
        </tr>
        <tr>
          <td>
            Умножение в кольце Fp[X]
          </td>
          <td><code>Uni.mulFpX</code></td>
          <td>
            B=A1*A2. B,A1,A2 в Fp[X], Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в кольце Z[X]
          </td>
          <td><code>Uni.powerZX</code></td>
          <td>
            B=A^D. B,A в Z[X], D в Z<sup>+</sup>
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в кольце Zn[X]
            &nbsp;
          </td>
          <td><code>Uni.powerZnX</code></td>
          <td>
            B=A^D. B,A в Zn[X], D в Z<sup>+</sup>, Uni.n в Z
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в кольце Fp[X]
          </td>
          <td><code>Uni.powerFpX</code></td>
          <td>
            B=A^D. B,A в Fp[X], D в Z<sup>+</sup>, Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Деление с остатком в кольце Fp[X]
          </td>
          <td><code>Uni.divFpX</code></td>
          <td>
            B1=A1\\A2, B2=A1%A2 B1,B2,A1,A2 в Fp[X], A2&ne;[0] Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td>
            Расширенный алгоритм Евклида в кольце Fp[X]
          </td>
          <td><code>Uni.EuclidFpX</code></td>
          <td>
            Нахождение корней B1=X,B2=Y,&nbsp; уравнения A1*X+A2*Y=НОД(A1,A2) и многочлена B3=НОД(A1,A2) при A1*A2 не
            равном [0]. B1,B2,B3,A1,A2 в Fp[Z], A1*A2 &ne; [0], Uni.p-простое число
          </td>
        </tr>
        <tr>
          <td colspan="7">
            <center>
              Операции в поле Fp[X]_f(x)=Fpl</center>
          </td>
        </tr>
        <tr>
          <td>
            Сложение в поле Fp[X]_f(x)=Fpl
          </td>
          <td><code>Uni.addFpl</code></td>
          <td>
            B1=A1+A2. B1,A1,A2 в Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f в
            Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Вычитание в поле
            Fp[X]_f(x)=Fpl
          </td>
          <td><code>Uni.subFpl</code></td>
          <td>
            B1=A1-A2. B1,A1,A2 в Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f в
            Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Умножение на скаляр в поле Fp[X]_f(x)=Fpl
          </td>
          <td><code>Uni.smulFpl</code></td>
          <td>
            B=A1*A2. A1&isin;Fp[X], B,A2&isin;Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен
            степени l+1, f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Умножение в поле Fp[X]_f(x)=Fpl
          </td>
          <td><code>Uni.mulFpl</code></td>
          <td>
            B=A1*A2. B, A1, A2 в Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в поле Fp[X]_f(x)=Fpl
          </td>
          <td><code>Uni.powerFpl</code></td>
          <td>
            B=A<sup>K</sup>. B, A в Fp[X]_f, K в N, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен
            степени l+1, f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Обращение поле Fp[X]_f(x)=Fpl
          </td>
          <td><code>Uni.invFpl</code></td>
          <td>
            B=A<sup>-1</sup>. &nbsp;&nbsp;B, A в Fp[X]_f, A&ne;0, Uni.p-простое число, Uni.l в N, Uni.f - примитивный
            многочлен степени l+1, f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td colspan="7">
            <center>
              Операции в кольце Fp^l[Y]=FplY</center>
          </td>
        </tr>
        <tr>
          <td>
            Сложение в кольце Fp^l[Y]=FplY
          </td>
          <td><code>Uni.addFplY</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Fp^l[Y], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Вычитание в кольце Fp^l[Y]
          </td>
          <td><code>Uni.subFplY</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Fp^l[Y], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Умножение на скаляр в кольце Fp^l[Y]=FplY
          </td>
          <td><code>Uni.smulFplY</code></td>
          <td>
            B=A*С. A в Fp^l[Y], C в Fp^l, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Деление c остатком в кольце Fp^l[Y] =FplY
          </td>
          <td><code>Uni.divFplY</code></td>
          <td>
            B1=A1//A2. B1,B2,A1,A2 в Fp^l[Y],A2 не равно [[0]], Uni.p-простое число, Uni.l в N, Uni.f - примитивный
            многочлен степени l+1, f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Умножение в кольце Fp^l[Y]
          </td>
          <td><code>Uni.mulFplY</code></td>
          <td>
            B=A1*A2. B,A1,A2 в Fp^l[Y], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Расширенный алгоритм Евклида в кольце Fp^l[Y]
          </td>
          <td><code>Uni.EuclidFplY</code></td>
          <td>
            Нахождение корней B1=X,B2=Y,&nbsp; уравнения A1*X+A2*Y=НОД(A1,A2) и многочлена B3=НОД(A1,A2). B1,B2,B3,A1,A2
            в Fp^l[Y], A1*A2 &ne; [[0]], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f в
            Fp[X].
          </td>
        </tr>
        <tr>
          <td colspan="7">
            <center>
              Операции в кольце Fp^l[Y]_f(Y)=Fpld</center>
          </td>
        </tr>
        <tr>
          <td>
            Сложение в поле Fp^l[Y]_f(Y)=Fpld
          </td>
          <td><code>Uni.addFpld</code></td>
          <td>
            B=A1+A2. B,A1,A2 в Fpld, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X], Uni.d в N, Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X],
          </td>
        </tr>
        <tr>
          <td>
            Вычитание в поле Fp^l[Y]_f(Y)=Fpld
          </td>
          <td><code>Uni.subFpld</code></td>
          <td>
            B=A1-A2. B,A1,A2 в Fpld, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X], Uni.d в N, Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X],
          </td>
        </tr>
        <tr>
          <td>
            Умножение на скаляр в поле Fp^l[Y]_f(Y)=Fpld
          </td>
          <td><code>Uni.smulFpld</code></td>
          <td>
            B=A*С. A в Fp^ld, C в Fp^l, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1,
            f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]
          </td>
        </tr>
        <tr>
          <td>
            Умножение в поле Fp^l[Y]f(Y)=Fp^ld
          </td>
          <td><code>Uni.mulFpld</code></td>
          <td>
            B=A1*A2 Аргументы: B,A1,A2 в Fp^ld, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени
            l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в кольце Fp^l[Y]
          </td>
          <td><code>Uni.powerFplY</code></td>
          <td>
            B=A^D. B,A в Fp^l[Y], D в Z<sup>+</sup>, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен
            степени l+1, f&isin;Fp[X].
          </td>
        </tr>
        <tr>
          <td>
            Возведение в степень в поле Fp^l[Y]f(Y)=Fp^ld
          </td>
          <td><code>Uni.powerFpld</code></td>
          <td>
            B=A1^D. mod f(Y) Аргументы: A в Fp^ld, D в Z<sup>+</sup>, Uni.p-простое число, Uni.l в N, Uni.f -
            примитивный многочлен степени l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]
          </td>
        </tr>
        <tr>
          <td>
            Обращение в поле Fp^l[Y]_f(Y)=Fp^ld
          </td>
          <td><code>Uni.invFpld</code></td>
          <td>
            B=A^(-1). B,A в Fp^ld, A не равно [[0]], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен
            степени l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]
          </td>
        </tr>
      </table>
      <h2 id='maude'>Maude</h2>
      <p>Maude - это высокопроизводительный рефлексивный язык программирования, поддерживающий переписывание логических
        выражений и используемый для создания исполняемых сред для различных логик, алгоритмов и протоколов, средств
        доказательства теорем, языков и моделей вычислений. <a href="https://en.wikipedia.org/wiki/Maude_system">Обзор
          на английском языке</a>. <a href="http://maude.lcc.uma.es/maude31-manual-html/maude-manual.html">Полная
          докуменация на английском языке</a>. Для доступа к интерпретатору Maude используется функция
        <code>maude</code>, принимающая код для выполнения и возвращаяющая результат выполнения в виде строки:
      </p>
      <pre class="prettyprint"><code>print maude('''
fmod NAT is
  sort Nat .
  op 0 : -> Nat [ctor] .
  op s : Nat -> Nat [ctor] .
  op _+_ : Nat Nat -> Nat .
  vars N M : Nat .
  eq 0 + N = N .
  eq s(N) + M = s (N + M) .
endfm
red s(0) + s(s(0)) .
''')</code></pre>
      <p>В режиме Sage кроме описанной выше функции <code>maude</code> доступен сокращённый синтаксис вызова
        интерпретатора (т.н. magic): однострочный <code>%maude red 0 .</code> и многострочный:</p>
      <pre class="prettyprint"><code>%%maude
red 0 .
red 1 .</code></pre>
      <h2 id='numpy'>Numpy</h2>
      <p>Numpy - библиотека python для быстрых операций над массивами. <a
          href="https://numpy.org/doc/stable/reference/">Полная документация на английском</a>. Все подмодули и
        операции доступны через стандартные префиксы:<code>np</code>, что эквивалентно <code>numpy</code>. Список
        предварительно импортированных подмодулей:</p>
      <table class="table">
        <tr>
          <th>Модуль</th>
          <th>Описание</th>
        </tr>
        <tr>
          <td>numpy</td>
          <td>Также доступен как <code>np</code></td>
        </tr>
        <tr>
          <td>numpy.dual</td>
          <td>Часть функций scipy</td>
        </tr>
        <tr>
          <td>numpy.fft</td>
          <td>Дискретные преобразования Фурье</td>
        </tr>
        <tr>
          <td>numpy.linalg</td>
          <td>Линейная алгебра</td>
        </tr>
        <tr>
          <td>numpy.matlib</td>
          <td>Функции работы с матрицами</td>
        </tr>
        <tr>
          <td>numpy.polynomial</td>
          <td>Функции работы с многочленами</td>
        </tr>
        <tr>
          <td>numpy.random</td>
          <td>Генерация случайных чисел</td>
        </tr>
        <tr>
          <td>numpy.testing</td>
          <td>Функции валидации</td>
        </tr>
      </table>
      <p>Модуль также доступен для импорта в режиме Sage.</p>
      <h2 id='scipy'>Scipy</h2>
      <p>Scipy - библиотека python для выполнения научных и инженерных расчётов. <a
          href="https://docs.scipy.org/doc/scipy/reference/">Полная документация на английском</a>. Все подмодули и
        операции доступны через префикс <code>scipy</code>. Список предварительно импортированных подмодулей:</p>
      <table class="table">
        <tr>
          <th>Модуль</th>
          <th>Описание</th>
        </tr>
        <tr>
          <td>scipy</td>
          <td></td>
        </tr>
        <tr>
          <td>scipy.cluster</td>
          <td>Кластеризация данных</td>
        </tr>
        <tr>
          <td>scipy.constants</td>
          <td>База данных констант</td>
        </tr>
        <tr>
          <td>scipy.fftpack</td>
          <td>Дискретные преобразования Фурье</td>
        </tr>
        <tr>
          <td>scipy.integrate</td>
          <td>Функции интегрирования и решения ОДУ</td>
        </tr>
        <tr>
          <td>scipy.interpolate</td>
          <td>Интерполяция</td>
        </tr>
        <tr>
          <td>scipy.linalg</td>
          <td>Линейная алгебра</td>
        </tr>
        <tr>
          <td>scipy.misc</td>
          <td></td>
        </tr>
        <tr>
          <td>scipy.ndimage</td>
          <td>Работа с изображениями</td>
        </tr>
        <tr>
          <td>scipy.odr</td>
          <td>Ортогональная дистанционная регрессия</td>
        </tr>
        <tr>
          <td>scipy.optimize</td>
          <td>Оптимизация и численные методы</td>
        </tr>
        <tr>
          <td>scipy.signal</td>
          <td>Обработка сигналов</td>
        </tr>
        <tr>
          <td>scipy.sparse</td>
          <td>Разреженные матрицы</td>
        </tr>
        <tr>
          <td>scipy.sparse.linalg</td>
          <td>Линейная алгебра разреженных матриц</td>
        </tr>
        <tr>
          <td>scipy.spatial</td>
          <td>Пространственные алгоритмы и структуры данных</td>
        </tr>
        <tr>
          <td>scipy.special</td>
          <td>Специальные функции</td>
        </tr>
        <tr>
          <td>scipy.stats</td>
          <td>Статистика</td>
        </tr>
      </table>
      <p>Модуль также доступен для импорта в режиме Sage.</p>
      <h2 id='pandas'>Pandas</h2>
      <p>Pandas - библиотека python для обработки и анализа данных. <a
          href="https://pandas.pydata.org/docs/reference/index.html">Полная документация на английском</a>. Все операции
        доступны через стандартные префиксы: <code>pd</code>, что эквивалентно <code>pandas</code>. Модуль также
        доступен для импорта в режиме Sage.</p>
      <h2 id='matplotlib'>Matplotlib</h2>
      <p>Matplotlib - библиотека python для визуализации данных. <a
          href="https://matplotlib.org/stable/api/index.html">Полная документация на английском</a>. Все операции
        доступны через стандартные префиксы: <code>plt</code>, что эквивалентно <code>matplotlib.pyplot</code> и после
        импорта в режиме Sage.
      </p>
      <p>В режиме Sage графики, которые генерируются вызовом <code>plt.show()</code> будут появляться в консоли
        вывода. В режиме Python данный метод работать не будет. Чтобы увидеть график, необходимо сначало сохранить его в
        директорию <code>assets</code> на сервере. Для этого вместо <code>plt.show()</code> нужно вызывать
        <code>plt.savefig('assets/temp.png')</code> и <code>plt.clf()</code> для очистки холста при последующих
        вызовах. Сохранённый файл <code>assets/test.png</code> будет доступен по ссылке <a
          href="/assets/test.png">http://mm.mpei.ac.ru:8080/assets/test.png</a>. Для удобства просмотра графика в
        консоли, в контестном меню при нажатии правой кнопки мыши на консоль добавлен пункт "Показать изображение".
        Добавленный таким способом в консоль вывода график будет автоматически обновляться при выполнении программ.
        Примеры вывода графика в двух режимах:
      </p>
      <div class="row-fluid">
        <div class='section span6'>
          <h4>Режим Sage</h4>
          <pre class="prettyprint">import matplotlib.pyplot as plt
plt.plot([1, 2, 3, 4])
plt.ylabel('some numbers')
plt.show()</pre>
        </div>
        <div class='section span6'>
          <h4>Режим Python</h4>
          <pre class="prettyprint">plt.plot([1, 2, 3, 4])
plt.ylabel('some numbers')
plt.savefig('assets/test.png')
plt.clf()</pre>
        </div>
      </div>
      <h2 id='seaborn'>Seaborn</h2>
      <p>Seaborn - ещё одна библиотека python для визуализации данных. <a
          href="https://seaborn.pydata.org/api.html">Полная
          документация на английском</a>. Все операции
        доступны через стандартные префиксы: <code>sns</code>, что эквивалентно <code>seaborn</code>. Модуль также
        доступен для импорта в режиме Sage.
      </p>
      <p>Аналогично matplotlib, отображение графика отличается в режиме Sage и Python:</p>
      <div class="row-fluid">
        <div class='section span6'>
          <h4>Режим Sage</h4>
          <pre class="prettyprint">import seaborn as sns
sns.distplot(np.random.normal(0, 30, size=1000))</pre>
        </div>
        <div class='section span6'>
          <h4>Режим Python</h4>
          <pre class="prettyprint"><code>a=sns.distplot(np.random.normal(0, 30, size=1000)).figure
a.savefig('assets/test.png')
a.clf()</code></pre>
        </div>
      </div>
      <h1 id='sklearn'>Библиотеки машинного обучения</h1>
      <p>Scikit-learn - библиотека python для машинного обучения. <a
          href="https://scikit-learn.org/stable/modules/classes.html">Полная документация на английском</a>. Все
        подмодули доступны через стандартный префикс: <code>sklearn</code>. </p>
      <p>Theano - библиотека python для нейронных сетей. <a href="https://theano.readthedocs.io/en/0.8.x/">Полная
          документация на английском</a>. Все подмодули доступны через стандартный префикс: <code>theano</code>. </p>
      <p>Keras - надстройка, предоставляющая упрощённый интерфейс к нескольким нейросетевым библиотекам. <a
          href="https://keras.io/api/">Полная документация на английском</a>. Все
        подмодули доступны через стандартный префикс: <code>keras</code>. </p>
      <p>В режиме Sage доступны для импорта эти модули, а также ещё одна нейросетевая библиотека tensoflow.<a
          href="https://www.tensorflow.org/guide">Руковоство tensoflow на русском</a>.</p>
    </div>
  </div>

  %rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False