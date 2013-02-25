<div class="container">
    <ul class="nav nav-pills">
      <li class="active">
        <a href="/help/python">Язык Python</a>
      </li>
      <li><a href="/help/aal">Библиотека AAL</a></li>
      <li><a href="/help/dev">Для разработчиков AAL</a></li>
    </ul>
    <div class="row sidebar" id="pythonhelp">
        <div class="span2">
        <ul class="nav nav-list well affix visible-desktop">
            <li class="nav-header">Язык Python</li>
            <li class="active">
            <a href="#lists">Списки</a>
            </li>
            <li class="">
            <a href="#slice">Обрезание списка</a>
            </li>
            <li class="">
            <a href="#tuples">Кортежи</a>
            </li>
            <li class="">
            <a href="#variables">Переменные</a>
            </li>
            <li class="">
            <a href="#functions">Функции</a>
            </li>
            <li class="">
            <a href="#comprehensions">Обход списка</a>
            </li>
            <li class="">
            <a href="#sets">Можества</a>
            </li>
            <li class="">
            <a href="#dictionaries">Словари</a>
            </li>
            <li class="">
            <a href="#strings">Строки</a>
            </li>
            <li class="">
            <a href="#length">Функция len()</a>
            </li>
            <li class="">
            <a href="#comment_single">Комментарии</a>
            </li>
            <li class="">
            <a href="#comment_multi">Ещё комментарии</a>
            </li>
            <li class="">
            <a href="#print_statement">Вывод</a>
            </li>
            <li class="">
            <a href="#range_statement">Функция range()</a>
            </li>
            <li class="">
            <a href="#for_loop">Цикл For</a>
            </li>
            <li class="">
            <a href="#while_loop">Цикл While</a>
            </li>
            <li class="">
            <a href="#str_func">Финкция str()</a>
            </li>
        </ul>
    </div>
    <div class="span10" id="glossary-content">
        <h1>Глоссарий Python</h1>
        <p>Это справочное руководство делает общий обзор по языку программирования Python. Целью руководства не является полное ознакомление со всеми возможностями языка, а лишь дает новичкам в программировании на Python отправную точку для дальнейшей работы. Для более подробного изучения рекомендуем использовать <a href="http://docs.python.org/">официальную документацию</a>.</p>
        <div class='section'>
        <div class='page-header'>
        <h2 id='lists'>Списки</h2>
        </div>
        <div class='section'>
        <p>
        Список - это контейнер, хранящий объекты произвольного типа в определенном порядке.
        То есть как массив в С, только элементы могут быть разного типа. Список можно изменять  после создания(append -добавление элемента в конец).
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> x = [1, 2, 3, 4]&#x000A;>> y = ['spam', 'eggs']&#x000A;>> x&#x000A;[1, 2, 3, 4]&#x000A;>> y&#x000A;['spam','eggs']&#x000A;&#x000A;>> y.append('mash')&#x000A;>> y&#x000A;['spam', 'eggs', 'mash']&#x000A;&#x000A;>> y += ['beans']&#x000A;>> y&#x000A;['spam', 'eggs', 'mash', 'beans']</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='slice'>Образание списка</h2>
        </div>
        <div class='section'>
        <p>
        Через специальное обозначение можно "вырезать" часть списка, указав начальный и конечный индекс нужной части списка. Оставляя первый индекс пустым, мы начинаем с начала списка, оставляя второй индекс пустым, идем до конца списка. Использование отрицательного индекса означает "(n-1) от конца". То есть индекс -1 будет брать последний элемент, -2 - предпоследний. Обрезание всегда создает новый список.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> # Specifying a beginning and end:&#x000A;>> x = [1, 2, 3, 4]&#x000A;>> x[2:3]&#x000A;[3]&#x000A;&#x000A;>> # Specifying start at the beginning and end at the second element&#x000A;>> x[:2]&#x000A;[1, 2]&#x000A;&#x000A;>> # Specifying start at the next to last element and go to the end&#x000A;>> x[-2:]&#x000A;[3, 4]&#x000A;&#x000A;>> # Specifying start at the beginning and go to the next to last element&#x000A;>> x[:-1]&#x000A;[1, 2, 3]&#x000A;&#x000A;>> # Specifying a step argument returns every n-th item&#x000A;>> y = [1, 2, 3, 4, 5, 6, 7, 8]&#x000A;>> y[::2]&#x000A;[1, 3, 5, 7]&#x000A;&#x000A;>> # Return a reversed version of the list ( or string )&#x000A;>> x[::-1]&#x000A;[4, 3, 2, 1]&#x000A;&#x000A;>> # String reverse&#x000A;>> my_string = "Aloha"&#x000A;>> my_string[::-1]&#x000A;"aholA"</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='tuples'>Кортежи</h2>
        </div>
        <div class='section'>
        <p>
        Кортеж -  это контейнер, такой же как список, но его нельзя изменять после создания.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> x = (1, 2, 3, 4)&#x000A;>> y = ('spam', 'eggs')&#x000A;&#x000A;>> my_list = [1,2,3,4]&#x000A;>> my_tuple = tuple(my_list)&#x000A;>> my_tuple&#x000A;(1, 2, 3, 4)</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='variables'>Переменные</h2>
        </div>
        <div class='section'>
        <p>
        Присваивание происходит оператором '=', который не стоит путать с оператором равенства '=='. Переменная может быть любого типа: список, словарь, функция, объект. Используется динамическая типизация.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> x = 12&#x000A;>> x&#x000A;12</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='functions'>Функции</h2>
        </div>
        <div class='section'>
        <p>
        Функцию можно объявить, используя конструкцию: def function_name(variable):
        Функции могут возвращать любые значения, могут не возращать ничего. Также можно объявить вложенную функцию(внутри другой функции).
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>def add_two(a, b):&#x000A;  c = a + b&#x000A;  return c&#x000A;&#x000A;# or without the interim assignment to c&#x000A;def add_two(a, b):&#x000A;  return a + b</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='comprehensions'>Обход списка</h2>
        </div>
        <div class='section'>
        <p>
        Удобный способ обхода списка:
        <code>[item for item in List if Condition]</code>
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> x_list = [1,2,3,4,5,6,7]&#x000A;>> even_list = [num for num in x_list if (num % 2 == 0)]&#x000A;>> even_list&#x000A;[2,4,6]&#x000A;&#x000A;>> m_list = ['AB', 'AC', 'DA', 'FG', 'LB']&#x000A;>> A_list = [duo for duo in m_list if ('A' in duo)]&#x000A;>> A_list&#x000A;['AB', 'AC', 'DA']</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='sets'>Множества</h2>
        </div>
        <div class='section'>
        <p>
        Множество - это контейнер уникальных неупорядоченных элементов. Можно преобразовать некоторые контейнеры в множества.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> dup_list = [1,1,2,2,2,3,4,55,5,5,6,7,8,8]&#x000A;>> set_from_list = set(dup_list)&#x000A;>> set_from_list&#x000A;{1, 2, 3, 4, 5, 6, 7, 8, 55}</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='dictionaries'>Словари</h2>
        </div>
        <div class='section'>
        <p>
        Словарь, как и множество, хранит уникальные неупорядоченные элементы. Разница заключается в том, что доступ к элементам осуществляется по ключу;
        ключом может быть строка, число или кортеж (любой хэшируемый объект), элемнты словаря произвольые.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> my_dict = {}&#x000A;>> content_of_value1 = "abcd"&#x000A;>> content_of_value2 = "wxyz"&#x000A;>> my_dict.update({"key_name1":content_of_value1})&#x000A;>> my_dict.update({"key_name2":content_of_value2})&#x000A;>> my_dict&#x000A;{'key_name1':"abcd", 'key_name2':"wxyz"}&#x000A;>> my_dict.get("key_name2")&#x000A;"wxyz"</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='strings'>Строки</h2>
        </div>
        <div class='section'>
        <p>
        Строки можно использовать как список символов. Также доступно множество встроенных функций для поиска и изменения строк.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> my_string1 = "this is a valid string"&#x000A;>> my_string2 = 'this is also a valid string'&#x000A;>> my_string3 = 'this is' + ' ' + 'also' + ' ' + 'a string'&#x000A;>> my_string3&#x000A;"this is also a string"</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='length'>Функция len()</h2>
        </div>
        <div class='section'>
        <p>
        Используя len(some_object) можно получить количество элементов в контейнере.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> my_list = [0,4,5,2,3,4,5]&#x000A;>> len(my_list)&#x000A;7&#x000A;&#x000A;>> my_string = 'abcdef'&#x000A;>> len(my_string)&#x000A;6</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='comment_single'>Однострочные комментрании</h2>
        </div>
        <div class='section'>
        <p>
        Комментирование кода осуществляется посредством <code>#</code>.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code># this is a single line comment.</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='comment_multi'>Многострочные комментарии</h2>
        </div>
        <div class='section'>
        <p>
        Использйте следующую конструкцию, если нужно закомментировать несколько строк.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>'''&#x000A;this is&#x000A;a multi-line&#x000A;comment, i am handy for commenting out whole&#x000A;chunks of code very fast&#x000A;'''</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='print_statement'>Вывод</h2>
        </div>
        <div class='section'>
        <p>
        Функция print выводит результат работы программы. Допускается бесскобочный вызов.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> # this will work in all modern versions of Python&#x000A;>> print("some text here")&#x000A;"some text here"&#x000A;&#x000A;>> # but this only works in Python versions lower than 3.x&#x000A;>> print "some text here too"&#x000A;"some text here too"</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='range_statement'>Функция range()</h2>
        </div>
        <div class='section'>
        <p>
        Функция range() возвращает список чисел в пределах заданного интервала.
        <pre class="prettyprint"><code>Аргументами могут быть:&#x000A;range(конец)&#x000A;range(начало, конец)&#x000A;range(начало, конец, шаг)</code></pre>
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> range(4)&#x000A;[0, 1, 2, 3]&#x000A;&#x000A;>> [i for i in range(2, 8)]&#x000A;[2, 3, 4, 5, 6, 7]&#x000A;&#x000A;>> [i for i in range(2, 13, 3)]&#x000A;[2, 5, 8, 11]</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='for_loop'>Цикл For</h2>
        </div>
        <div class='section'>
        <p>
        Цикл for может обходить любой контейнер(обратите внимание на двоеточие и отступы).
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> for i in range(0, 3):&#x000A;>>     print(i*2)&#x000A;0&#x000A;2&#x000A;4&#x000A;&#x000A;>> m_list = ["Sir", "Lancelot", "Coconuts"]&#x000A;>> for item in m_list:&#x000A;>>     print(item)&#x000A;Sir&#x000A;Lancelot&#x000A;Coconuts&#x000A;&#x000A;>> w_string = "Swift"&#x000A;>> for letter in w_string:&#x000A;>>     print(letter)&#x000A;S&#x000A;w&#x000A;i&#x000A;f&#x000A;t</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='while_loop'>Цикл While</h2>
        </div>
        <div class='section'>
        <p>
        Цикл While выполняется, пока справедливо определенное условие.
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> looping_needed = True&#x000A;>>&#x000A;>> while looping_needed:&#x000A;>>     # some operation on data&#x000A;>>     if condition:&#x000A;>>          looping_needed = False</code></pre>
        </div>
        </div>

        </div>
        <div class='section'>
        <div class='page-header'>
        <h2 id='str_func'>Функция str()</h2>
        </div>
        <div class='section'>
        <p>
        Используя str() можно предстваить содержимое переменной строкой, если ее тип позволяет это сделать. str() не изменяет значение. Для вывода результата операций на консоль интерпретатор использует похожую низкоуровневую функциию repr().
        </p>
        <div class='section'>
        <h4>Пример</h4>
        <pre class="prettyprint"><code>>> # such features can be useful for concatenating strings&#x000A;>> my_var = 123&#x000A;>> my_var&#x000A;123&#x000A;&#x000A;>> str(my_var)&#x000A;'123'&#x000A;&#x000A;>> my_booking = "DB Airlines Flight " + str(my_var)&#x000A;>> my_booking&#x000A;'DB Airlines Flight 123'</code></pre>
        </div>
        </div>


            </div>
        </div>
    </div>
    
</div>

%rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False
