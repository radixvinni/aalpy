<button type="button" class="btn btn-small btn-primary" data-toggle="button" onclick="toggle_sage()"><i
            class="icon-sage" style="background-image: url(/assets/img/sage.png);background-position: 0 0;"></i> Sage</button>

<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    GF(3<sup>m6</sup>),GF(3<sup>m</sup>)[Y]Y<sup>10</sup>
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A+C"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(3<sup>m6</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A+C"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(3<sup>m</sup>)[Y]Y<sup>10</sup></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A*C"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(3<sup>m6</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A*C"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(3<sup>m</sup>)[Y]Y<sup>10</sup></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A*C"
        onclick="window.editor.insert('.FullMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение(полные
        эл-ты) в GF(3<sup>m</sup>)[Y]Y<sup>10</sup></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A*C"
        onclick="window.editor.insert('.MonomialMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        на одночлен в GF(3<sup>m</sup>)[Y]Y<sup>10</sup></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A*C"
        onclick="window.editor.insert('.NormalMonomialMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        на нормированный одночлен в GF(3<sup>m</sup>)[Y]Y<sup>10</sup></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A/C,D -remainder"
        onclick="window.editor.insert('.Div()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        с остатком в GF(3<sup>m</sup>)[Y]Y<sup>10</sup></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A<sup>3</sup>"
        onclick="window.editor.insert('.Cube()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в куб в GF(3<sup>m6</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=A<sup>n</sup>"
        onclick="window.editor.insert('.Pow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степень в GF(3<sup>m6</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=Legandre(A)"
        onclick="window.editor.insert('.LegendreSymbol()');window.editor.selection.moveCursorLeft();window.editor.focus()">Символ
        Лежандра</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=CubeRoot(A)"
        onclick="window.editor.insert('.CubeRoot()');window.editor.selection.moveCursorLeft();window.editor.focus()">Извлечение
        кубического корня в GF(3<sup>m6</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=Sqrt(A)">Извлечение корня
        вGF(3<sup>m6</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B = A<sup>-1</sup>">Инвертирование</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B=true если A1 - образующий элемент">Тест
        образующего элемента</a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="B - порядок элемента в группе">Порядок
        элемента в группе</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    GF(2<sup>m4</sup>),GF(2<sup>m</sup>)[Y]Y<sup>7</sup>
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление многочлена</strong><br/>Аргументы: строка или число"
        onclick="window.editor.insert('PolynomGF2_m_4()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        GF(2<sup>m4</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление многочлена</strong><br/>Аргументы: строка или число"
        onclick="window.editor.insert('PolynomGF2_mY_7()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A+C" href="#">Сложение в GF(2<sup>m4</sup>)</a></li>
    <li><a onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A+C" href="#">Сложение в
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A*C" href="#">Умножение в GF(2<sup>m4</sup>)</a></li>
    <li><a onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A*C" href="#">Умножение в
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a onclick="window.editor.insert('.FullMul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A*C" href="#">Умножение(полные эл-ты) в
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a
        onclick="window.editor.insert('.MonomialMul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A*C" href="#">Умножение на одночлен в
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a
        onclick="window.editor.insert('.NormalMonomialMul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A*C" href="#">Умножение на нормированный одночлен в
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a onclick="window.editor.insert('.Div()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A/CD -remainder" href="#">Деление с остатком в
        GF(2<sup>m</sup>)[Y]Y<sup>7</sup></a></li>
    <li><a onclick="window.editor.insert('.Square()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A<sup>2</sup>" href="#">Возведение в квадрат в
        GF(2<sup>m4</sup>)</a></li>
    <li><a onclick="window.editor.insert('.Pow()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A<sup>n</sup>" href="#">Возведение в степень в
        GF(2<sup>m4</sup>)</a></li>
    <li><a onclick="window.editor.insert('.Sqrt()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=Sqrt(A)" href="#">Извлечение квадратного корня
        вGF(2<sup>m4</sup>)</a></li>
    <li><a onclick="window.editor.insert('.Inverse()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="B=A<sup>-1</sup>" href="#">Инвертирование</a></li>
    <li><a rel="tooltip" data-placement="left" data-original-title="B1=true если A1 - образующий элемент" href="#">Тест
        образующего элемента</a></li>
    <li><a rel="tooltip" data-placement="left" data-original-title="B1 - порядок элемента в группе" href="#">Порядок
        элемента в группе</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    EC(GF(p))
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.EllipticCurve()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="<strong>Уравненине: Y<sup>2</sup> = X<sup>2</sup> + <em>a</em>X + <em>b</em></strong><br/>Аргументы: модуль p, коэффициенты а, b">Объявление</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.getOrder()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="Определение порядка через функции MIRACL">Порядок кривой</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="(X3,Y3)=(X1,Y1)+(X2,Y2) <br/>Допустимые значения: X1,Y1,X2,Y2 в EC(GF(p))">Сложение</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.Double()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="(X3,Y3)=2*(X1,Y1) <br/>Допустимые значения: X1,Y1 в EC(GF(p))">Удвоение</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="(X3,Y3)=K*(X1,Y1) <br/>Допустимые значения: X1,Y1 в EC(GF(p))">Умножение на константу</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=GeneratePoint(E) <br/>Допустимые значения: любая эллиптическая кривая">Взятие точки
        из EC(GF(p))</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    EC(GF2)
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Уравненине: Y<sup>2</sup> + X Y = X<sup>3</sup> + <em>a</em> X<sup>2</sup> + <em>b</em></strong><br/>Аргументы: модуль m, коэффициенты а, b"
        onclick="window.editor.insert('NonSuperSingularEllipticCurve()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        несуперсингулярной кривой</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Уравненине: Y<sup>2</sup> + <em>a</em> Y = X<sup>3</sup> + <em>b</em> X + <em>c</em></strong><br/>Аргументы: модуль m, коэффициенты а, b, c"
        onclick="window.editor.insert('SuperSingularEllipticCurve()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        суперсингулярной кривой</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.getOrder()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="Определение порядка через функции MIRACL">Порядок кривой</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление точки эллиптической кривой</strong><br/>Аргументы: кривая"
        onclick="window.editor.insert('NonSuperSingularEllipticPoint()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        точки несуперсингулярной кривой</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление точки эллиптической кривой</strong><br/>Аргументы: кривая"
        onclick="window.editor.insert('SuperSingularEllipticPoint()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        точки суперсингулярной кривой</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)+(X2,Y3) <br/>Допустимые значения: X1,Y1,X2,Y2 в EC(GF(2<sup>n</sup>))">Сложение</a>
    </li>
    <li><a href="#"
        onclick="window.editor.insert('.Double()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=2*(X1,Y1) <br/>Допустимые значения: X1,Y1 в EC(GF(2<sup>n</sup>))">Удвоение</a>
    </li>
    <li><a href="#"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=K*(X1,Y1) <br/>Допустимые значения: X1,Y1 в EC(GF(2<sup>n</sup>))">Умножение на
        константу</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Generate()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="без аргументов">Взятие точки</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.WrappingGenerate()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="H1 AND X3 == X3_1||X3_2, <br/>X3_1 = H1 <br/>Допустимые значения: Допустимые значения: A3<br/> равно 1, модуль на 4 бита длинне чем Н1-сообщение">Размещение
        данных в точке из EC(GF(3<sup>n</sup>))</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.DLK()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="t((X1,Y1),(X2,Y2));">Спаривание</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    EC(GF3)
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        onclick="window.editor.insert('.getOrder()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        data-original-title="Определение порядка через функции MIRACL">Порядок кривой</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)+(X2,Y2);  <br/>Допустимые значения: Модуль-неприводимый<br/> многочлен нечетной степени n; A2, A4, A6, <br/>X1, X2, Y1, Y2 из GF(3<sup>n</sup>); (X1,Y1),(X2,Y2) из EC(GF(3<sup>n</sup>))">Сложение</a>
    </li>
    <li><a href="#"
        onclick="window.editor.insert('.Double()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=2*(X1,Y1); <br/>Допустимые значения: Модуль-неприводимый<br/> многочлен нечетной степени n; A2, A4, A6, <br/>X1, Y1 из GF(3<sup>n</sup>);(X1,Y1) из EC(GF(3<sup>n</sup>))">Удвоение</a>
    </li>
    <li><a href="#"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=K*(X1,Y1); <br/>Допустимые значения: Модуль -неприводимый <br/>многочлен нечетной степени n; A2, A4, A6, <br/>X1, Y1 из GF(3<sup>n</sup>); K-число; (X1,Y1) из EC(GF(3<sup>n</sup>))">Умножение
        на константу</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Generate()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left" data-original-title="без аргументов">Взятие точки</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.WrappingGenerate()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="H1 AND X3 == X3_1||X3_2, <br/>X3_1 = H1 <br/>Допустимые значения: Н1-сообщение из GF(3<sup>n-2</sup>)">Размещение
        данных в точке из EC(GF(3<sup>n</sup>))</a></li>
    <!--li><a href="#" rel="tooltip" data-placement="left" data-original-title="t((X1,Y1),(X2,Y2));  <br/>Допустимые значения:<br/> Модуль-неприводимый многочлен нечетной степени n;">Спаривание</a></li-->
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    GF(3)[X],GF(3)[X]<sub>f(X)</sub>,GF(3<sup>n</sup>)
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление многочлена</strong><br/>Аргументы: строка"
        onclick="window.editor.insert('PolynomGF3()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2</strong><br/>Допустимые значения: A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2(mod f(X))</strong><br/>Допустимые значения: A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.ModAdd()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(3)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2(mod f(X))</strong><br/>Допустимые значения: f(X) неприводим,A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.AddInGF3_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(3<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1-A2</strong><br/>Допустимые значения: A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.Sub()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2 </strong><br/>Допустимые значения: A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2(mod f(X))</strong><br/>Допустимые значения: Модуль не равен 0,A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.ModMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(3)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2(mod f(X))</strong><br/>Допустимые значения: Модуль не равен 0,f(X) нерпиводим,A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.MulGF3_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(3<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1/A2 и B2=A1%A2</strong><br/>Допустимые значения: A2 не сравнимо с 0,A1,A2 в GF(3)[X]"
        onclick="window.editor.insert('.Div()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        и деление с остатком в GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>k</sup></strong><br/>Допустимые значения: A1 в GF(3)[X],K &gt;= 0"
        onclick="window.editor.insert('.Pow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>k</sup>(mod f(X))</strong><br/>Допустимые значения: Модуль не равен 0,A1 в GF(3)[X]"
        onclick="window.editor.insert('.ModPow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в GF(3)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>k</sup>(mod f(X))</strong><br/>Допустимые значения: Модуль не равен 0,f(X) неприводим,A1 в GF(3)[X]"
        onclick="window.editor.insert('.PowGF3_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в GF(3<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true, если многочлен A1 неприводим</strong><br/>Допустимые значения: A1 в GF(3)[X]"
        onclick="window.editor.insert('.isIrreducible()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тестирование
        неприводимости многочлена над GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true, если многочлен A1 примитивен</strong><br/>Допустимые значения: A1 в GF(3)[X]"
        onclick="window.editor.insert('.isPrimitivity()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тестирование
        примитивности многочлена над GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod f(X))</strong><br/>Допустимые значения: f(X) неприводимый,A1 в GF(3)[X]"
        onclick="window.editor.insert('.InverseMod()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в GF(3<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true, если элемент является образующим</strong><br/>Допустимые значения: A1 в GF(3)[X]*"
        onclick="window.editor.insert('PolynomGF3().isGenerator()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        образующего элемента в GF(3<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1-порядок элемента в группе</strong><br/>Допустимые значения: A1 в GF(3)[X]*"
        onclick="window.editor.insert('PolynomGF3().elementOrder()');window.editor.selection.moveCursorLeft();window.editor.focus()">Порядок
        элемента в группе в GF(3<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1-неприводимый полином</strong><br/>Допустимые значения: 1 &lt; K &lt; 300"
        onclick="window.editor.insert('.GenerateIrreducible()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        неприводимого трехчлена степени K в GF(3)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1-НОД</strong><br/>Допустимые значения: A1 и A2 отличны от 0"
        onclick="window.editor.insert('.GCD()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычисление
        НОД(A1,A2)</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    GF(2)[X], GF(2)[X]<sub>f(X)</sub>, GF(2<sup>n</sup>)
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление многочлена</strong><br/>Аргументы: строка"
        onclick="window.editor.insert('Polynom()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2</strong><br/>Аргументы: A1,A2 в GF(2)[X]"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(2)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2(mod f(X))</strong><br/>Аргументы: A1,A2 в GF(2)[X]"
        onclick="window.editor.insert('.ModAdd()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(2)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2(mod f(X))</strong><br/>Аргументы: A1,A2 в GF(2)[X],f(X) неприводим"
        onclick="window.editor.insert('.AddInGF2_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в GF(2<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2 </strong><br/>Аргументы: A1,A2 в GF(2)[X]"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(2)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2(mod f(X))</strong><br/>Аргументы: A1,A2 в GF(2)[X],f(X) не равен 0"
        onclick="window.editor.insert('.ModMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(2)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2(mod f(X))</strong><br/>Аргументы: A1,A2 в GF(2)[X],f(X) не равен 0,f(X) неприводим"
        onclick="window.editor.insert('.MulGF2_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в GF(2<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1/A2 и B2=A1%A2</strong><br/>Аргументы: A2 не равно 0,A1,A2 в GF(2)[X]"
        onclick="window.editor.insert('.Div()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        и деление с остатком в GF(2)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1/A2(mod f(X)) B2=A1%A2(mod f(X))</strong><br/>Аргументы: A1,A2 в GF(2)[X], НОД(A2,f(X))=1"
        onclick="window.editor.insert('.ModDiv()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        в GF(2)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1/A2(mod f(X)) B2=A1%A2(mod f(X))</strong><br/>Аргументы: A1,A2 в GF(2)[X], НОД(A2,f(X))=1"
        onclick="window.editor.insert('.DivInGF2_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        в GF(2<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>k</sup></strong><br/>Аргументы: A1 в GF(2)[X]"
        onclick="window.editor.insert('.Pow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в GF(2)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>k</sup>(mod f(X))</strong><br/>Аргументы: A1 в GF(2)[X], K &gt;= 0"
        onclick="window.editor.insert('.ModPow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в GF(2)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>k</sup>(mod f(X))</strong><br/>Аргументы: f(x) неприводим,A1 в GF(2)[X],K &gt;= 0"
        onclick="window.editor.insert('.PowGF2_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в GF(2<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=НОД(A1,A2)</strong><br/>Аргументы: A1,A2 в GF(2)[X],A1 или A2 не равны 0"
        onclick="window.editor.insert('.BinaryGCD()');window.editor.selection.moveCursorLeft();window.editor.focus()">НОД
        в GF(2)[X]</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true, если многочлен A1 неприводим</strong><br/>Аргументы: A1 в GF(2)[X]"
        onclick="window.editor.insert('.isIrreducible()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тестирование
        неприводимости многочлена над GF(2)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true, если многочлен A1 порождает базисное нормальное множество</strong><br/>Аргументы: A1 в GF(2)[X]"
        onclick="window.editor.insert('.isNormal()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тестирование
        базисности нормального множества в GF(2<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true, если многочлен A1 примитивен</strong><br/>Аргументы: A1 в GF(2)[X]"
        onclick="window.editor.insert('.isPrimitivity()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тестирование
        примитивности многочлена над GF(2)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Параметры для генерации вводятся в поле K, B1 - сгенерированный многочлен</strong><br/>Аргументы: min число 1 - 3, max &gt;= 3, степень многочлена &gt;= 2"
        onclick="window.editor.insert('.GenerateIrreducible()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        неприводимого многочлена над GF(2)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Параметры для генерации вводятся в поле K, B1 - сгенерированный многочлен</strong><br/>Аргументы: min число 1 - 3, max &gt;= 3, степень многочлена &gt;= 2"
        onclick="window.editor.insert('.GenerateNormal()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        многочлена, имеющего нормальный базис</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Параметры для генерации вводятся в поле K, B1 - сгенерированный многочлен</strong><br/>Аргументы: min число 1 - 3, max &gt;= 3, степень многочлена &gt;= 2"
        onclick="window.editor.insert('.GenerateIrreduciblePrimitivity()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        примитивного неприводимого многочлена над GF(2)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Параметры для генерации вводятся в поле K, B1 - сгенерированный многочлен</strong><br/>Аргументы: степень многочлена &gt;= 2"
        onclick="window.editor.insert('.GenerateIrreducibleTrinomial()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        неприводимого трехчлена</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Решение уравнения A1*x+A2*y=GCD(A1,A2), найденные корни: B1=x B2=y</strong><br/>Аргументы: A1,A2 в GF(2)[X]"
        onclick="window.editor.insert('.ExEuclid()');window.editor.selection.moveCursorLeft();window.editor.focus()">Расширенный
        алгоритм Евклида</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod f(X))</strong><br/>Аргументы: A1 в GF(2)[X], НОД(A1,f(X))=1"
        onclick="window.editor.insert('.Inverse()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в GF(2)[X]<sub>f[X]</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod f(X))</strong><br/>Аргументы: A1 в GF(2)[X], НОД(A1,f(X))=1"
        onclick="window.editor.insert('.InverseGF2_n()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в GF(2<sup>n</sup>)</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true если A1 - образующий элемент</strong><br/>Аргументы: A1 в GF(2<sup>n</sup>)*"
        onclick="window.editor.insert('Polynom().isGenerator()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        образующего элемента</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1 - порядок элемента в группе</strong><br/>Аргументы: A1 в GF(2<sup>n</sup>)*"
        onclick="window.editor.insert('Polynom().elementOrder()');window.editor.selection.moveCursorLeft();window.editor.focus()">Порядок
        элемента в группе</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    Z, Z<sub>n</sub>, F<sub>p</sub>
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление нового числа</strong><br/>Аргументы: строка или число"
        onclick="window.editor.insert('Integer()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление</a>
    </li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1 = -A1</strong><br/>Аргументы: A1 в Z"
        onclick="window.editor.insert('.Negate()');window.editor.selection.moveCursorLeft();window.editor.focus()">Отрицание
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2(mod n)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.ModAdd()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1+A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое"
        onclick="window.editor.insert('.ModAddInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1-A2</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.Sub()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1-A2(mod n)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.ModSub()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1-A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое"
        onclick="window.editor.insert('.SubInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2(mod n)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.ModMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1*A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое"
        onclick="window.editor.insert('.MulInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=[A1/A2] mod n=0;B2=A1*A2<sup>-1</sup></strong><br/>Аргументы: A1, A2 в Z, A2 не равно 0"
        onclick="window.editor.insert('.Div()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        и деление с остатком в Z</a></li>
    <!--li><a href="#" rel="tooltip" data-placement="left" data-original-title="<strong>B1=A1/A2(mod n) B2=A1%A2(mod n)</strong><br/>Аргументы: A1 и А2 взаимнопросты с n" onclick="window.editor.insert('.ModDiv()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление в Z<sub>n</sub>*</a></li-->
    <!--li><a href="#" rel="tooltip" data-placement="left" data-original-title="<strong>B1=A1/A2(mod p) B2=A1%A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое, A2 не равно 0" onclick="window.editor.insert('.DivInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление в F<sub>p</sub>*</a></li-->
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>A2</sup></strong><br/>Аргументы: A1, A2 в Z, A2 &gt;= 0"
        onclick="window.editor.insert('.Pow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>A2</sup>(mod n)</strong><br/>Аргументы: A1, A2 в Z, A2 &gt;= 0"
        onclick="window.editor.insert('.ModPow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>A2</sup>(mod p)</strong><br/>Аргументы: A1, A2 в Z, A2 &gt;= 0, p-простое"
        onclick="window.editor.insert('.PowInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=[sqrt(A1)]</strong><br/>Аргументы: A1 в Z"
        onclick="window.editor.insert('.Sqrt()');window.editor.selection.moveCursorLeft();window.editor.focus()">Взятие
        целой части квадратного корня в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=sqrt(A1)(mod p)</strong><br/>Аргументы: A1 в Z, p-простое"
        onclick="window.editor.insert('.ModSqrt()');window.editor.selection.moveCursorLeft();window.editor.focus()">Взятие
        квадратного корня в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=НОД(A1,A2)</strong><br/>Аргументы: A1, A2 в Z, A1 или A2 не равны 0"
        onclick="window.editor.insert('.Euclid()');window.editor.selection.moveCursorLeft();window.editor.focus()">НОД в
        Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Решение уравнения A1*x+A2*y=GCD(A1,A2), найденные корни:  B1=x B2=y</strong><br/>Аргументы: A1, A2 в Z, A1 или A2 не равны 0"
        onclick="window.editor.insert('Integer.ExEuclid()');window.editor.selection.moveCursorLeft();window.editor.focus()">Расширенный
        алгоритм Евклида в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod n). Аргументы: A1 и p взаимно просты</strong><br/>G(n), иначе B1=false. Аргументы: A1 в Z, A1 не равны 0"
        onclick="window.editor.insert('.Inverse()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в Z<sub>n</sub>*</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod p). Аргументы: p-простое</strong><br/>G(p), иначе B1=false. <br/>Допустимые значения; A1 в Z, A1 не равны 0, p - простое"
        onclick="window.editor.insert('.InverseInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в F<sub>p</sub>*</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=Legandre(A1,A2)</strong><br/>Аргументы: A2 - простое<br/>Результат: число(-1, 0 или 1)"
        onclick="window.editor.insert('Integer.LegendreSymbol()');window.editor.selection.moveCursorLeft();window.editor.focus()">Символ
        Лежандра</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=Jacobi(A1/A2)</strong><br/>Аргументы: A1, A2 в Z, A2 &gt; 0<br/>Результат: число(-1, 0 или 1)"
        onclick="window.editor.insert('Integer.JacobySymbol()');window.editor.selection.moveCursorLeft();window.editor.focus()">Символ
        Якоби</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Тест простоты(Миллера-Рабина). B1=IsPrime(A1). B1=true если A1 - вероят-</strong><br/>-ностно простое, иначе B1=false. Аргументы: A1 &gt; 0"
        onclick="window.editor.insert('.isPrime()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Миллера-Рабина</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Взятие случайного вероятно простого числа. B1=GeneratePrime(A1).</strong><br/>Аргументы: 0 &lt; A1 &lt; 1024, A1 длина простого числа в битах"
        onclick="window.editor.insert('.GeneratePrime()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        вероятностно простого числа</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true если A1 - образующий элемент</strong><br/>Аргументы: p - простое, A1 в Fp"
        onclick="window.editor.insert('.isGenerator()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        образующего элемента в Fp*</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Тест простоты(Люка).</strong><br/>B1=IsPrime(n).B1=true если n - простое, иначе B1=false. Аргументы: n - нечетно"
        onclick="window.editor.insert('.ModifiedTestLuka()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Люка</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Тест простоты(Люка-Лемера)</strong><br/>B1=IsPrime((2<sup>A1</sup>)-1).B1=true если(2<sup>A1</sup>)-1 - простое, иначе B1=false. Аргументы: A1 &gt; 3"
        onclick="window.editor.insert('.TestLukaLemera()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Люка-Лемера</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Тест простоты(Поклингтона)</strong><br/>B1=IsPrime(n).B1=true если n - простое, иначе B1=false. Аргументы: n - нечетно"
        onclick="window.editor.insert('.TestPoklingtona()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Поклингтона</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=НОК(A1,A2)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('.SCM()');window.editor.selection.moveCursorLeft();window.editor.focus()">НОК в
        Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1=true если A1 - образующий элемент</strong><br/>Аргументы: модуль в Zn*, элемент в Zn*, разложение порядка группы, порядок поля"
        onclick="window.editor.insert('Integer().isGenerator()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        образующего элемента</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>B1 - порядок элемента в группе</strong><br/>Аргументы: модуль в Zn*, элемент в Zn*, разложение порядка группы, порядок поля"
        onclick="window.editor.insert('Integer().elementOrder()');window.editor.selection.moveCursorLeft();window.editor.focus()">Порядок
        элемента в группе</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Взятие достоверного простого элемента из Z<sub>n</sub>. B1=GeneratePrime(module,разложение n-1)</strong><br/>Аргументы: n &gt;= 1"
        onclick="window.editor.insert('.GeneratePrime()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        достоверного простого числа в Z<sub>n</sub></a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    GF(p<sup>2</sup>)
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление многочлена вида <em>a</em> + <em>b</em>X + X<sup>2</sup></strong><br/>Аргументы: коэффициенты a,b из GF(p), модуль"
        onclick="window.editor.insert('IntegerBinomModulePolynom()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        многочлена модуля</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление многочлена вида <em>a</em> + <em>b</em>X</strong><br/>Аргументы: коэффициенты a,b из GF(p), модуль вида <em>a</em> + <em>b</em>X + X<sup>2</sup>"
        onclick="window.editor.insert('IntegerBinom()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        элемента GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)+(X2,Y3) <br/>Допустимые значения: (X1,Y1), (X2,Y2) в GF(p<sup>2</sup>), p - простое число">Сложение
        в GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Sub()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)-(X2,Y3) <br/>Допустимые значения: (X1,Y1), (X2,Y2) в GF(p<sup>2</sup>), p - простое число">Вычитание
        в GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)*(X2,Y3) <br/>Допустимые значения: (X1,Y1), (X2,Y2) в GF(p<sup>2</sup>), p - простое число">Умножение
        в GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Pow()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)<sup>k</sup> <br/>Допустимые значения: (X1,Y1) в GF(p<sup>2</sup>), K натуральное число, p - простое число">Возведение
        в степень в GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Inverse()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)=(X1,Y1)<sup>-1</sup> <br/>Допустимые значения: (X1,Y1) в GF(p<sup>2</sup>)*, p - простое число">Обращение
        в GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.isGenerative()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="Результат = true усли (X1Y1) - образующий элемент (иначе Результат: false <br/>Допустимые значения: (X1,Y1) в GF(p<sup>2</sup>)*, p - простое число">Тест
        образующего элемента в GF(p<sup>2</sup>)</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.GenerateGenerative()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3,Y3)- образующий элемент группы GF(p<sup>2</sup>) <br/>Допустимые значения: p - простое число">Взятие
        образующего элемента в GF(p<sup>2</sup>)</a></li>
    <li><a href="#" onclick="window.editor.insert('.GenerateSubGroup()');window.editor.focus()" rel="tooltip"
        data-placement="left"
        data-original-title="[x1,x2,...] = GF(p<sup>2</sup>)/GF(p<sup>2</sup>)<sup>k</sup> <br/>Допустимые значения: k - модуль n, по которому ультипликативный порядок числа p равен 2">Вычисление
        фактор-группы GF(p<sup>2</sup>)/GF(p<sup>2</sup>)<sup>k</sup></a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    EC(GF(p<sup>2</sup>))
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление эллиптической кривой над GF(p<sup>2</sup>) вида Y<sup>2</sup> = X<sup>3</sup> + <em>a</em>X + <em>b</em></strong><br/>Аргументы: коэффициенты a,b из GF(p<sup>2</sup>)"
        onclick="window.editor.insert('IntegerBinomEllipticCurve()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        кривой</a></li>
    <li><a href="#" rel="tooltip" data-placement="left"
        data-original-title="<strong>Объявление точки эллиптической кривой над GF(p<sup>2</sup>)</strong><br/>Аргументы: кривая"
        onclick="window.editor.insert('IntegerBinomEllipticPoint()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление
        точки</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Add()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3Y3)=(X1Y1)+(X2Y3) <br/>Допустимые значения:(X1Y1) (X2Y2)  в EC(GF(p<sup>2</sup>)) p - простоеA0-квадратичный вычет по модулю p">Сложение</a>
    </li>
    <li><a href="#"
        onclick="window.editor.insert('.Double()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3Y3)=2*(X1Y1) <br/>Допустимые значения:(X1Y1) в EC(GF(p<sup>2</sup>)) p - простое A0-квадратичный вычет по модулю p">Удвоение</a>
    </li>
    <li><a href="#"
        onclick="window.editor.insert('.Mul()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3Y3)=K*(X1Y1) <br/>Допустимые значения:(X1Y1) в EC(GF(p<sup>2</sup>)) K- натуралное p - простое A0-квадратичный вычет по модулю p">Умножение
        на константу</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.CreateFactorGroup()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="[x1,x2,...] = E(GF(p<sup>2</sup>))/kE(GF(p<sup>2</sup>)) <br/>Допустимые значения: p-простое A0-квадратичный вычет по модулю p K - модуль n по которому мультипликативный порядок числа p равен 2">Вычисление
        фактор-группы EC(GF(p<sup>2</sup>)/nEC(GF(p<sup>2</sup>))</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Distortion()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="((X3_10)(0Y3_2))=((-X1_10)(0Y1_1)) <br/>Допустимые значения: p-простое A0-квадратичный вычет по модулю p X1=(X_10)Y1=(Y1_10) ? EC(GF(p<sup>2</sup>))">Применение
        искажающего отображения</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.Generate()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="(X3Y3)=точка в EC(GF(p<sup>2</sup>)) <br/>Допустимые значения: p-простое A0-квадратичный вычет по модулю p">Взятие
        точки</a></li>
    <li><a href="#"
        onclick="window.editor.insert('.CreateSpinningGroup()');window.editor.selection.moveCursorLeft();window.editor.focus()"
        rel="tooltip" data-placement="left"
        data-original-title="Вычисление группы n-кручения E[n] <br/>Допустимые значения: p-простое A0-квадратичный вычет по модулю p, K - модуль n по которому мультипликативный порядок числа p равен 2">Вычисление
        группы n-кручения E[n]</a></li>
  </ul>
</div>
</div><div class="btn-toolbar">
<div class="btn-group">
  <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    Python
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <!--li><a href="#" rel="tooltip" data-placement="right" data-original-title="<strong>Объявление нового числа</strong><br/>Аргументы: строка или число" onclick="window.editor.insert('Integer()');window.editor.selection.moveCursorLeft();window.editor.focus()">Объявление</a></li-->
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="Генерация ненулевого элемента в Z<sub>N</sub><br/>Аргументы: N в Z"
        onclick="window.editor.insert('aAl.generate()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        в Z<sub>N</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1 = -A1</strong><br/>Аргументы: A1 в Z"
        onclick="window.editor.insert('aAl.negate()');window.editor.selection.moveCursorLeft();window.editor.focus()">Отрицание
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1+A2</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.add()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1+A2(mod n)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.modAdd()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1+A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое"
        onclick="window.editor.insert('aAl.modAddInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение
        в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1-A2</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.sub()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1-A2(mod n)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.modSub()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1-A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое"
        onclick="window.editor.insert('aAl.subInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание
        в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1*A2</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.mul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1*A2(mod n)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.modMul()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1*A2(mod p)</strong><br/>Аргументы: A1, A2 в Z, p-простое"
        onclick="window.editor.insert('aAl.mulInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение
        в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=[A1/A2] mod n=0;B2=A1*A2<sup>-1</sup></strong><br/>Аргументы: A1, A2 в Z, A2 не равно 0"
        onclick="window.editor.insert('aAl.div()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление
        и деление с остатком в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1<sup>A2</sup></strong><br/>Аргументы: A1, A2 в Z, A2 &gt;= 0"
        onclick="window.editor.insert('aAl.power()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1<sup>A2</sup>(mod n)</strong><br/>Аргументы: A1, A2 в Z, A2 &gt;= 0"
        onclick="window.editor.insert('aAl.modPow()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1<sup>A2</sup>(mod p)</strong><br/>Аргументы: A1, A2 в Z, A2 &gt;= 0, p-простое"
        onclick="window.editor.insert('aAl.powInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение
        в степепь в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=[sqrt(A1)]</strong><br/>Аргументы: A1 в Z"
        onclick="window.editor.insert('aAl.sqrt()');window.editor.selection.moveCursorLeft();window.editor.focus()">Взятие
        целой части квадратного корня в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=sqrt(A1)(mod p)</strong><br/>Аргументы: A1 в Z, p-простое"
        onclick="window.editor.insert('aAl.modSqrt()');window.editor.selection.moveCursorLeft();window.editor.focus()">Взятие
        квадратного корня в F<sub>p</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=НОД(A1,A2)</strong><br/>Аргументы: A1, A2 в Z, A1 или A2 не равны 0"
        onclick="window.editor.insert('aAl.euclid()');window.editor.selection.moveCursorLeft();window.editor.focus()">НОД
        в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Решение уравнения A1*x+A2*y=GCD(A1,A2), найденные корни:  B1=x B2=y</strong><br/>Аргументы: A1, A2 в Z, A1 или A2 не равны 0"
        onclick="window.editor.insert('aAl.exEuclid()');window.editor.selection.moveCursorLeft();window.editor.focus()">Расширенный
        алгоритм Евклида в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod n). Аргументы: A1 и p взаимно просты</strong><br/>G(n), иначе B1=false. Аргументы: A1 в Z, A1 не равны 0"
        onclick="window.editor.insert('aAl.inverse()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в Z<sub>n</sub>*</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=A1<sup>-1</sup>(mod p). Аргументы: p-простое</strong><br/>G(p), иначе B1=false. <br/>Допустимые значения; A1 в Z, A1 не равны 0, p - простое"
        onclick="window.editor.insert('aAl.inverseInFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение
        в F<sub>p</sub>*</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=Legandre(A1,A2)</strong><br/>Аргументы: A2 - простое<br/>Результат: число(-1, 0 или 1)"
        onclick="window.editor.insert('aAl.legendre()');window.editor.selection.moveCursorLeft();window.editor.focus()">Символ
        Лежандра</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=Jacobi(A1/A2)</strong><br/>Аргументы: A1, A2 в Z, A2 &gt; 0<br/>Результат: число(-1, 0 или 1)"
        onclick="window.editor.insert('aAl.jacobySymbol()');window.editor.selection.moveCursorLeft();window.editor.focus()">Символ
        Якоби</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Тест простоты(Миллера-Рабина). B1=IsPrime(A1). B1=true если A1 - вероят-</strong><br/>-ностно простое, иначе B1=false. Аргументы: A1 &gt; 0"
        onclick="window.editor.insert('aAl.IsPrime()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Миллера-Рабина</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Взятие случайного вероятно простого числа. B1=GeneratePrime(A1).</strong><br/>Аргументы: 0 &lt; A1 &lt; 1024, A1 длина простого числа в битах"
        onclick="window.editor.insert('aAl.generatePrime()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        вероятностно простого числа</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=true если A1 - образующий элемент</strong><br/>Аргументы: p - простое, A1 в Fp"
        onclick="window.editor.insert('aAl.IsGenerator()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        образующего элемента в Fp*</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Тест простоты(Люка).</strong><br/>B1=IsPrime(n).B1=true если n - простое, иначе B1=false. Аргументы: n - нечетно"
        onclick="window.editor.insert('aAl.modifiedTestLuka()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Люка</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Тест простоты(Поклингтона)</strong><br/>B1=IsPrime(n).B1=true если n - простое, иначе B1=false. Аргументы: n - нечетно"
        onclick="window.editor.insert('aAl.testPoklingtona()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        простоты Поклингтона</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=НОК(A1,A2)</strong><br/>Аргументы: A1, A2 в Z"
        onclick="window.editor.insert('aAl.sCM()');window.editor.selection.moveCursorLeft();window.editor.focus()">НОК в
        Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>B1=true если A1 - образующий элемент</strong><br/>Аргументы: модуль в Zn*, элемент в Zn*, разложение порядка группы, порядок поля"
        onclick="window.editor.insert('aAl.IsGenerator()');window.editor.selection.moveCursorLeft();window.editor.focus()">Тест
        образующего элемента</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Взятие достоверного простого элемента из Z<sub>n</sub>. B1=GeneratePrime(module,разложение n-1)</strong><br/>Аргументы: n &gt;= 1"
        onclick="window.editor.insert('aAl.generatePrime()');window.editor.selection.moveCursorLeft();window.editor.focus()">Генерация
        достоверного простого числа в Z<sub>n</sub></a></li>
    <li><a href="#" rel="tooltip" data-placement="right" data-original-title="Вставить код модуля aAl"
        onclick="show_aAl()">Использование функций AAL посредством Python</a></li>
  </ul>
