<div class="container">
    <ul class="nav nav-pills">
      <li><a href="/help/python">Язык Python</a></li>
      <li><a href="/help/aal">Библиотека AAL</a></li>
      <li class="active"><a href="/help/dev">Для разработчиков AAL</a></li>
    </ul>
    <div class="row sidebar" id="pythonhelp">
        <div class="span2">
        <ul class="nav nav-list well affix visible-desktop">
            <li class="nav-header">Разработка AAL</li>
            <li class="active">
            <a href="#build">Сборка</a>
            </li>
            <li class="">
              <a href="#interfaces">Привязки</a>
            </li>
            <li class="">
              <a href="#bindings">Приведение типов</a>
            </li>
        </ul>
    </div>
    <div class="span10" id="glossary-content">
      <h1>Инструкции по использованию и разработке библиотеки AAL</h1>
      <p>Это небольшое руководство должно по задумке автора поощрять пользователей самостоятельно разбираться с проблемами, возникающими при работе с библиотекой и по возможности их устронять.</p>
      <div class='section'>
        <div class='page-header'>
          <h2 id='build'>Сборка привязок для linux</h2>
        </div>
        <div class='section'>
          <p>
          Для работы с репозитарием библиотеки необходимо установить subversion 1.6.12, для сборки привязок должны быть установлены пакеты build-essential, swig, cmake, python-dev. Для сборки msieve потребуется libgmp3-dev, название пакета может отличаться. Ниже приведен список команд для сборки и тестирования библиотеки. Если сборка прошла успешно, в директории Bindings должны появиться файлы _AAL.so и AAL.py. Убедившись, что тесты проходят(aaltest.exe), можно подключать библиотеку из python командой <code>import AAL</code>.
          </p>
          <div class='section'>
            <h4>Сборка и тестирование библиотеки(стандартная)</h4>
            <pre>
            svn co http://svn2.assembla.com/svn/mpei_ask/MPEI_ASK
            cd MPEI_ASK/Bindings
            cmake .
            make
            ./aaltest.exe</pre>
          </div>
          <h4>Нестандартная сборка</h4>
          <p>Система сборки CMake проверяет наличие в системе необходимых компонентов, создает скрипт сборки и записывает необходимые макросы в файл <code>config.h</code>:</p>
          <ol>
            <li>Макрос <code>USE_MIRACL</code> устанавливается если для доступа к MIRACL используются функции sea_main, shoof_main, shoof2_main, modpol_main. В противном случае происходит вызов исполняемых файлов MIRACL через функции WinApi, то есть это работет только на Windows и в текущей папке должны находиться файлы sea.exe, schoof.exe, schoof2.exe, modpol.exe.</li>
            <li>Макрос <code>USE_MSIEVE</code> устанавливается если для доступа к msieve используется функция msieve_main. В противном случае происходит вызов исполняемого файла msieve.exe через функции WinApi.</li>
          </ol>
          <p>Вызов CMake с ключом -i позволяет указать значения переменных сборки. Если необходимо использовать выше перечисленные функции, следует включить соответствующие переменные используя этот ключ, либо изменив их стандартные значения в файле <code>CMakeLists.txt</code> и удалив кэш предыдущей сборки <code>CMakeCache.txt</code>. После чего команда <code>make</code> загрузит необходимые библиотеки, применит патчи, соберет и подключит их к проекту.</p>
          <p>Если при сборке исходников msieve на gcc возникает ошибка c предложением добавить ключ <code>-fPic</code>, то нужно сделать это в файле <code>src/msieve/Makefile</code> в переменную, например, WARN_FLAGS и повторить сборку. В MIRACL та же проблема решается добавлением ключа в файл <code>src/SMakeLists.txt</code> в строчку <code>add_definitions (-w)</code></p>
          <h4>Сборка в Windows</h4>
          В папке <code>Dev_Projects</code> находятся файлы проектов, которые позволят собрать привязки с вызовами внешних функций через WinApi. Нестандартная сборка возможна через CMake для Windows либо <a href="http://subversion.assembla.com/svn/mpei_ask/MPEI_ASK/Documentation/%d0%98%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d1%8f%20%d0%bf%d0%be%20%d1%81%d0%b1%d0%be%d1%80%d0%ba%d0%b5%20%d0%bf%d1%80%d0%b8%d0%b2%d1%8f%d0%b7%d0%be%d0%ba%20MPEI%20AAL.doc">вручную</a> 
        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='interfaces'>Интерфейсный файл</h2>
        </div>
        <div class='section'>
          <p>
          Для сборки привязок библиотеки к языку Python используется генератор интерфейсов SWIG. Он позволяет по описаниям функций C++ в заголовочных файлах постороить функции, вызывающие функции библиотеки, выполняя необходимые преобразования данных из типов данных python в типы данных библиотеки и обратно. Поведение SWIG при сборке описывается в файле <code>AAL.i</code>. Ниже приведен фрагмент, позволяющий привести разложения чисел из <code>std::vector&lt;AAL::DecompositionMember&gt;</code> к списку кортежей вида <code>(множитель, степень)</code>:
          </p>
          <div class='section'>
            <pre>
%%typemap(out) AAL::DecVector {
	AAL::DecVector vec=$1;
	$result = PyList_New(vec.size());
	for(int i = 0; i < vec.size(); i++) {
		PyList_SetItem($result, i, Py_BuildValue("(ss)", vec[i].getNumber().ToString().c_str(), vec[i].getDegree().ToString().c_str()));
	}
}</pre>
          </div>
          <p>
          Не для всех типов написаны преобразования. Эта работа требует определенного погружения в принципы работы интерпертатора и SWIG. Однако проделав эту работу можно значительно упростить работу с библиотекой в python.
          </p>
          
        </div>
      </div>
      <div class='section'>
        <div class='page-header'>
          <h2 id='bindings'>Приведение типов в python</h2>
        </div>
        <div class='section'>
          <p>
          Возникают ситуации, в которых происходит не совсем то, что ожидает пользователь и причина тому - приведение типов. Например для класса Polynom объявлено 2 конструктора: 
          </p>
          <div class='section'>
            <pre>
            Polynom(const std::string dataString, PolynomSystem system=BackBin);
            Polynom(const std::string dataString, bool in_degres, bool cancel = true);</pre>
          </div>
          <p>
          Однако при вызове <code>Polynom("0 1 3 6", True)</code> мы ожидаем, что вызовется второй, но <code>True</code> приводится к типу <code>int</code> и передается в качестве объекта перечисляемого типа <code>PolynomSystem</code> в первый конструктор. Чтобы вызвать второй конструктор нужно явно указывать 3й аргумент <code>cancel</code>. Это стоит учитывать при разработке функций.
          </p>
          
        </div>
      </div>
    </div>
    
</div>

%rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False