</div>
<div class="btn-group">
  <a class="btn btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    Universal
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Z" onclick="window.editor.insert('Uni.addZ()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в кольце Z</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Zn, Uni.n в N" onclick="window.editor.insert('Uni.addZn()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в кольце Zn</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Fp, Uni.p-простое число " onclick="window.editor.insert('Uni.addFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в поле Fp</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Z" onclick="window.editor.insert('Uni.subZ()');window.editor.selection.moveCursorLeft();window.editor.focus()">Разность в кольце Z</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1, A2 в Zn, Uni.n в N" onclick="window.editor.insert('Uni.subZn()');window.editor.selection.moveCursorLeft();window.editor.focus()">Разность в кольце Zn</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Fp, Uni.p-простое число" onclick="window.editor.insert('Uni.subFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Разность в поле Fp</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1,A2 в Z" onclick="window.editor.insert('Uni.mulZ()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в кольце Z</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1, A2 в Zn, Uni.n в Z" onclick="window.editor.insert('Uni.mulZn()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в кольце Zn</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1,A2 в Fp, Uni.p-простое число" onclick="window.editor.insert('Uni.mulFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в поле Fp</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B1=A1\\A2, B2=A1%A2. B1,B2,A1,A2 в Z[X],A2&ne;0." onclick="window.editor.insert('Uni.divZ()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление с остатком в кольце Z</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="Нахождение корней B1=X,B2=Y,  уравнения A1*X+A2*Y=НОД(A1,A2) и числа B3=НОД(A1,A2). B1,B2,B3,A1,A2 в Z, A1*A2 не равно 0." onclick="window.editor.insert('Uni.EuclidZ()');window.editor.selection.moveCursorLeft();window.editor.focus()">Расширенный алгоритм Евклида в кольце Z</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^(-1). B,A в Fn, B*A=1, Uni.n в N" onclick="window.editor.insert('');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение в кольце Zn</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^(-1). B,A в Fp, A не равно 0, Uni.p-простое число" onclick="window.editor.insert('Uni.invFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение в поле Fp</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A,D в N+" onclick="window.editor.insert('Uni.powerZ()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в кольце Z</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A в Zn, D в Z+, Uni.n в Z" onclick="window.editor.insert('Uni.powerZn()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в кольце Zn</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A в Fp, D в Z+, Uni.p-простое число" onclick="window.editor.insert('Uni.powerFp()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в поле Fp</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Z[X]" onclick="window.editor.insert('Uni.addZX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в кольце Z[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Z[X], Uni.n в N" onclick="window.editor.insert('Uni.addZnX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в кольце Zn[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Fp[X], Uni.p-простое число" onclick="window.editor.insert('Uni.addFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Z[X]" onclick="window.editor.insert('Uni.subZX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание в кольце Z[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Zn[X],Uni.n в N" onclick="window.editor.insert('Uni.subZnX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание в кольце Zn[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Fp[X], Uni.p-простое число" onclick="window.editor.insert('Uni.subFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=С*A. С в Z, B,A в Z[X]" onclick="window.editor.insert('Uni.smulZX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение на скаляр в кольце Z[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=С*A. С в Zn, B,A в Zn[X], Uni.n в N" onclick="window.editor.insert('Uni.smulZnX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение на скаляр в кольце Zn[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=С*A. С в Fp, B,A в Fp[X], Uni.p-простое число " onclick="window.editor.insert('Uni.smulFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение на скаляр в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1,A2 в Z[X]" onclick="window.editor.insert('Uni.mulZX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в кольце Z[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1,A2 в Zn[X], Uni.n в Z" onclick="window.editor.insert('Uni.mulZnX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в кольце Zn[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1,A2 в Fp[X], Uni.p-простое число " onclick="window.editor.insert('Uni.mulFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A в Z[X], D в Z+" onclick="window.editor.insert('Uni.powerZX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в кольце Z[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A в Zn[X], D в Z+, Uni.n в Z" onclick="window.editor.insert('Uni.powerZnX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в кольце Zn[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A в Fp[X], D в Z+, Uni.p-простое число" onclick="window.editor.insert('Uni.powerFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B1=A1\\A2, B2=A1%A2 B1,B2,A1,A2 в Fp[X], A2&ne;[0] Uni.p-простое число" onclick="window.editor.insert('Uni.divFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление с остатком в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="Нахождение корней B1=X,B2=Y,  уравнения A1*X+A2*Y=НОД(A1,A2) и многочлена B3=НОД(A1,A2) при A1*A2 не равном [0]. B1,B2,B3,A1,A2 в Fp[Z], A1*A2 &ne; [0], Uni.p-простое число" onclick="window.editor.insert('Uni.EuclidFpX()');window.editor.selection.moveCursorLeft();window.editor.focus()">Расширенный алгоритм Евклида в кольце Fp[X]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B1=A1+A2. B1,A1,A2 в Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f в Fp[X]." onclick="window.editor.insert('Uni.addFpl()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в поле Fp[X]_f(x)=Fpl</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B1=A1-A2. B1,A1,A2 в Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f в Fp[X]." onclick="window.editor.insert('Uni.subFpl()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание в поле Fp[X]_f(x)=Fpl</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. A1&isin;Fp[X], B,A2&isin;Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.smulFpl()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение на скаляр в поле Fp[X]_f(x)=Fpl</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B, A1, A2 в Fp[X]_f, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.mulFpl()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в поле Fp[X]_f(x)=Fpl</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^K. B, A в Fp[X]_f, K в N, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.powerFpl()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в поле Fp[X]_f(x)=Fpl</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^(-1).   B, A в Fp[X]_f, A&ne;0, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.invFpl()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение поле Fp[X]_f(x)=Fpl</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Fp^l[Y], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.addFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в кольце Fp^l[Y]=FplY</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Fp^l[Y], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.subFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание в кольце Fp^l[Y]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A*С. A в Fp^l[Y], C в Fp^l, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.smulFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение на скаляр в кольце Fp^l[Y]=FplY</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B1=A1//A2. B1,B2,A1,A2 в Fp^l[Y],A2 не равно [[0]], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]. " onclick="window.editor.insert('Uni.divFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Деление c остатком в кольце Fp^l[Y] =FplY</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2. B,A1,A2 в Fp^l[Y], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.mulFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в кольце Fp^l[Y]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="Нахождение корней B1=X,B2=Y,  уравнения A1*X+A2*Y=НОД(A1,A2) и многочлена B3=НОД(A1,A2). B1,B2,B3,A1,A2 в Fp^l[Y], A1*A2 &ne; [[0]], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f в Fp[X]." onclick="window.editor.insert('Uni.EuclidFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Расширенный алгоритм Евклида в кольце Fp^l[Y]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1+A2. B,A1,A2 в Fpld, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X], Uni.d в N, Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]," onclick="window.editor.insert('Uni.addFpld()');window.editor.selection.moveCursorLeft();window.editor.focus()">Сложение в поле Fp^l[Y]_f(Y)=Fpld</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1-A2. B,A1,A2 в Fpld, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X], Uni.d в N, Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]," onclick="window.editor.insert('Uni.subFpld()');window.editor.selection.moveCursorLeft();window.editor.focus()">Вычитание в поле Fp^l[Y]_f(Y)=Fpld</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A*С. A в Fp^ld, C в Fp^l, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]" onclick="window.editor.insert('Uni.smulFpld()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение на скаляр в поле Fp^l[Y]_f(Y)=Fpld</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1*A2 Аргументы: B,A1,A2 в Fp^ld, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]" onclick="window.editor.insert('Uni.mulFpld()');window.editor.selection.moveCursorLeft();window.editor.focus()">Умножение в поле Fp^l[Y]f(Y)=Fp^ld</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^D. B,A в Fp^l[Y], D в Z+, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X]." onclick="window.editor.insert('Uni.powerFplY()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в кольце Fp^l[Y]</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A1^D. mod f(Y) Аргументы: A в Fp^ld, D в Z+, Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X]" onclick="window.editor.insert('Uni.powerFpld()');window.editor.selection.moveCursorLeft();window.editor.focus()">Возведение в степень в поле Fp^l[Y]f(Y)=Fp^ld</a></li>
        <li><a href="#" rel="tooltip" data-placement="right"
                data-original-title="B=A^(-1). B,A в Fp^ld, A не равно [[0]], Uni.p-простое число, Uni.l в N, Uni.f - примитивный многочлен степени l+1, f&isin;Fp[X], Uni.g- примитивный многочлен степени d+1, g&isin;Fpl[X] " onclick="window.editor.insert('Uni.invFpld()');window.editor.selection.moveCursorLeft();window.editor.focus()">Обращение в поле Fp^l[Y]_f(Y)=Fp^ld</a></li>

  </ul>
</div>

<div class="btn-group">
  <a class="btn btn btn-small dropdown-toggle" data-toggle="dropdown" href="#">
    Примеры
    <span class="caret"></span>
  </a>
  <ul class="dropdown-menu">
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Вычисление некоторых хешей</strong>"
        onclick="window.editor.insert('#Хеши в удобочитаемом шестнадцатеричном представлении байтов хеша\n\n#md5\nprint hashlib.md5(\'123\').hexdigest()\n#sha1\nprint hashlib.sha1(\'123\').hexdigest()\n#sha2 с разной длинной хешей\nprint hashlib.sha224(\'123\').hexdigest()\nprint hashlib.sha256(\'123\').hexdigest()\nprint hashlib.sha384(\'123\').hexdigest()\nprint hashlib.sha512(\'123\').hexdigest()\n\n#Для получения самого хеша применяется .digest()\nprint hashlib.md5(\'123\').digest()\n');window.editor.focus()">Некоторые
        хеш-фукции</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Сложение чисел двух чисел в Z</strong><br/>r=Integer()<br/>r.Add(Integer(111),Integer(22))"
        onclick="window.editor.insert('r=Integer()\nr.Add(Integer(111),Integer(222))\n');window.editor.focus()">Сложение
        чисел 111 и 22 в Z</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Нахождение НОД чисел 1071 и 462</strong><br/>r=Integer()<br/>r.Euclid(Integer(1071),Integer(462))"
        onclick="window.editor.insert('r=Integer()\nr.Euclid(Integer(1071),Integer(462))\n');window.editor.focus()">Нахождение
        НОД</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Нахождение НОД чисел 1071 и 462 расширенным алгоритмом Евклида</strong><br/>r=Integer()<br/>a=Integer()<br/>b=Integer()<br/>r.ExEuclid(Integer(1071),Integer(462),a,b)"
        onclick="window.editor.insert('r=Integer()\na=Integer()\nb=Integer()\nr.ExEuclid(Integer(1071),Integer(462),a,b)\n');window.editor.focus()">Нахождение
        НОД расшир. алг. Евклида</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Получить разложение числа 84 методом msieve</strong><br/>FactorizationAlgorithms(Integer(84)).MsieveDecomposition()"
        onclick="window.editor.insert('FactorizationAlgorithms(Integer(84)).MsieveDecomposition()\n');window.editor.focus()">Получить
        разложение msieve</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Объявление и сравнение двух многочленов над GF(2)</strong><br/>a = Polynom(&quot;1101001&quot;)<br/>b = Polynom(&quot;0 1 3 6&quot;,Dec)<br/>a.ToString()==b.ToString()"
        onclick="window.editor.insert('a = Polynom(&quot;1101001&quot;)\nb = Polynom(&quot;0 1 3 6&quot;,Dec)\na.ToString()==b.ToString()\n');window.editor.focus()">Cравнение
        многочленов над GF(2)</a></li>
    <li><a href="#" rel="tooltip" data-placement="right"
        data-original-title="<strong>Генерация точки эллиптической кривой</strong><br/>c=EllipticCurve(Integer(5),Integer(1),Integer(1))<br/>p=EllipticPoint(c)<br/>p.Generate()"
        onclick="window.editor.insert('c=EllipticCurve(Integer(5),Integer(1),Integer(1))\np=EllipticPoint(c)\np.Generate()\n');window.editor.focus()">Генерация
        точки эллип. кривой</a></li>
  </ul>
</div>
<script type="text/javascript">
  function show_aAl() {
    window.editor.setValue($.ajax({ url: '/assets/doc/aAl.py', async: false }).responseText);
    window.editor.selection.moveCursorTo(0, 0);
    window.editor.selection.clearSelection();
  }
  $("[rel=tooltip]").tooltip({ html: true });
  var sagecell = {};
  sagecell.kernels = [];

  function toggle_sage() {
    if (window.sess) {
      if (window.sess.kernel)
        window.sess.kernel.kill();
      window.sess = undefined;
      window.$post = $.post;
    }
    else
      if (window.require)
      require(['main'], main => { 
          if (main.install)
            window.sess = main.install();
          else  window.sess = 'install';
        });
      else window.sess = 'install';
  }

  function afterLoad() {
      if (window.sess === 'install') {
          require(['main'], main => { window.sess = main.install(); });
      }
  }
</script>