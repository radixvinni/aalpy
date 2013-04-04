<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="container">
<ul class="nav nav-pills">
<li><a href="/help/python">Язык Python</a></li>
<li><a href="/help/aal">Библиотека AAL</a></li>
<li class="active"><a href="/help/class">Список классов AAL</a></li>
<li><a href="/help/dev">Для разработчиков AAL</a></li>
</ul>
<div class="accordion" id="accordion">
<h1>Список классов AAL</h1>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::Converter class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#Converter">Converter</a>
</div>
<div id="Converter" class="accordion-body collapse"><div class="accordion-inner">
<h4>class Converter(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="Converter-__init__"><strong>__init__</strong></a>(self)</dt>
<dd><tt><a href="#Converter-__init__">__init__</a>(AAL::<a href="#Converter">Converter</a> self) -&gt; <a href="#Converter">Converter</a></tt></dd>
</dl>
<dl><dt>
<a name="Converter-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="Converter-FactorToString"><strong>FactorToString</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-FactorToString">FactorToString</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> factor, std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt; &gt; &gt; &amp; subGroups) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-FactorToTexString"><strong>FactorToTexString</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-FactorToTexString">FactorToTexString</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> factor, std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt; &gt; &gt; &amp; subGroups) -&gt; std::string<br><a href="#Converter-FactorToTexString">FactorToTexString</a>(std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt; &gt; &gt; &amp; factor) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-MultitudeToString"><strong>MultitudeToString</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-MultitudeToString">MultitudeToString</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> multitude) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-MultitudeToTexString"><strong>MultitudeToTexString</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-MultitudeToTexString">MultitudeToTexString</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> multitude) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-ToInteger"><strong>ToInteger</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-ToInteger">ToInteger</a>(std::string const &amp; dataString, AAL::NumericSystem system=Dec) -&gt; <a href="#Integer">Integer</a><br><a href="#Converter-ToInteger">ToInteger</a>(std::string const &amp; dataString) -&gt; <a href="#Integer">Integer</a><br><a href="#Converter-ToInteger">ToInteger</a>(<a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Integer">Integer</a><br><a href="#Converter-ToInteger">ToInteger</a>(<a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#Integer">Integer</a><br><a href="#Converter-ToInteger">ToInteger</a>(std::string &amp; polynom) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-ToPolynom"><strong>ToPolynom</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-ToPolynom">ToPolynom</a>(std::string const &amp; dataString, AAL::PolynomSystem system=BackBin) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Converter-ToPolynom">ToPolynom</a>(std::string const &amp; dataString) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Converter-ToPolynom">ToPolynom</a>(<a href="#Integer">Integer</a> integer) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-ToPolynomGF3"><strong>ToPolynomGF3</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-ToPolynomGF3">ToPolynomGF3</a>(<a href="#Integer">Integer</a> integer) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Converter-ToString"><strong>ToString</strong></a>(*args)</dt>
<dd><tt><a href="#Converter-ToString">ToString</a>(<a href="#Integer">Integer</a> integer, AAL::NumericSystem system=Dec) -&gt; std::string<br><a href="#Converter-ToString">ToString</a>(<a href="#Integer">Integer</a> integer) -&gt; std::string<br><a href="#Converter-ToString">ToString</a>(<a href="#Polynom">Polynom</a> polynom, AAL::PolynomSystem system=BackBin) -&gt; std::string<br><a href="#Converter-ToString">ToString</a>(<a href="#Polynom">Polynom</a> polynom) -&gt; std::string</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_Converter&gt;</dt>
<dd><tt>delete_Converter(<a href="#Converter">Converter</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'FactorToString': &lt;function &lt;lambda&gt;&gt;, 'FactorToTexString': &lt;function &lt;lambda&gt;&gt;, 'MultitudeToString': &lt;function &lt;lambda&gt;&gt;, 'MultitudeToTexString': &lt;function &lt;lambda&gt;&gt;, 'ToInteger': &lt;function &lt;lambda&gt;&gt;, 'ToPolynom': &lt;function &lt;lambda&gt;&gt;, 'ToPolynomGF3': &lt;function &lt;lambda&gt;&gt;, 'ToString': &lt;function &lt;lambda&gt;&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::DecompositionManager class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#DecompositionManager">DecompositionManager</a>
</div>
<div id="DecompositionManager" class="accordion-body collapse"><div class="accordion-inner">
<h4>class DecompositionManager(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="DecompositionManager-FindBase"><strong>FindBase</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-FindBase">FindBase</a>(<a href="#DecompositionManager">DecompositionManager</a> self, <a href="#Integer">Integer</a> num) -&gt; <a href="#IntVector">IntVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-TestComposit"><strong>TestComposit</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-TestComposit">TestComposit</a>(<a href="#DecompositionManager">DecompositionManager</a> self, std::string addres, AAL::uint degree) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl><dt>
<a name="DecompositionManager-__init__"><strong>__init__</strong></a>(self, *args, **kwargs)</dt></dl>
<dl><dt>
<a name="DecompositionManager-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="DecompositionManager-getCheckedDecompositionFromFile"><strong>getCheckedDecompositionFromFile</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getCheckedDecompositionFromFile">getCheckedDecompositionFromFile</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, AAL::uint maxDegree, std::string fileName) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getDecomposition"><strong>getDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getDecomposition">getDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, <a href="#Integer">Integer</a> number, bool * composit) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getDecompositionFromDB"><strong>getDecompositionFromDB</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getDecompositionFromDB">getDecompositionFromDB</a>(<a href="#DecompositionManager">DecompositionManager</a> self, <a href="#Integer">Integer</a> number, bool * composit) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getDecompositionFromFile"><strong>getDecompositionFromFile</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getDecompositionFromFile">getDecompositionFromFile</a>(<a href="#DecompositionManager">DecompositionManager</a> self, std::string str_addres, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getElevenDegreeDecomposition"><strong>getElevenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getElevenDegreeDecomposition">getElevenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getEvenLargeTwoDegreeWithOneDecomposition"><strong>getEvenLargeTwoDegreeWithOneDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getEvenLargeTwoDegreeWithOneDecomposition">getEvenLargeTwoDegreeWithOneDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getEvenTwoDegreeWithOneDecomposition"><strong>getEvenTwoDegreeWithOneDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getEvenTwoDegreeWithOneDecomposition">getEvenTwoDegreeWithOneDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getFiveDegreeDecomposition"><strong>getFiveDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getFiveDegreeDecomposition">getFiveDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getOddTenDegreeDecomposition"><strong>getOddTenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getOddTenDegreeDecomposition">getOddTenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getOddTwoDegreeDecomposition"><strong>getOddTwoDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getOddTwoDegreeDecomposition">getOddTwoDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getPrimeDecomposition"><strong>getPrimeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getPrimeDecomposition">getPrimeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint number) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSevenDegreeDecomposition"><strong>getSevenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSevenDegreeDecomposition">getSevenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSixDegreeDecomposition"><strong>getSixDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSixDegreeDecomposition">getSixDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialDecomposition"><strong>getSpecialDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialDecomposition">getSpecialDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vectorWithOne, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vectorWithoutOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialElevenDegreeDecomposition"><strong>getSpecialElevenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialElevenDegreeDecomposition">getSpecialElevenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialEvenLargeTwoDegreeWithOneDecomposition"><strong>getSpecialEvenLargeTwoDegreeWithOneDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialEvenLargeTwoDegreeWithOneDecomposition">getSpecialEvenLargeTwoDegreeWithOneDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialEvenTwoDegreeWithOneDecomposition"><strong>getSpecialEvenTwoDegreeWithOneDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialEvenTwoDegreeWithOneDecomposition">getSpecialEvenTwoDegreeWithOneDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialFiveDegreeDecomposition"><strong>getSpecialFiveDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialFiveDegreeDecomposition">getSpecialFiveDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialOddTenDegreeDecomposition"><strong>getSpecialOddTenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialOddTenDegreeDecomposition">getSpecialOddTenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialOddTwoDegreeDecomposition"><strong>getSpecialOddTwoDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialOddTwoDegreeDecomposition">getSpecialOddTwoDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialSevenDegreeDecomposition"><strong>getSpecialSevenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialSevenDegreeDecomposition">getSpecialSevenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialSixDegreeDecomposition"><strong>getSpecialSixDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialSixDegreeDecomposition">getSpecialSixDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialTenDegreeDecomposition"><strong>getSpecialTenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialTenDegreeDecomposition">getSpecialTenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialThreeDegreeDecomposition"><strong>getSpecialThreeDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialThreeDegreeDecomposition">getSpecialThreeDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialTwelveDegreeDecomposition"><strong>getSpecialTwelveDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialTwelveDegreeDecomposition">getSpecialTwelveDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getSpecialTwoDegreeDecomposition"><strong>getSpecialTwoDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getSpecialTwoDegreeDecomposition">getSpecialTwoDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getTenDegreeDecomposition"><strong>getTenDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getTenDegreeDecomposition">getTenDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getThreeDegreeDecomposition"><strong>getThreeDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getThreeDegreeDecomposition">getThreeDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getTwelveDegreeDecomposition"><strong>getTwelveDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getTwelveDegreeDecomposition">getTwelveDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-getTwoDegreeDecomposition"><strong>getTwoDegreeDecomposition</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-getTwoDegreeDecomposition">getTwoDegreeDecomposition</a>(<a href="#DecompositionManager">DecompositionManager</a> self, AAL::uint degree, bool withOne) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-hevComposit"><strong>hevComposit</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-hevComposit">hevComposit</a>(<a href="#DecompositionManager">DecompositionManager</a> self, unsigned int [] CompositeDegrees, AAL::uint n, AAL::uint degree) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-logTime"><strong>logTime</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionManager-logTime">logTime</a>(<a href="#DecompositionManager">DecompositionManager</a> self, FILE * f, int checkpoint)</tt></dd>
</dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="DecompositionManager-FindEqualNumberInTheDecompositionsDB"><strong>FindEqualNumberInTheDecompositionsDB</strong></a>(*args)</dt>
<dd><tt><a href="#DecompositionManager-FindEqualNumberInTheDecompositionsDB">FindEqualNumberInTheDecompositionsDB</a>(<a href="#Integer">Integer</a> nmbr) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-Instance"><strong>Instance</strong></a>()</dt>
<dd><tt><a href="#DecompositionManager-Instance">Instance</a>() -&gt; <a href="#DecompositionManager">DecompositionManager</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionManager-NumberGenerator"><strong>NumberGenerator</strong></a>(*args)</dt>
<dd><tt><a href="#DecompositionManager-NumberGenerator">NumberGenerator</a>(std::string addres, std::string str_addres)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>EvenLargeTwoWithOneDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_EvenLargeTwoWithOneDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>EvenLargeTwoWithOneDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_EvenLargeTwoWithOneDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [181]</tt></dd>
</dl>
<dl>
<dt><strong>EvenTwoWithOneDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_EvenTwoWithOneDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>EvenTwoWithOneDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_EvenTwoWithOneDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [48]</tt></dd>
</dl>
<dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>withOneElevenDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withOneElevenDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneElevenDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneElevenDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [13]</tt></dd>
</dl>
<dl>
<dt><strong>withOneFiveDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withOneFiveDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneFiveDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneFiveDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [27]</tt></dd>
</dl>
<dl>
<dt><strong>withOneOddTenDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withOneOddTenDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneOddTenDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneOddTenDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [57]</tt></dd>
</dl>
<dl>
<dt><strong>withOneOddTwoDecompositionCompositCount</strong></dt>
<dd><tt>DecompositionManager_withOneOddTwoDecompositionCompositCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneOddTwoDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneOddTwoDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [129]</tt></dd>
</dl>
<dl>
<dt><strong>withOneSevenDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withOneSevenDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneSevenDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneSevenDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [19]</tt></dd>
</dl>
<dl>
<dt><strong>withOneSixDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withOneSixDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneSixDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneSixDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [25]</tt></dd>
</dl>
<dl>
<dt><strong>withOneThreeDecompositionCompositCount</strong></dt>
<dd><tt>DecompositionManager_withOneThreeDecompositionCompositCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneThreeDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneThreeDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [37]</tt></dd>
</dl>
<dl>
<dt><strong>withOneTwelveDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withOneTwelveDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withOneTwelveDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withOneTwelveDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [13]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneElevenDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneElevenDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneElevenDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneElevenDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [8]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneFiveDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneFiveDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneFiveDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneFiveDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [23]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneOddTenDecompositionCompositCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneOddTenDecompositionCompositCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneOddTenDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneOddTenDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [22]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneOddTwoDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneOddTwoDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneOddTwoDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneOddTwoDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [98]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneSevenDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneSevenDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneSevenDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneSevenDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [10]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneSixDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneSixDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneSixDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneSixDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [10]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneThreeDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneThreeDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneThreeDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneThreeDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [16]</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneTwelveDecompositionCompositeCount</strong></dt>
<dd><tt>DecompositionManager_withoutOneTwelveDecompositionCompositeCount_get(DecompositionManager self) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt><strong>withoutOneTwelveDecompositionCompositeDegrees</strong></dt>
<dd><tt>DecompositionManager_withoutOneTwelveDecompositionCompositeDegrees_get(DecompositionManager self) -&gt; unsigned int [11]</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_DecompositionManager&gt;</dt>
<dd><tt>delete_DecompositionManager(<a href="#DecompositionManager">DecompositionManager</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'EvenLargeTwoWithOneDecompositionCompositeCount': &lt;built-in function DecompositionManager_EvenLargeTwoWithOneDecompositionCompositeCount_get&gt;, 'EvenLargeTwoWithOneDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_EvenLargeTwoWithOneDecompositionCompositeDegrees_get&gt;, 'EvenTwoWithOneDecompositionCompositeCount': &lt;built-in function DecompositionManager_EvenTwoWithOneDecompositionCompositeCount_get&gt;, 'EvenTwoWithOneDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_EvenTwoWithOneDecompositionCompositeDegrees_get&gt;, 'FindEqualNumberInTheDecompositionsDB': &lt;function &lt;lambda&gt;&gt;, 'Instance': &lt;function &lt;lambda&gt;&gt;, 'NumberGenerator': &lt;function &lt;lambda&gt;&gt;, 'withOneElevenDecompositionCompositeCount': &lt;built-in function DecompositionManager_withOneElevenDecompositionCompositeCount_get&gt;, 'withOneElevenDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_withOneElevenDecompositionCompositeDegrees_get&gt;, 'withOneFiveDecompositionCompositeCount': &lt;built-in function DecompositionManager_withOneFiveDecompositionCompositeCount_get&gt;, ...}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'EvenLargeTwoWithOneDecompositionCompositeCount': &lt;built-in function DecompositionManager_EvenLargeTwoWithOneDecompositionCompositeCount_set&gt;, 'EvenLargeTwoWithOneDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_EvenLargeTwoWithOneDecompositionCompositeDegrees_set&gt;, 'EvenTwoWithOneDecompositionCompositeCount': &lt;built-in function DecompositionManager_EvenTwoWithOneDecompositionCompositeCount_set&gt;, 'EvenTwoWithOneDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_EvenTwoWithOneDecompositionCompositeDegrees_set&gt;, 'withOneElevenDecompositionCompositeCount': &lt;built-in function DecompositionManager_withOneElevenDecompositionCompositeCount_set&gt;, 'withOneElevenDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_withOneElevenDecompositionCompositeDegrees_set&gt;, 'withOneFiveDecompositionCompositeCount': &lt;built-in function DecompositionManager_withOneFiveDecompositionCompositeCount_set&gt;, 'withOneFiveDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_withOneFiveDecompositionCompositeDegrees_set&gt;, 'withOneOddTenDecompositionCompositeCount': &lt;built-in function DecompositionManager_withOneOddTenDecompositionCompositeCount_set&gt;, 'withOneOddTenDecompositionCompositeDegrees': &lt;built-in function DecompositionManager_withOneOddTenDecompositionCompositeDegrees_set&gt;, ...}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::DecompositionMember class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#DecompositionMember">DecompositionMember</a>
</div>
<div id="DecompositionMember" class="accordion-body collapse"><div class="accordion-inner">
<h4>class DecompositionMember(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="DecompositionMember-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMember-__init__">__init__</a>(AAL::<a href="#DecompositionMember">DecompositionMember</a> self) -&gt; <a href="#DecompositionMember">DecompositionMember</a><br><a href="#DecompositionMember-__init__">__init__</a>(AAL::<a href="#DecompositionMember">DecompositionMember</a> self, <a href="#Integer">Integer</a> number, <a href="#Integer">Integer</a> degree) -&gt; <a href="#DecompositionMember">DecompositionMember</a><br><a href="#DecompositionMember-__init__">__init__</a>(AAL::<a href="#DecompositionMember">DecompositionMember</a> self, <a href="#DecompositionMember">DecompositionMember</a> member) -&gt; <a href="#DecompositionMember">DecompositionMember</a></tt></dd>
</dl>
<dl><dt>
<a name="DecompositionMember-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="DecompositionMember-getDegree"><strong>getDegree</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMember-getDegree">getDegree</a>(<a href="#DecompositionMember">DecompositionMember</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMember-getNumber"><strong>getNumber</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMember-getNumber">getNumber</a>(<a href="#DecompositionMember">DecompositionMember</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="DecompositionMember-isRightDecomposition"><strong>isRightDecomposition</strong></a>(*args)</dt>
<dd><tt><a href="#DecompositionMember-isRightDecomposition">isRightDecomposition</a>(<a href="#Integer">Integer</a> number, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> decomposition) -&gt; bool</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_DecompositionMember&gt;</dt>
<dd><tt>delete_DecompositionMember(<a href="#DecompositionMember">DecompositionMember</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'isRightDecomposition': &lt;function &lt;lambda&gt;&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ std::vector&lt;(AAL::DecompositionMember)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#DecompositionMemberVector">DecompositionMemberVector</a>
</div>
<div id="DecompositionMemberVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class DecompositionMemberVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="DecompositionMemberVector-__bool__"><strong>__bool__</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-__bool__">__bool__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__delitem__"><strong>__delitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__delitem__">__delitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i)<br><a href="#DecompositionMemberVector-__delitem__">__delitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, PySliceObject * slice)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__delslice__"><strong>__delslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__delslice__">__delslice__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__getitem__"><strong>__getitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__getitem__">__getitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, PySliceObject * slice) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a><br><a href="#DecompositionMemberVector-__getitem__">__getitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i) -&gt; <a href="#DecompositionMember">DecompositionMember</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__getslice__"><strong>__getslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__getslice__">__getslice__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type j) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#DecompositionMember">DecompositionMember</a>)&gt; self) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a><br><a href="#DecompositionMemberVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#DecompositionMember">DecompositionMember</a>)&gt; self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> arg2) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a><br><a href="#DecompositionMemberVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#DecompositionMember">DecompositionMember</a>)&gt; self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type size) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a><br><a href="#DecompositionMemberVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#DecompositionMember">DecompositionMember</a>)&gt; self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type size, <a href="#DecompositionMember">DecompositionMember</a> value) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl><dt>
<a name="DecompositionMemberVector-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__len__"><strong>__len__</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-__len__">__len__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__nonzero__"><strong>__nonzero__</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-__nonzero__">__nonzero__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-__repr__">__repr__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__setitem__"><strong>__setitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__setitem__">__setitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, PySliceObject * slice, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> v)<br><a href="#DecompositionMemberVector-__setitem__">__setitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, PySliceObject * slice)<br><a href="#DecompositionMemberVector-__setitem__">__setitem__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i, <a href="#DecompositionMember">DecompositionMember</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-__setslice__"><strong>__setslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-__setslice__">__setslice__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type j, <br>
    <a href="#DecompositionMemberVector">DecompositionMemberVector</a> v=std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a>,std::allocator&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt; &gt;())<br><a href="#DecompositionMemberVector-__setslice__">__setslice__</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-append"><strong>append</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-append">append</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, <a href="#DecompositionMember">DecompositionMember</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-assign"><strong>assign</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-assign">assign</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type n, <a href="#DecompositionMember">DecompositionMember</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-back"><strong>back</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-back">back</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; <a href="#DecompositionMember">DecompositionMember</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-begin"><strong>begin</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-begin">begin</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-capacity"><strong>capacity</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-capacity">capacity</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-clear"><strong>clear</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-clear">clear</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-empty"><strong>empty</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-empty">empty</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-end"><strong>end</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-end">end</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-erase"><strong>erase</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-erase">erase</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator pos) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator<br><a href="#DecompositionMemberVector-erase">erase</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator first, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator last) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-front"><strong>front</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-front">front</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; <a href="#DecompositionMember">DecompositionMember</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-get_allocator"><strong>get_allocator</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-get_allocator">get_allocator</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::allocator_type</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-insert"><strong>insert</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-insert">insert</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator pos, <a href="#DecompositionMember">DecompositionMember</a> x) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator<br><a href="#DecompositionMemberVector-insert">insert</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::iterator pos, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type n, <br>
    <a href="#DecompositionMember">DecompositionMember</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-iterator"><strong>iterator</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-iterator">iterator</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; <a href="#SwigPyIterator">SwigPyIterator</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-pop"><strong>pop</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-pop">pop</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; <a href="#DecompositionMember">DecompositionMember</a></tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-pop_back"><strong>pop_back</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-pop_back">pop_back</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-push_back"><strong>push_back</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-push_back">push_back</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, <a href="#DecompositionMember">DecompositionMember</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-rbegin"><strong>rbegin</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-rbegin">rbegin</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-rend"><strong>rend</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-rend">rend</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-reserve"><strong>reserve</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-reserve">reserve</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type n)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-resize"><strong>resize</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-resize">resize</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type new_size)<br><a href="#DecompositionMemberVector-resize">resize</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type new_size, <a href="#DecompositionMember">DecompositionMember</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-size"><strong>size</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-size">size</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#DecompositionMember">DecompositionMember</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-swap"><strong>swap</strong></a>(self, *args)</dt>
<dd><tt><a href="#DecompositionMemberVector-swap">swap</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> v)</tt></dd>
</dl>
<dl>
<dt>
<a name="DecompositionMemberVector-toList"><strong>toList</strong></a>(self)</dt>
<dd><tt><a href="#DecompositionMemberVector-toList">toList</a>(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self) -&gt; PyObject *</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_DecompositionMemberVector&gt;</dt>
<dd><tt>delete_DecompositionMemberVector(<a href="#DecompositionMemberVector">DecompositionMemberVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::EllipticCurve class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#EllipticCurve">EllipticCurve</a>
</div>
<div id="EllipticCurve" class="accordion-body collapse"><div class="accordion-inner">
<h4>class EllipticCurve(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="EllipticCurve-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurve-__init__">__init__</a>(AAL::<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; <a href="#EllipticCurve">EllipticCurve</a><br><a href="#EllipticCurve-__init__">__init__</a>(AAL::<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> module, <a href="#Integer">Integer</a> J) -&gt; <a href="#EllipticCurve">EllipticCurve</a><br><a href="#EllipticCurve-__init__">__init__</a>(AAL::<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> module, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#EllipticCurve">EllipticCurve</a><br><a href="#EllipticCurve-__init__">__init__</a>(AAL::<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#EllipticCurve">EllipticCurve</a> eCurve) -&gt; <a href="#EllipticCurve">EllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurve-__repr__">__repr__</a>(<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="EllipticCurve-getA"><strong>getA</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurve-getA">getA</a>(<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-getB"><strong>getB</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurve-getB">getB</a>(<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-getInvariant"><strong>getInvariant</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurve-getInvariant">getInvariant</a>(<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurve-getModule">getModule</a>(<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-getOrder"><strong>getOrder</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurve-getOrder">getOrder</a>(<a href="#EllipticCurve">EllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-inGroup"><strong>inGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurve-inGroup">inGroup</a>(<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> x, <a href="#Integer">Integer</a> y) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-setA"><strong>setA</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurve-setA">setA</a>(<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> a) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-setB"><strong>setB</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurve-setB">setB</a>(<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-setCurve"><strong>setCurve</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurve-setCurve">setCurve</a>(<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> module, <a href="#Integer">Integer</a> J) -&gt; <a href="#EllipticCurve">EllipticCurve</a><br><a href="#EllipticCurve-setCurve">setCurve</a>(<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#EllipticCurve">EllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurve-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurve-setModule">setModule</a>(<a href="#EllipticCurve">EllipticCurve</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_EllipticCurve&gt;</dt>
<dd><tt>delete_EllipticCurve(<a href="#EllipticCurve">EllipticCurve</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::EllipticCurveGF2 class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#EllipticCurveGF2">EllipticCurveGF2</a>
</div>
<div id="EllipticCurveGF2" class="accordion-body collapse"><div class="accordion-inner">
<h4>class EllipticCurveGF2(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl><dt>
<a name="EllipticCurveGF2-__init__"><strong>__init__</strong></a>(self, *args, **kwargs)</dt></dl>
<dl><dt>
<a name="EllipticCurveGF2-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="EllipticCurveGF2-equals"><strong>equals</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurveGF2-equals">equals</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self, <a href="#EllipticCurveGF2">EllipticCurveGF2</a> eCurve) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurveGF2-getModule">getModule</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-hasY"><strong>hasY</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurveGF2-hasY">hasY</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self, <a href="#Polynom">Polynom</a> x) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-inGroup"><strong>inGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurveGF2-inGroup">inGroup</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-isNonSuperSingular"><strong>isNonSuperSingular</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurveGF2-isNonSuperSingular">isNonSuperSingular</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-isSuperSingular"><strong>isSuperSingular</strong></a>(self)</dt>
<dd><tt><a href="#EllipticCurveGF2-isSuperSingular">isSuperSingular</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-rightSide"><strong>rightSide</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurveGF2-rightSide">rightSide</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self, <a href="#Polynom">Polynom</a> x) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticCurveGF2-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticCurveGF2-setModule">setModule</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_EllipticCurveGF2&gt;</dt>
<dd><tt>delete_EllipticCurveGF2(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::EllipticPoint class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#EllipticPoint">EllipticPoint</a>
</div>
<div id="EllipticPoint" class="accordion-body collapse"><div class="accordion-inner">
<h4>class EllipticPoint(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="EllipticPoint-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-Add">Add</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticPoint">EllipticPoint</a> ePoint1, <a href="#EllipticPoint">EllipticPoint</a> ePoint2) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-Double"><strong>Double</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-Double">Double</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#EllipticPoint">EllipticPoint</a><br><a href="#EllipticPoint-Double">Double</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticPoint">EllipticPoint</a> e) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-Generate"><strong>Generate</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPoint-Generate">Generate</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-Mul">Mul</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#Integer">Integer</a> i, <a href="#EllipticPoint">EllipticPoint</a> ePoint) -&gt; <a href="#EllipticPoint">EllipticPoint</a><br><a href="#EllipticPoint-Mul">Mul</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticPoint">EllipticPoint</a> ePoint, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-Negate"><strong>Negate</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-Negate">Negate</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#EllipticPoint">EllipticPoint</a><br><a href="#EllipticPoint-Negate">Negate</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticPoint">EllipticPoint</a> ePoint) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="EllipticPoint-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-__iadd__">__iadd__</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticPoint">EllipticPoint</a> ePoint1) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-__imul__">__imul__</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-__init__">__init__</a>(AAL::<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#EllipticPoint">EllipticPoint</a><br><a href="#EllipticPoint-__init__">__init__</a>(AAL::<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticCurve">EllipticCurve</a> eCurve) -&gt; <a href="#EllipticPoint">EllipticPoint</a><br><a href="#EllipticPoint-__init__">__init__</a>(AAL::<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticPoint">EllipticPoint</a> ePoint) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPoint-__repr__">__repr__</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="EllipticPoint-getCurve"><strong>getCurve</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPoint-getCurve">getCurve</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#EllipticCurve">EllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-getX"><strong>getX</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPoint-getX">getX</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-getY"><strong>getY</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPoint-getY">getY</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-isInfinite"><strong>isInfinite</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPoint-isInfinite">isInfinite</a>(<a href="#EllipticPoint">EllipticPoint</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-setCurve"><strong>setCurve</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-setCurve">setCurve</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#EllipticCurve">EllipticCurve</a> eCurve) -&gt; <a href="#EllipticCurve">EllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-setInfinite"><strong>setInfinite</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-setInfinite">setInfinite</a>(<a href="#EllipticPoint">EllipticPoint</a> self, bool infinite) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPoint-setXY"><strong>setXY</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPoint-setXY">setXY</a>(<a href="#EllipticPoint">EllipticPoint</a> self, <a href="#Integer">Integer</a> x, <a href="#Integer">Integer</a> y) -&gt; <a href="#EllipticPoint">EllipticPoint</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_EllipticPoint&gt;</dt>
<dd><tt>delete_EllipticPoint(<a href="#EllipticPoint">EllipticPoint</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::EllipticPointGF2 class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#EllipticPointGF2">EllipticPointGF2</a>
</div>
<div id="EllipticPointGF2" class="accordion-body collapse"><div class="accordion-inner">
<h4>class EllipticPointGF2(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="EllipticPointGF2-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-Add">Add</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint1, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint2) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-DLK"><strong>DLK</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-DLK">DLK</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint1, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint2, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; t, int n, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; b, <br>
    <a href="#Polynom">Polynom</a> mod) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-Double"><strong>Double</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-Double">Double</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a><br><a href="#EllipticPointGF2-Double">Double</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-Generate"><strong>Generate</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPointGF2-Generate">Generate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-Mul">Mul</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-Negate"><strong>Negate</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-Negate">Negate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a><br><a href="#EllipticPointGF2-Negate">Negate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-WrappingGenerate"><strong>WrappingGenerate</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-WrappingGenerate">WrappingGenerate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> xforwrap) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="EllipticPointGF2-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-__iadd__">__iadd__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-__imul__">__imul__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl><dt>
<a name="EllipticPointGF2-__init__"><strong>__init__</strong></a>(self, *args, **kwargs)</dt></dl>
<dl>
<dt>
<a name="EllipticPointGF2-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPointGF2-__repr__">__repr__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="EllipticPointGF2-findRo"><strong>findRo</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-findRo">findRo</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> module, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; b) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-getCurve"><strong>getCurve</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPointGF2-getCurve">getCurve</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticCurveGF2">EllipticCurveGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-getX"><strong>getX</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPointGF2-getX">getX</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-getY"><strong>getY</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPointGF2-getY">getY</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-isInfinite"><strong>isInfinite</strong></a>(self)</dt>
<dd><tt><a href="#EllipticPointGF2-isInfinite">isInfinite</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-setCurve"><strong>setCurve</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-setCurve">setCurve</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticCurveGF2">EllipticCurveGF2</a> curve) -&gt; <a href="#EllipticCurveGF2">EllipticCurveGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-setInfinite"><strong>setInfinite</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-setInfinite">setInfinite</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, bool infinite) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="EllipticPointGF2-setXY"><strong>setXY</strong></a>(self, *args)</dt>
<dd><tt><a href="#EllipticPointGF2-setXY">setXY</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_EllipticPointGF2&gt;</dt>
<dd><tt>delete_EllipticPointGF2(<a href="#EllipticPointGF2">EllipticPointGF2</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::Exception class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#Exception">Exception</a>
</div>
<div id="Exception" class="accordion-body collapse"><div class="accordion-inner">
<h4>class Exception(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="Exception-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Exception-__init__">__init__</a>(AAL::<a href="#Exception">Exception</a> self, char const * str) -&gt; <a href="#Exception">Exception</a><br><a href="#Exception-__init__">__init__</a>(AAL::<a href="#Exception">Exception</a> self, std::string str) -&gt; <a href="#Exception">Exception</a></tt></dd>
</dl>
<dl><dt>
<a name="Exception-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="Exception-cp1251"><strong>cp1251</strong></a>(self)</dt>
<dd><tt><a href="#Exception-cp1251">cp1251</a>(<a href="#Exception">Exception</a> self) -&gt; char const *</tt></dd>
</dl>
<dl>
<dt>
<a name="Exception-cp866"><strong>cp866</strong></a>(self)</dt>
<dd><tt><a href="#Exception-cp866">cp866</a>(<a href="#Exception">Exception</a> self) -&gt; char const *</tt></dd>
</dl>
<dl>
<dt>
<a name="Exception-what"><strong>what</strong></a>(self)</dt>
<dd><tt><a href="#Exception-what">what</a>(<a href="#Exception">Exception</a> self) -&gt; char const *</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_Exception&gt;</dt>
<dd><tt>delete_Exception(<a href="#Exception">Exception</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::FactorizationAlgorithms class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#FactorizationAlgorithms">FactorizationAlgorithms</a>
</div>
<div id="FactorizationAlgorithms" class="accordion-body collapse"><div class="accordion-inner">
<h4>class FactorizationAlgorithms(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="FactorizationAlgorithms-FastP0AlgorithmDecomposition"><strong>FastP0AlgorithmDecomposition</strong></a>(self)</dt>
<dd><tt><a href="#FactorizationAlgorithms-FastP0AlgorithmDecomposition">FastP0AlgorithmDecomposition</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-FermaAlgorithm"><strong>FermaAlgorithm</strong></a>(self, *args)</dt>
<dd><tt><a href="#FactorizationAlgorithms-FermaAlgorithm">FermaAlgorithm</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self, <a href="#Integer">Integer</a> number) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-FermaAlgorithmDecomposition"><strong>FermaAlgorithmDecomposition</strong></a>(self)</dt>
<dd><tt><a href="#FactorizationAlgorithms-FermaAlgorithmDecomposition">FermaAlgorithmDecomposition</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-MsieveDecomposition"><strong>MsieveDecomposition</strong></a>(self)</dt>
<dd><tt><a href="#FactorizationAlgorithms-MsieveDecomposition">MsieveDecomposition</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-P0AlgorithmDecomposition"><strong>P0AlgorithmDecomposition</strong></a>(self)</dt>
<dd><tt><a href="#FactorizationAlgorithms-P0AlgorithmDecomposition">P0AlgorithmDecomposition</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-ProbingDivisionAlgorithmDecomposition"><strong>ProbingDivisionAlgorithmDecomposition</strong></a>(self)</dt>
<dd><tt><a href="#FactorizationAlgorithms-ProbingDivisionAlgorithmDecomposition">ProbingDivisionAlgorithmDecomposition</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self) -&gt; <a href="#DecompositionMemberVector">DecompositionMemberVector</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#FactorizationAlgorithms-__init__">__init__</a>(AAL::<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self, <a href="#Integer">Integer</a> number) -&gt; <a href="#FactorizationAlgorithms">FactorizationAlgorithms</a></tt></dd>
</dl>
<dl>
<dt>
<a name="FactorizationAlgorithms-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#FactorizationAlgorithms-__repr__">__repr__</a>(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_FactorizationAlgorithms&gt;</dt>
<dd><tt>delete_FactorizationAlgorithms(<a href="#FactorizationAlgorithms">FactorizationAlgorithms</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ std::vector&lt;(int)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntVector">IntVector</a>
</div>
<div id="IntVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntVector-__bool__"><strong>__bool__</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-__bool__">__bool__</a>(<a href="#IntVector">IntVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl>
<dt>
<a name="IntVector-__delitem__"><strong>__delitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__delitem__">__delitem__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i)<br><a href="#IntVector-__delitem__">__delitem__</a>(<a href="#IntVector">IntVector</a> self, PySliceObject * slice)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-__delslice__"><strong>__delslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__delslice__">__delslice__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i, std::vector&lt; int &gt;::difference_type j)</tt></dd>
</dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntVector-__getitem__"><strong>__getitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__getitem__">__getitem__</a>(<a href="#IntVector">IntVector</a> self, PySliceObject * slice) -&gt; <a href="#IntVector">IntVector</a><br><a href="#IntVector-__getitem__">__getitem__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i) -&gt; std::vector&lt; int &gt;::value_type const &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-__getslice__"><strong>__getslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__getslice__">__getslice__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i, std::vector&lt; int &gt;::difference_type j) -&gt; <a href="#IntVector">IntVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__init__">__init__</a>(std::vector&lt;(int)&gt; self) -&gt; <a href="#IntVector">IntVector</a><br><a href="#IntVector-__init__">__init__</a>(std::vector&lt;(int)&gt; self, <a href="#IntVector">IntVector</a> arg2) -&gt; <a href="#IntVector">IntVector</a><br><a href="#IntVector-__init__">__init__</a>(std::vector&lt;(int)&gt; self, std::vector&lt; int &gt;::size_type size) -&gt; <a href="#IntVector">IntVector</a><br><a href="#IntVector-__init__">__init__</a>(std::vector&lt;(int)&gt; self, std::vector&lt; int &gt;::size_type size, std::vector&lt; int &gt;::value_type const &amp; value) -&gt; <a href="#IntVector">IntVector</a></tt></dd>
</dl>
<dl><dt>
<a name="IntVector-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl>
<dt>
<a name="IntVector-__len__"><strong>__len__</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-__len__">__len__</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-__nonzero__"><strong>__nonzero__</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-__nonzero__">__nonzero__</a>(<a href="#IntVector">IntVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<a name="IntVector-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntVector-__setitem__"><strong>__setitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__setitem__">__setitem__</a>(<a href="#IntVector">IntVector</a> self, PySliceObject * slice, <a href="#IntVector">IntVector</a> v)<br><a href="#IntVector-__setitem__">__setitem__</a>(<a href="#IntVector">IntVector</a> self, PySliceObject * slice)<br><a href="#IntVector-__setitem__">__setitem__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i, std::vector&lt; int &gt;::value_type const &amp; x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-__setslice__"><strong>__setslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-__setslice__">__setslice__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i, std::vector&lt; int &gt;::difference_type j, <a href="#IntVector">IntVector</a> v=std::vector&lt; int,std::allocator&lt; int &gt; &gt;())<br><a href="#IntVector-__setslice__">__setslice__</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::difference_type i, std::vector&lt; int &gt;::difference_type j)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-append"><strong>append</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-append">append</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::value_type const &amp; x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-assign"><strong>assign</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-assign">assign</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::size_type n, std::vector&lt; int &gt;::value_type const &amp; x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-back"><strong>back</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-back">back</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::value_type const &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-begin"><strong>begin</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-begin">begin</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-capacity"><strong>capacity</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-capacity">capacity</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-clear"><strong>clear</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-clear">clear</a>(<a href="#IntVector">IntVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-empty"><strong>empty</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-empty">empty</a>(<a href="#IntVector">IntVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-end"><strong>end</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-end">end</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-erase"><strong>erase</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-erase">erase</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::iterator pos) -&gt; std::vector&lt; int &gt;::iterator<br><a href="#IntVector-erase">erase</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::iterator first, std::vector&lt; int &gt;::iterator last) -&gt; std::vector&lt; int &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-front"><strong>front</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-front">front</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::value_type const &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-get_allocator"><strong>get_allocator</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-get_allocator">get_allocator</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::allocator_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-insert"><strong>insert</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-insert">insert</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::iterator pos, std::vector&lt; int &gt;::value_type const &amp; x) -&gt; std::vector&lt; int &gt;::iterator<br><a href="#IntVector-insert">insert</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::iterator pos, std::vector&lt; int &gt;::size_type n, std::vector&lt; int &gt;::value_type const &amp; x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-iterator"><strong>iterator</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-iterator">iterator</a>(<a href="#IntVector">IntVector</a> self) -&gt; <a href="#SwigPyIterator">SwigPyIterator</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-pop"><strong>pop</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-pop">pop</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::value_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-pop_back"><strong>pop_back</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-pop_back">pop_back</a>(<a href="#IntVector">IntVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-push_back"><strong>push_back</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-push_back">push_back</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::value_type const &amp; x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-rbegin"><strong>rbegin</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-rbegin">rbegin</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-rend"><strong>rend</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-rend">rend</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-reserve"><strong>reserve</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-reserve">reserve</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::size_type n)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-resize"><strong>resize</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-resize">resize</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::size_type new_size)<br><a href="#IntVector-resize">resize</a>(<a href="#IntVector">IntVector</a> self, std::vector&lt; int &gt;::size_type new_size, std::vector&lt; int &gt;::value_type const &amp; x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-size"><strong>size</strong></a>(self)</dt>
<dd><tt><a href="#IntVector-size">size</a>(<a href="#IntVector">IntVector</a> self) -&gt; std::vector&lt; int &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntVector-swap"><strong>swap</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntVector-swap">swap</a>(<a href="#IntVector">IntVector</a> self, <a href="#IntVector">IntVector</a> v)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntVector&gt;</dt>
<dd><tt>delete_IntVector(<a href="#IntVector">IntVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::Integer class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#Integer">Integer</a>
</div>
<div id="Integer" class="accordion-body collapse"><div class="accordion-inner">
<h4>class Integer(uintBasicType)</h4>
<td width="100%">
<dl>
<dt>Method resolution order:</dt>
<dd><a href="AAL.html#Integer">Integer</a></dd>
<dd><a href="AAL.html#uintBasicType">uintBasicType</a></dd>
<dd><a href="__builtin__.html#object">__builtin__.object</a></dd>
</dl>
<hr>
Methods defined here:<br><dl>
<dt>
<a name="Integer-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Add">Add</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-And"><strong>And</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-And">And</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-BinaryGCD"><strong>BinaryGCD</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-BinaryGCD">BinaryGCD</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Compare"><strong>Compare</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Compare">Compare</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Div"><strong>Div</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Div">Div</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> remainder=None) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-Div">Div</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-DivInFp"><strong>DivInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-DivInFp">DivInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module, <a href="#Integer">Integer</a> remainder) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Euclid"><strong>Euclid</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Euclid">Euclid</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Euler"><strong>Euler</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Euler">Euler</a>(<a href="#Integer">Integer</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ExEuclid"><strong>ExEuclid</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ExEuclid">ExEuclid</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> x, <a href="#Integer">Integer</a> y) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Generate"><strong>Generate</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Generate">Generate</a>(<a href="#Integer">Integer</a> self, AAL::uint numberBits) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-Generate">Generate</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-GenerateOdd"><strong>GenerateOdd</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-GenerateOdd">GenerateOdd</a>(<a href="#Integer">Integer</a> self, AAL::uint numberBits) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-GenerateOdd">GenerateOdd</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-GeneratePrime"><strong>GeneratePrime</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-GeneratePrime">GeneratePrime</a>(<a href="#Integer">Integer</a> self, AAL::uint numberBits) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-GeneratePrime">GeneratePrime</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-GeneratePrime">GeneratePrime</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-InMulGroup"><strong>InMulGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-InMulGroup">InMulGroup</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> groupModule) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-InMulGroupInFp"><strong>InMulGroupInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-InMulGroupInFp">InMulGroupInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> groupModule) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Inverse"><strong>Inverse</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Inverse">Inverse</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-Inverse">Inverse</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-InverseInFp"><strong>InverseInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-InverseInFp">InverseInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-JacobySymbol"><strong>JacobySymbol</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-JacobySymbol">JacobySymbol</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> n) -&gt; int</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-LegendreSymbol"><strong>LegendreSymbol</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-LegendreSymbol">LegendreSymbol</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; int</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Mod"><strong>Mod</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Mod">Mod</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModAdd"><strong>ModAdd</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModAdd">ModAdd</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModAddInFp"><strong>ModAddInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModAddInFp">ModAddInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModDiv"><strong>ModDiv</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModDiv">ModDiv</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module, <a href="#Integer">Integer</a> remainder=None) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-ModDiv">ModDiv</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModMul"><strong>ModMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModMul">ModMul</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModPositive"><strong>ModPositive</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModPositive">ModPositive</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModPow"><strong>ModPow</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModPow">ModPow</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModSqrt"><strong>ModSqrt</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModSqrt">ModSqrt</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-ModSqrt">ModSqrt</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModSub"><strong>ModSub</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModSub">ModSub</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ModifiedTestLuka"><strong>ModifiedTestLuka</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ModifiedTestLuka">ModifiedTestLuka</a>(<a href="#Integer">Integer</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> Mersen_Number) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Mul">Mul</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-MulInFp"><strong>MulInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-MulInFp">MulInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Negate"><strong>Negate</strong></a>(self)</dt>
<dd><tt><a href="#Integer-Negate">Negate</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Not"><strong>Not</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Not">Not</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-OnesComplement"><strong>OnesComplement</strong></a>(self)</dt>
<dd><tt><a href="#Integer-OnesComplement">OnesComplement</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Or"><strong>Or</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Or">Or</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Parse"><strong>Parse</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Parse">Parse</a>(<a href="#Integer">Integer</a> self, std::string const dataString, AAL::NumericSystem system=Dec) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-Parse">Parse</a>(<a href="#Integer">Integer</a> self, std::string const dataString) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Pow"><strong>Pow</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Pow">Pow</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-PowInFp"><strong>PowInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-PowInFp">PowInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-SCM"><strong>SCM</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-SCM">SCM</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Sqrt"><strong>Sqrt</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Sqrt">Sqrt</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-Sqrt">Sqrt</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-SquareRoot"><strong>SquareRoot</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-SquareRoot">SquareRoot</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Sub"><strong>Sub</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Sub">Sub</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-SubInFp"><strong>SubInFp</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-SubInFp">SubInFp</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-TestLukaLemera"><strong>TestLukaLemera</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-TestLukaLemera">TestLukaLemera</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> degree) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-TestPoklingtona"><strong>TestPoklingtona</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-TestPoklingtona">TestPoklingtona</a>(<a href="#Integer">Integer</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> Mersen_Number) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-ToString"><strong>ToString</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-ToString">ToString</a>(<a href="#Integer">Integer</a> self, AAL::NumericSystem system=Dec) -&gt; std::string<br><a href="#Integer-ToString">ToString</a>(<a href="#Integer">Integer</a> self) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-WrappingGenerate"><strong>WrappingGenerate</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-WrappingGenerate">WrappingGenerate</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> forwrap, <a href="#Integer">Integer</a> module) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Xor"><strong>Xor</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Xor">Xor</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="Integer-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__iadd__">__iadd__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__iand__"><strong>__iand__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__iand__">__iand__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__idiv__"><strong>__idiv__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__idiv__">__idiv__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__ilshift__"><strong>__ilshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__ilshift__">__ilshift__</a>(<a href="#Integer">Integer</a> self, int numberBits) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__imod__"><strong>__imod__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__imod__">__imod__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__imul__">__imul__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__init__">__init__</a>(AAL::<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-__init__">__init__</a>(AAL::<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-__init__">__init__</a>(AAL::<a href="#Integer">Integer</a> self, int const number) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-__init__">__init__</a>(AAL::<a href="#Integer">Integer</a> self, std::string const dataString, AAL::NumericSystem system=Dec) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-__init__">__init__</a>(AAL::<a href="#Integer">Integer</a> self, std::string const dataString) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__invert__"><strong>__invert__</strong></a>(self)</dt>
<dd><tt><a href="#Integer-__invert__">__invert__</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__ior__"><strong>__ior__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__ior__">__ior__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__irshift__"><strong>__irshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__irshift__">__irshift__</a>(<a href="#Integer">Integer</a> self, int numberBits) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__isub__"><strong>__isub__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__isub__">__isub__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__ixor__"><strong>__ixor__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__ixor__">__ixor__</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> integer) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__lshift__"><strong>__lshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__lshift__">__lshift__</a>(<a href="#Integer">Integer</a> self, int numberBits) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__neg__"><strong>__neg__</strong></a>(self)</dt>
<dd><tt><a href="#Integer-__neg__">__neg__</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__pos__"><strong>__pos__</strong></a>(self)</dt>
<dd><tt><a href="#Integer-__pos__">__pos__</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#Integer-__repr__">__repr__</a>(<a href="#Integer">Integer</a> self) -&gt; char *</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-__rshift__"><strong>__rshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-__rshift__">__rshift__</a>(<a href="#Integer">Integer</a> self, int numberBits) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="Integer-elementOrder"><strong>elementOrder</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-elementOrder">elementOrder</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> groupModule, <a href="#Integer">Integer</a> num, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isEven"><strong>isEven</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isEven">isEven</a>(<a href="#Integer">Integer</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isGenerator"><strong>isGenerator</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-isGenerator">isGenerator</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> module, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> mulGroupOrdDecomposition) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isNegative"><strong>isNegative</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isNegative">isNegative</a>(<a href="#Integer">Integer</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isNumber"><strong>isNumber</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-isNumber">isNumber</a>(<a href="#Integer">Integer</a> self, AAL::uint number, bool sign=False) -&gt; bool<br><a href="#Integer-isNumber">isNumber</a>(<a href="#Integer">Integer</a> self, AAL::uint number) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isOdd"><strong>isOdd</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isOdd">isOdd</a>(<a href="#Integer">Integer</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isOne">isOne</a>(<a href="#Integer">Integer</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isPositive"><strong>isPositive</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isPositive">isPositive</a>(<a href="#Integer">Integer</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isPrime"><strong>isPrime</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isPrime">isPrime</a>(<a href="#Integer">Integer</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isGenerator"><strong>isGenerator</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-isGenerator">isGenerator</a>(<a href="#Integer">Integer</a> self, <a href="#Integer">Integer</a> groupModule, <a href="#Integer">Integer</a> num, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-setNumber"><strong>setNumber</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-setNumber">setNumber</a>(<a href="#Integer">Integer</a> self, AAL::uint number, bool sign=False) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-setNumber">setNumber</a>(<a href="#Integer">Integer</a> self, AAL::uint number) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-setOne"><strong>setOne</strong></a>(self, sign<font color="#909090">=False</font>)</dt>
<dd><tt><a href="#Integer-setOne">setOne</a>(<a href="#Integer">Integer</a> self, bool sign=False) -&gt; <a href="#Integer">Integer</a><br><a href="#Integer-setOne">setOne</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-setPositive"><strong>setPositive</strong></a>(self)</dt>
<dd><tt><a href="#Integer-setPositive">setPositive</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#Integer-setZero">setZero</a>(<a href="#Integer">Integer</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-strr"><strong>strr</strong></a>(self)</dt>
<dd><tt><a href="#Integer-strr">strr</a>(<a href="#Integer">Integer</a> self) -&gt; std::string</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_Integer&gt;</dt>
<dd><tt>delete_Integer(<a href="#Integer">Integer</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'_digits': &lt;built-in function uintBasicType__digits_get&gt;, '_maximumDigits': &lt;built-in function uintBasicType__maximumDigits_get&gt;, '_numberDigits': &lt;built-in function uintBasicType__numberDigits_get&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'_digits': &lt;built-in function uintBasicType__digits_set&gt;, '_maximumDigits': &lt;built-in function uintBasicType__maximumDigits_set&gt;, '_numberDigits': &lt;built-in function uintBasicType__numberDigits_set&gt;}</dt></dl>
<hr>
Methods inherited from <a href="AAL.html#uintBasicType">uintBasicType</a>:<br><dl>
<dt>
<a name="Integer-PressMemory"><strong>PressMemory</strong></a>(self)</dt>
<dd><tt><a href="#Integer-PressMemory">PressMemory</a>(<a href="#uintBasicType">uintBasicType</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-Relocation"><strong>Relocation</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-Relocation">Relocation</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint maximumDigits)</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-getBit">getBit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getDigit"><strong>getDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-getDigit">getDigit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getFirstTrueBit"><strong>getFirstTrueBit</strong></a>(self)</dt>
<dd><tt><a href="#Integer-getFirstTrueBit">getFirstTrueBit</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getMaximumDigits"><strong>getMaximumDigits</strong></a>(self)</dt>
<dd><tt><a href="#Integer-getMaximumDigits">getMaximumDigits</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#Integer-getNumberBits">getNumberBits</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getNumberBytes"><strong>getNumberBytes</strong></a>(self)</dt>
<dd><tt><a href="#Integer-getNumberBytes">getNumberBytes</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-getNumberDigits"><strong>getNumberDigits</strong></a>(self)</dt>
<dd><tt><a href="#Integer-getNumberDigits">getNumberDigits</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#Integer-isZero">isZero</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-setBit">setBit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position, bool value=True)<br><a href="#Integer-setBit">setBit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position)</tt></dd>
</dl>
<dl>
<dt>
<a name="Integer-setDigit"><strong>setDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Integer-setDigit">setDigit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position, unsigned int value)</tt></dd>
</dl>
<hr>
Data descriptors inherited from <a href="AAL.html#uintBasicType">uintBasicType</a>:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::IntegerBinom class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerBinom">IntegerBinom</a>
</div>
<div id="IntegerBinom" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerBinom(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerBinom-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-Add">Add</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> a, <a href="#IntegerBinom">IntegerBinom</a> b) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-FactorToTexString"><strong>FactorToTexString</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-FactorToTexString">FactorToTexString</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinomVector">IntegerBinomVector</a> factor, std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt; &gt; &gt; &amp; subGroups) -&gt; std::string<br><a href="#IntegerBinom-FactorToTexString">FactorToTexString</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#Integer">Integer</a> rootDegree, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> mulGroupOrdDecomposition) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-Generate"><strong>Generate</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-Generate">Generate</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-GenerateGenerative"><strong>GenerateGenerative</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-GenerateGenerative">GenerateGenerative</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> mulGroupOrdDecomposition) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-GenerateOneRootGroup"><strong>GenerateOneRootGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-GenerateOneRootGroup">GenerateOneRootGroup</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#Integer">Integer</a> rootDegree, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> mulGroupOrdDecomposition) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-GenerateSubGroup"><strong>GenerateSubGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-GenerateSubGroup">GenerateSubGroup</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#Integer">Integer</a> subGroupOrder, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> mulGroupOrdDecomposition) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-Inverse"><strong>Inverse</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-Inverse">Inverse</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a><br><a href="#IntegerBinom-Inverse">Inverse</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> a) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-Mul">Mul</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> a, <a href="#IntegerBinom">IntegerBinom</a> b) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-MulMultitude"><strong>MulMultitude</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-MulMultitude">MulMultitude</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinomVector">IntegerBinomVector</a> multitude, <a href="#IntegerBinom">IntegerBinom</a> binom) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-Negate"><strong>Negate</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-Negate">Negate</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a><br><a href="#IntegerBinom-Negate">Negate</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> binom) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-Pow"><strong>Pow</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-Pow">Pow</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> a, <a href="#Integer">Integer</a> n) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-Sub"><strong>Sub</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-Sub">Sub</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> a, <a href="#IntegerBinom">IntegerBinom</a> b) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-ToString"><strong>ToString</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-ToString">ToString</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; std::string</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerBinom-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-__iadd__">__iadd__</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> binom) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-__imul__">__imul__</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> binom) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-__init__">__init__</a>(AAL::<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a><br><a href="#IntegerBinom-__init__">__init__</a>(AAL::<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> binom) -&gt; <a href="#IntegerBinom">IntegerBinom</a><br><a href="#IntegerBinom-__init__">__init__</a>(AAL::<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#Integer">Integer</a> a, <a href="#Integer">Integer</a> b, <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> modulePolynom) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-__isub__"><strong>__isub__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-__isub__">__isub__</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinom">IntegerBinom</a> binom) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-__repr__">__repr__</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerBinom-getA"><strong>getA</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-getA">getA</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-getB"><strong>getB</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-getB">getB</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-getModule">getModule</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-getModulePolynom"><strong>getModulePolynom</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-getModulePolynom">getModulePolynom</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-getMulGroupOrder"><strong>getMulGroupOrder</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-getMulGroupOrder">getMulGroupOrder</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-isGenerative"><strong>isGenerative</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-isGenerative">isGenerative</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> mulGroupOrdDecomposition) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-isOne">isOne</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-isZero">isZero</a>(<a href="#IntegerBinom">IntegerBinom</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-setA"><strong>setA</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-setA">setA</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#Integer">Integer</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-setB"><strong>setB</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-setB">setB</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#Integer">Integer</a> b)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-setModulePolynom"><strong>setModulePolynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinom-setModulePolynom">setModulePolynom</a>(<a href="#IntegerBinom">IntegerBinom</a> self, <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> modulePolynom)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-setOne"><strong>setOne</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-setOne">setOne</a>(<a href="#IntegerBinom">IntegerBinom</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinom-setZero">setZero</a>(<a href="#IntegerBinom">IntegerBinom</a> self)</tt></dd>
</dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="IntegerBinom-FactorToString"><strong>FactorToString</strong></a>(*args)</dt>
<dd><tt><a href="#IntegerBinom-FactorToString">FactorToString</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> factor, std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt; &gt; &gt; &amp; subGroups) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinom-MultitudeToString"><strong>MultitudeToString</strong></a>(*args)</dt>
<dd><tt><a href="#IntegerBinom-MultitudeToString">MultitudeToString</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> multitude) -&gt; std::string</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerBinom&gt;</dt>
<dd><tt>delete_IntegerBinom(<a href="#IntegerBinom">IntegerBinom</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'FactorToString': &lt;function &lt;lambda&gt;&gt;, 'MultitudeToString': &lt;function &lt;lambda&gt;&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::IntegerBinomEllipticCurve class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a>
</div>
<div id="IntegerBinomEllipticCurve" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerBinomEllipticCurve(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerBinomEllipticCurve-CreateFactorGroup"><strong>CreateFactorGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-CreateFactorGroup">CreateFactorGroup</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self, <a href="#Integer">Integer</a> n) -&gt; std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt; &gt; &gt;</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-CreateGroup"><strong>CreateGroup</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-CreateGroup">CreateGroup</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-CreateMultipliedGroup"><strong>CreateMultipliedGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-CreateMultipliedGroup">CreateMultipliedGroup</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self, <a href="#Integer">Integer</a> n) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-CreateSpinningGroup"><strong>CreateSpinningGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-CreateSpinningGroup">CreateSpinningGroup</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self, <a href="#Integer">Integer</a> n) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-__init__">__init__</a>(AAL::<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a><br><a href="#IntegerBinomEllipticCurve-__init__">__init__</a>(AAL::<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self, <a href="#IntegerBinom">IntegerBinom</a> a, <a href="#IntegerBinom">IntegerBinom</a> b) -&gt; <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a><br><a href="#IntegerBinomEllipticCurve-__init__">__init__</a>(AAL::<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self, <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> curve) -&gt; <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-__repr__">__repr__</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-getA"><strong>getA</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-getA">getA</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-getB"><strong>getB</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-getB">getB</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-getModule">getModule</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-getModulePolynom"><strong>getModulePolynom</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-getModulePolynom">getModulePolynom</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self) -&gt; <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-inGroup"><strong>inGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-inGroup">inGroup</a>(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self, <a href="#IntegerBinom">IntegerBinom</a> x, <a href="#IntegerBinom">IntegerBinom</a> y) -&gt; bool</tt></dd>
</dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="IntegerBinomEllipticCurve-FactorToTexString"><strong>FactorToTexString</strong></a>(*args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-FactorToTexString">FactorToTexString</a>(std::vector&lt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt;,std::allocator&lt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt; &gt; &gt; &amp; factor) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticCurve-MultitudeToTexString"><strong>MultitudeToTexString</strong></a>(*args)</dt>
<dd><tt><a href="#IntegerBinomEllipticCurve-MultitudeToTexString">MultitudeToTexString</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> multitude) -&gt; std::string</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerBinomEllipticCurve&gt;</dt>
<dd><tt>delete_IntegerBinomEllipticCurve(<a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'FactorToTexString': &lt;function &lt;lambda&gt;&gt;, 'MultitudeToTexString': &lt;function &lt;lambda&gt;&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::IntegerBinomEllipticPoint class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>
</div>
<div id="IntegerBinomEllipticPoint" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerBinomEllipticPoint(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerBinomEllipticPoint-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Add">Add</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> ePoint1, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> ePoint2) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-Distortion"><strong>Distortion</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Distortion">Distortion</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a><br><a href="#IntegerBinomEllipticPoint-Distortion">Distortion</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> point) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-Double"><strong>Double</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Double">Double</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a><br><a href="#IntegerBinomEllipticPoint-Double">Double</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> e) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-Generate"><strong>Generate</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Generate">Generate</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Mul">Mul</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> ePoint, <a href="#Integer">Integer</a> i) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-Negate"><strong>Negate</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Negate">Negate</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a><br><a href="#IntegerBinomEllipticPoint-Negate">Negate</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> ePoint) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-Order"><strong>Order</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-Order">Order</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-ToString"><strong>ToString</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-ToString">ToString</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-ToTexString"><strong>ToTexString</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-ToTexString">ToTexString</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; std::string</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-__iadd__">__iadd__</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> ePoint) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-__init__">__init__</a>(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a><br><a href="#IntegerBinomEllipticPoint-__init__">__init__</a>(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> eCurve) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a><br><a href="#IntegerBinomEllipticPoint-__init__">__init__</a>(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> ePoint) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-__repr__">__repr__</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-getCurve"><strong>getCurve</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-getCurve">getCurve</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-getX"><strong>getX</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-getX">getX</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-getY"><strong>getY</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-getY">getY</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-isInfinite"><strong>isInfinite</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-isInfinite">isInfinite</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-isSelfnegative"><strong>isSelfnegative</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-isSelfnegative">isSelfnegative</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-setCurve"><strong>setCurve</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-setCurve">setCurve</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a> eCurve) -&gt; <a href="#IntegerBinomEllipticCurve">IntegerBinomEllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-setInfinite"><strong>setInfinite</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-setInfinite">setInfinite</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, bool infinite) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPoint-setXY"><strong>setXY</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPoint-setXY">setXY</a>(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self, <a href="#IntegerBinom">IntegerBinom</a> x, <a href="#IntegerBinom">IntegerBinom</a> y) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerBinomEllipticPoint&gt;</dt>
<dd><tt>delete_IntegerBinomEllipticPoint(<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ std::vector&lt;(AAL::IntegerBinomEllipticPoint)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a>
</div>
<div id="IntegerBinomEllipticPointVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerBinomEllipticPointVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__bool__"><strong>__bool__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__bool__">__bool__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__delitem__"><strong>__delitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__delitem__">__delitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i)<br><a href="#IntegerBinomEllipticPointVector-__delitem__">__delitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, PySliceObject * slice)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__delslice__"><strong>__delslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__delslice__">__delslice__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__getitem__"><strong>__getitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__getitem__">__getitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, PySliceObject * slice) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a><br><a href="#IntegerBinomEllipticPointVector-__getitem__">__getitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__getslice__"><strong>__getslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__getslice__">__getslice__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type j) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>)&gt; self) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a><br><a href="#IntegerBinomEllipticPointVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>)&gt; self, <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> arg2) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a><br><a href="#IntegerBinomEllipticPointVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>)&gt; self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type size) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a><br><a href="#IntegerBinomEllipticPointVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>)&gt; self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type size, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> value) -&gt; <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a></tt></dd>
</dl>
<dl><dt>
<a name="IntegerBinomEllipticPointVector-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__len__"><strong>__len__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__len__">__len__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__nonzero__"><strong>__nonzero__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__nonzero__">__nonzero__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<a name="IntegerBinomEllipticPointVector-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__setitem__"><strong>__setitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__setitem__">__setitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, PySliceObject * slice, <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> v)<br><a href="#IntegerBinomEllipticPointVector-__setitem__">__setitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, PySliceObject * slice)<br><a href="#IntegerBinomEllipticPointVector-__setitem__">__setitem__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-__setslice__"><strong>__setslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-__setslice__">__setslice__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type j, <br>
    <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> v=std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a>,std::allocator&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt; &gt;())<br><a href="#IntegerBinomEllipticPointVector-__setslice__">__setslice__</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-append"><strong>append</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-append">append</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-assign"><strong>assign</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-assign">assign</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type n, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-back"><strong>back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-back">back</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-begin"><strong>begin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-begin">begin</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-capacity"><strong>capacity</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-capacity">capacity</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-clear"><strong>clear</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-clear">clear</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-empty"><strong>empty</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-empty">empty</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-end"><strong>end</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-end">end</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-erase"><strong>erase</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-erase">erase</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator pos) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator<br><a href="#IntegerBinomEllipticPointVector-erase">erase</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator first, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator last) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-front"><strong>front</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-front">front</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-get_allocator"><strong>get_allocator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-get_allocator">get_allocator</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::allocator_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-insert"><strong>insert</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-insert">insert</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator pos, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator<br><a href="#IntegerBinomEllipticPointVector-insert">insert</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::iterator pos, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type n, <br>
    <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-iterator"><strong>iterator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-iterator">iterator</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; <a href="#SwigPyIterator">SwigPyIterator</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-pop"><strong>pop</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-pop">pop</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-pop_back"><strong>pop_back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-pop_back">pop_back</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-push_back"><strong>push_back</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-push_back">push_back</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-rbegin"><strong>rbegin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-rbegin">rbegin</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-rend"><strong>rend</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-rend">rend</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-reserve"><strong>reserve</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-reserve">reserve</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type n)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-resize"><strong>resize</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-resize">resize</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type new_size)<br><a href="#IntegerBinomEllipticPointVector-resize">resize</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type new_size, <a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-size"><strong>size</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-size">size</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinomEllipticPoint">IntegerBinomEllipticPoint</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomEllipticPointVector-swap"><strong>swap</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomEllipticPointVector-swap">swap</a>(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self, <a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> v)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerBinomEllipticPointVector&gt;</dt>
<dd><tt>delete_IntegerBinomEllipticPointVector(<a href="#IntegerBinomEllipticPointVector">IntegerBinomEllipticPointVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::IntegerBinomModulePolynom class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a>
</div>
<div id="IntegerBinomModulePolynom" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerBinomModulePolynom(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerBinomModulePolynom-ToString"><strong>ToString</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-ToString">ToString</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self) -&gt; std::string</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-__init__">__init__</a>(AAL::<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self) -&gt; <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a><br><a href="#IntegerBinomModulePolynom-__init__">__init__</a>(AAL::<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self, <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> polynom) -&gt; <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a><br><a href="#IntegerBinomModulePolynom-__init__">__init__</a>(AAL::<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self, <a href="#Integer">Integer</a> a0, <a href="#Integer">Integer</a> a1, <a href="#Integer">Integer</a> module) -&gt; <a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-__repr__">__repr__</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-getA0"><strong>getA0</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-getA0">getA0</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-getA1"><strong>getA1</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-getA1">getA1</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-getModule">getModule</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-setA0A1"><strong>setA0A1</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-setA0A1">setA0A1</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self, <a href="#Integer">Integer</a> a0, <a href="#Integer">Integer</a> a1)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomModulePolynom-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomModulePolynom-setModule">setModule</a>(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self, <a href="#Integer">Integer</a> module)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerBinomModulePolynom&gt;</dt>
<dd><tt>delete_IntegerBinomModulePolynom(<a href="#IntegerBinomModulePolynom">IntegerBinomModulePolynom</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ std::vector&lt;(AAL::IntegerBinom)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerBinomVector">IntegerBinomVector</a>
</div>
<div id="IntegerBinomVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerBinomVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerBinomVector-__bool__"><strong>__bool__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-__bool__">__bool__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl>
<dt>
<a name="IntegerBinomVector-__delitem__"><strong>__delitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__delitem__">__delitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i)<br><a href="#IntegerBinomVector-__delitem__">__delitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, PySliceObject * slice)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-__delslice__"><strong>__delslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__delslice__">__delslice__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerBinomVector-__getitem__"><strong>__getitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__getitem__">__getitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, PySliceObject * slice) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a><br><a href="#IntegerBinomVector-__getitem__">__getitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-__getslice__"><strong>__getslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__getslice__">__getslice__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type j) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinom">IntegerBinom</a>)&gt; self) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a><br><a href="#IntegerBinomVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinom">IntegerBinom</a>)&gt; self, <a href="#IntegerBinomVector">IntegerBinomVector</a> arg2) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a><br><a href="#IntegerBinomVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinom">IntegerBinom</a>)&gt; self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type size) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a><br><a href="#IntegerBinomVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#IntegerBinom">IntegerBinom</a>)&gt; self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type size, <a href="#IntegerBinom">IntegerBinom</a> value) -&gt; <a href="#IntegerBinomVector">IntegerBinomVector</a></tt></dd>
</dl>
<dl><dt>
<a name="IntegerBinomVector-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl>
<dt>
<a name="IntegerBinomVector-__len__"><strong>__len__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-__len__">__len__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-__nonzero__"><strong>__nonzero__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-__nonzero__">__nonzero__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<a name="IntegerBinomVector-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerBinomVector-__setitem__"><strong>__setitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__setitem__">__setitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, PySliceObject * slice, <a href="#IntegerBinomVector">IntegerBinomVector</a> v)<br><a href="#IntegerBinomVector-__setitem__">__setitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, PySliceObject * slice)<br><a href="#IntegerBinomVector-__setitem__">__setitem__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i, <a href="#IntegerBinom">IntegerBinom</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-__setslice__"><strong>__setslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-__setslice__">__setslice__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type j, <br>
    <a href="#IntegerBinomVector">IntegerBinomVector</a> v=std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a>,std::allocator&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt; &gt;())<br><a href="#IntegerBinomVector-__setslice__">__setslice__</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-append"><strong>append</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-append">append</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, <a href="#IntegerBinom">IntegerBinom</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-assign"><strong>assign</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-assign">assign</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type n, <a href="#IntegerBinom">IntegerBinom</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-back"><strong>back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-back">back</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-begin"><strong>begin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-begin">begin</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-capacity"><strong>capacity</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-capacity">capacity</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-clear"><strong>clear</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-clear">clear</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-empty"><strong>empty</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-empty">empty</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-end"><strong>end</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-end">end</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-erase"><strong>erase</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-erase">erase</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator pos) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator<br><a href="#IntegerBinomVector-erase">erase</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator first, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator last) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-front"><strong>front</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-front">front</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-get_allocator"><strong>get_allocator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-get_allocator">get_allocator</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::allocator_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-insert"><strong>insert</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-insert">insert</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator pos, <a href="#IntegerBinom">IntegerBinom</a> x) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator<br><a href="#IntegerBinomVector-insert">insert</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::iterator pos, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type n, <br>
    <a href="#IntegerBinom">IntegerBinom</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-iterator"><strong>iterator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-iterator">iterator</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; <a href="#SwigPyIterator">SwigPyIterator</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-pop"><strong>pop</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-pop">pop</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; <a href="#IntegerBinom">IntegerBinom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-pop_back"><strong>pop_back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-pop_back">pop_back</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-push_back"><strong>push_back</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-push_back">push_back</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, <a href="#IntegerBinom">IntegerBinom</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-rbegin"><strong>rbegin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-rbegin">rbegin</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-rend"><strong>rend</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-rend">rend</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-reserve"><strong>reserve</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-reserve">reserve</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type n)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-resize"><strong>resize</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-resize">resize</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type new_size)<br><a href="#IntegerBinomVector-resize">resize</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type new_size, <a href="#IntegerBinom">IntegerBinom</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-size"><strong>size</strong></a>(self)</dt>
<dd><tt><a href="#IntegerBinomVector-size">size</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self) -&gt; std::vector&lt; AAL::<a href="#IntegerBinom">IntegerBinom</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerBinomVector-swap"><strong>swap</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerBinomVector-swap">swap</a>(<a href="#IntegerBinomVector">IntegerBinomVector</a> self, <a href="#IntegerBinomVector">IntegerBinomVector</a> v)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerBinomVector&gt;</dt>
<dd><tt>delete_IntegerBinomVector(<a href="#IntegerBinomVector">IntegerBinomVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ std::vector&lt;(p.AAL::Integer)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerPVector">IntegerPVector</a>
</div>
<div id="IntegerPVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerPVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerPVector-__bool__"><strong>__bool__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-__bool__">__bool__</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl>
<dt>
<a name="IntegerPVector-__delitem__"><strong>__delitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__delitem__">__delitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i)<br><a href="#IntegerPVector-__delitem__">__delitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, PySliceObject * slice)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-__delslice__"><strong>__delslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__delslice__">__delslice__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type j)</tt></dd>
</dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerPVector-__getitem__"><strong>__getitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__getitem__">__getitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, PySliceObject * slice) -&gt; <a href="#IntegerPVector">IntegerPVector</a><br><a href="#IntegerPVector-__getitem__">__getitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-__getslice__"><strong>__getslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__getslice__">__getslice__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type j) -&gt; <a href="#IntegerPVector">IntegerPVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__init__">__init__</a>(std::vector&lt;(p.AAL::<a href="#Integer">Integer</a>)&gt; self) -&gt; <a href="#IntegerPVector">IntegerPVector</a><br><a href="#IntegerPVector-__init__">__init__</a>(std::vector&lt;(p.AAL::<a href="#Integer">Integer</a>)&gt; self, <a href="#IntegerPVector">IntegerPVector</a> arg2) -&gt; <a href="#IntegerPVector">IntegerPVector</a><br><a href="#IntegerPVector-__init__">__init__</a>(std::vector&lt;(p.AAL::<a href="#Integer">Integer</a>)&gt; self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type size) -&gt; <a href="#IntegerPVector">IntegerPVector</a><br><a href="#IntegerPVector-__init__">__init__</a>(std::vector&lt;(p.AAL::<a href="#Integer">Integer</a>)&gt; self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type size, <a href="#Integer">Integer</a> value) -&gt; <a href="#IntegerPVector">IntegerPVector</a></tt></dd>
</dl>
<dl><dt>
<a name="IntegerPVector-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl>
<dt>
<a name="IntegerPVector-__len__"><strong>__len__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-__len__">__len__</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-__nonzero__"><strong>__nonzero__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-__nonzero__">__nonzero__</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<a name="IntegerPVector-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerPVector-__setitem__"><strong>__setitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__setitem__">__setitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, PySliceObject * slice, <a href="#IntegerPVector">IntegerPVector</a> v)<br><a href="#IntegerPVector-__setitem__">__setitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, PySliceObject * slice)<br><a href="#IntegerPVector-__setitem__">__setitem__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-__setslice__"><strong>__setslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-__setslice__">__setslice__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type j, <br>
    <a href="#IntegerPVector">IntegerPVector</a> v=std::vector&lt; AAL::<a href="#Integer">Integer</a> *,std::allocator&lt; AAL::<a href="#Integer">Integer</a> * &gt; &gt;())<br><a href="#IntegerPVector-__setslice__">__setslice__</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::difference_type j)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-append"><strong>append</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-append">append</a>(<a href="#IntegerPVector">IntegerPVector</a> self, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-assign"><strong>assign</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-assign">assign</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type n, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-back"><strong>back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-back">back</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-begin"><strong>begin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-begin">begin</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-capacity"><strong>capacity</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-capacity">capacity</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-clear"><strong>clear</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-clear">clear</a>(<a href="#IntegerPVector">IntegerPVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-empty"><strong>empty</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-empty">empty</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-end"><strong>end</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-end">end</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-erase"><strong>erase</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-erase">erase</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator pos) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator<br><a href="#IntegerPVector-erase">erase</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator first, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator last) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-front"><strong>front</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-front">front</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-get_allocator"><strong>get_allocator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-get_allocator">get_allocator</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::allocator_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-insert"><strong>insert</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-insert">insert</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator pos, <a href="#Integer">Integer</a> x) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator<br><a href="#IntegerPVector-insert">insert</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::iterator pos, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type n, <br>
    <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-iterator"><strong>iterator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-iterator">iterator</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; <a href="#SwigPyIterator">SwigPyIterator</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-pop"><strong>pop</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-pop">pop</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-pop_back"><strong>pop_back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-pop_back">pop_back</a>(<a href="#IntegerPVector">IntegerPVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-push_back"><strong>push_back</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-push_back">push_back</a>(<a href="#IntegerPVector">IntegerPVector</a> self, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-rbegin"><strong>rbegin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-rbegin">rbegin</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-rend"><strong>rend</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-rend">rend</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-reserve"><strong>reserve</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-reserve">reserve</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type n)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-resize"><strong>resize</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-resize">resize</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type new_size)<br><a href="#IntegerPVector-resize">resize</a>(<a href="#IntegerPVector">IntegerPVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type new_size, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-size"><strong>size</strong></a>(self)</dt>
<dd><tt><a href="#IntegerPVector-size">size</a>(<a href="#IntegerPVector">IntegerPVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> * &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerPVector-swap"><strong>swap</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerPVector-swap">swap</a>(<a href="#IntegerPVector">IntegerPVector</a> self, <a href="#IntegerPVector">IntegerPVector</a> v)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerPVector&gt;</dt>
<dd><tt>delete_IntegerPVector(<a href="#IntegerPVector">IntegerPVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ std::vector&lt;(AAL::Integer)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#IntegerVector">IntegerVector</a>
</div>
<div id="IntegerVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class IntegerVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="IntegerVector-__bool__"><strong>__bool__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-__bool__">__bool__</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl>
<dt>
<a name="IntegerVector-__delitem__"><strong>__delitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__delitem__">__delitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i)<br><a href="#IntegerVector-__delitem__">__delitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, PySliceObject * slice)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-__delslice__"><strong>__delslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__delslice__">__delslice__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="IntegerVector-__getitem__"><strong>__getitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__getitem__">__getitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, PySliceObject * slice) -&gt; <a href="#IntegerVector">IntegerVector</a><br><a href="#IntegerVector-__getitem__">__getitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-__getslice__"><strong>__getslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__getslice__">__getslice__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type j) -&gt; <a href="#IntegerVector">IntegerVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#Integer">Integer</a>)&gt; self) -&gt; <a href="#IntegerVector">IntegerVector</a><br><a href="#IntegerVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#Integer">Integer</a>)&gt; self, <a href="#IntegerVector">IntegerVector</a> arg2) -&gt; <a href="#IntegerVector">IntegerVector</a><br><a href="#IntegerVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#Integer">Integer</a>)&gt; self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type size) -&gt; <a href="#IntegerVector">IntegerVector</a><br><a href="#IntegerVector-__init__">__init__</a>(std::vector&lt;(AAL::<a href="#Integer">Integer</a>)&gt; self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type size, <a href="#Integer">Integer</a> value) -&gt; <a href="#IntegerVector">IntegerVector</a></tt></dd>
</dl>
<dl><dt>
<a name="IntegerVector-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl>
<dt>
<a name="IntegerVector-__len__"><strong>__len__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-__len__">__len__</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-__nonzero__"><strong>__nonzero__</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-__nonzero__">__nonzero__</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<a name="IntegerVector-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="IntegerVector-__setitem__"><strong>__setitem__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__setitem__">__setitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, PySliceObject * slice, <a href="#IntegerVector">IntegerVector</a> v)<br><a href="#IntegerVector-__setitem__">__setitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, PySliceObject * slice)<br><a href="#IntegerVector-__setitem__">__setitem__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-__setslice__"><strong>__setslice__</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-__setslice__">__setslice__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type j, <br>
    <a href="#IntegerVector">IntegerVector</a> v=std::vector&lt; AAL::<a href="#Integer">Integer</a>,std::allocator&lt; AAL::<a href="#Integer">Integer</a> &gt; &gt;())<br><a href="#IntegerVector-__setslice__">__setslice__</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type i, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::difference_type j)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-append"><strong>append</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-append">append</a>(<a href="#IntegerVector">IntegerVector</a> self, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-assign"><strong>assign</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-assign">assign</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type n, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-back"><strong>back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-back">back</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-begin"><strong>begin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-begin">begin</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-capacity"><strong>capacity</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-capacity">capacity</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-clear"><strong>clear</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-clear">clear</a>(<a href="#IntegerVector">IntegerVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-empty"><strong>empty</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-empty">empty</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-end"><strong>end</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-end">end</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-erase"><strong>erase</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-erase">erase</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator pos) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator<br><a href="#IntegerVector-erase">erase</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator first, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator last) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-front"><strong>front</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-front">front</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-get_allocator"><strong>get_allocator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-get_allocator">get_allocator</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::allocator_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-insert"><strong>insert</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-insert">insert</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator pos, <a href="#Integer">Integer</a> x) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator<br><a href="#IntegerVector-insert">insert</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::iterator pos, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type n, <br>
    <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-iterator"><strong>iterator</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-iterator">iterator</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; <a href="#SwigPyIterator">SwigPyIterator</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-pop"><strong>pop</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-pop">pop</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-pop_back"><strong>pop_back</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-pop_back">pop_back</a>(<a href="#IntegerVector">IntegerVector</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-push_back"><strong>push_back</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-push_back">push_back</a>(<a href="#IntegerVector">IntegerVector</a> self, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-rbegin"><strong>rbegin</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-rbegin">rbegin</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-rend"><strong>rend</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-rend">rend</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::reverse_iterator</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-reserve"><strong>reserve</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-reserve">reserve</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type n)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-resize"><strong>resize</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-resize">resize</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type new_size)<br><a href="#IntegerVector-resize">resize</a>(<a href="#IntegerVector">IntegerVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type new_size, <a href="#Integer">Integer</a> x)</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-size"><strong>size</strong></a>(self)</dt>
<dd><tt><a href="#IntegerVector-size">size</a>(<a href="#IntegerVector">IntegerVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="IntegerVector-swap"><strong>swap</strong></a>(self, *args)</dt>
<dd><tt><a href="#IntegerVector-swap">swap</a>(<a href="#IntegerVector">IntegerVector</a> self, <a href="#IntegerVector">IntegerVector</a> v)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_IntegerVector&gt;</dt>
<dd><tt>delete_IntegerVector(<a href="#IntegerVector">IntegerVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::Matrix class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#Matrix">Matrix</a>
</div>
<div id="Matrix" class="accordion-body collapse"><div class="accordion-inner">
<h4>class Matrix(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="Matrix-SolveLinearEquationSystem"><strong>SolveLinearEquationSystem</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-SolveLinearEquationSystem">SolveLinearEquationSystem</a>(<a href="#Matrix">Matrix</a> self, <a href="#Matrix">Matrix</a> A, <a href="#Polynom">Polynom</a> const &amp; right) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-ToString"><strong>ToString</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-ToString">ToString</a>(<a href="#Matrix">Matrix</a> self) -&gt; vector&lt; string &gt;<br><a href="#Matrix-ToString">ToString</a>(<a href="#Matrix">Matrix</a> self) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-ToStringLine"><strong>ToStringLine</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-ToStringLine">ToStringLine</a>(<a href="#Matrix">Matrix</a> self) -&gt; string</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-ToStringNotNullBits"><strong>ToStringNotNullBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-ToStringNotNullBits">ToStringNotNullBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; string</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-Transpose"><strong>Transpose</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-Transpose">Transpose</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="Matrix-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, <a href="#Matrix">Matrix</a> matrix) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, AAL::<a href="#Matrix">Matrix</a>::CodingSystem aCodeWord, AAL::uint aColCount, AAL::uint aRowCount) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, AAL::<a href="#Matrix">Matrix</a>::CodingSystem aCodeWord, AAL::uint aColCount, AAL::uint aRowCount, bool aValue) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, AAL::<a href="#Matrix">Matrix</a>::CodingSystem aCodeWord, AAL::uint aColCount, AAL::uint aRowCount, vector&lt; <a href="#Polynom">Polynom</a> * &gt; aNewMatrix) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, AAL::<a href="#Matrix">Matrix</a>::CodingSystem aCodeWord, AAL::uint aColCount, AAL::uint aRowCount, vector&lt; string &gt; aNewMatrix) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, vector&lt; <a href="#Polynom">Polynom</a> * &gt; aNewMatrix) -&gt; <a href="#Matrix">Matrix</a><br><a href="#Matrix-__init__">__init__</a>(AAL::<a href="#Matrix">Matrix</a> self, vector&lt; string &gt; aNewMatrix) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-__repr__">__repr__</a>(<a href="#Matrix">Matrix</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="Matrix-conversionMatrix"><strong>conversionMatrix</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-conversionMatrix">conversionMatrix</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-diagWithoutNonsign"><strong>diagWithoutNonsign</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-diagWithoutNonsign">diagWithoutNonsign</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausLeftDiagBits"><strong>gausLeftDiagBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-gausLeftDiagBits">gausLeftDiagBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausLeftTrianBits"><strong>gausLeftTrianBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-gausLeftTrianBits">gausLeftTrianBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausRightDiag"><strong>gausRightDiag</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-gausRightDiag">gausRightDiag</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausRightDiagBits"><strong>gausRightDiagBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-gausRightDiagBits">gausRightDiagBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausRightDiagForEquation"><strong>gausRightDiagForEquation</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-gausRightDiagForEquation">gausRightDiagForEquation</a>(<a href="#Matrix">Matrix</a> self, <a href="#Polynom">Polynom</a> &amp; right) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausRightTrian"><strong>gausRightTrian</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-gausRightTrian">gausRightTrian</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausRightTrianBits"><strong>gausRightTrianBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-gausRightTrianBits">gausRightTrianBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-gausRightTrianForEquation"><strong>gausRightTrianForEquation</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-gausRightTrianForEquation">gausRightTrianForEquation</a>(<a href="#Matrix">Matrix</a> self, <a href="#Polynom">Polynom</a> &amp; right) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-getBit">getBit</a>(<a href="#Matrix">Matrix</a> self, AAL::uint nRowPosition, AAL::uint nColPosition) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getCoding"><strong>getCoding</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getCoding">getCoding</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::<a href="#Matrix">Matrix</a>::CodingSystem</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getColCount"><strong>getColCount</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getColCount">getColCount</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getColCountMatrixByte"><strong>getColCountMatrixByte</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getColCountMatrixByte">getColCountMatrixByte</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getElemMatrix"><strong>getElemMatrix</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-getElemMatrix">getElemMatrix</a>(<a href="#Matrix">Matrix</a> self, int i) -&gt; <a href="#Polynom">Polynom</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getRowCount"><strong>getRowCount</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getRowCount">getRowCount</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getRowCountMatrixByte"><strong>getRowCountMatrixByte</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getRowCountMatrixByte">getRowCountMatrixByte</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getSize"><strong>getSize</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getSize">getSize</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getSizeMatrixBits"><strong>getSizeMatrixBits</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-getSizeMatrixBits">getSizeMatrixBits</a>(<a href="#Matrix">Matrix</a> self, AAL::uint &amp; nColCount, AAL::uint &amp; nRowCount)</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getSizeWordInBits"><strong>getSizeWordInBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getSizeWordInBits">getSizeWordInBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-getTrianType"><strong>getTrianType</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-getTrianType">getTrianType</a>(<a href="#Matrix">Matrix</a> self) -&gt; AAL::<a href="#Matrix">Matrix</a>::TrianType</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-i_to_str"><strong>i_to_str</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-i_to_str">i_to_str</a>(<a href="#Matrix">Matrix</a> self, AAL::uint x) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-isZero">isZero</a>(<a href="#Matrix">Matrix</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-konovalcevLeftTrianBits"><strong>konovalcevLeftTrianBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-konovalcevLeftTrianBits">konovalcevLeftTrianBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-konovalcevRightTrian"><strong>konovalcevRightTrian</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-konovalcevRightTrian">konovalcevRightTrian</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-konovalcevRightTrianBits"><strong>konovalcevRightTrianBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-konovalcevRightTrianBits">konovalcevRightTrianBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-mul"><strong>mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-mul">mul</a>(<a href="#Matrix">Matrix</a> self, <a href="#Matrix">Matrix</a> mtA, <a href="#Matrix">Matrix</a> mtB) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-nonsignMatrix"><strong>nonsignMatrix</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-nonsignMatrix">nonsignMatrix</a>(<a href="#Matrix">Matrix</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-reverseLeftBits"><strong>reverseLeftBits</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-reverseLeftBits">reverseLeftBits</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-reverseRight"><strong>reverseRight</strong></a>(self)</dt>
<dd><tt><a href="#Matrix-reverseRight">reverseRight</a>(<a href="#Matrix">Matrix</a> self) -&gt; <a href="#Matrix">Matrix</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-setBit">setBit</a>(<a href="#Matrix">Matrix</a> self, AAL::uint nRowPosition, AAL::uint nColPosition, bool bValue=True)<br><a href="#Matrix-setBit">setBit</a>(<a href="#Matrix">Matrix</a> self, AAL::uint nRowPosition, AAL::uint nColPosition)</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-setCoding"><strong>setCoding</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-setCoding">setCoding</a>(<a href="#Matrix">Matrix</a> self, AAL::<a href="#Matrix">Matrix</a>::CodingSystem aCodeWord)</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-setElemMatrix"><strong>setElemMatrix</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-setElemMatrix">setElemMatrix</a>(<a href="#Matrix">Matrix</a> self, AAL::uint i, <a href="#Polynom">Polynom</a> &amp; newElem)</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-setSize"><strong>setSize</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-setSize">setSize</a>(<a href="#Matrix">Matrix</a> self, AAL::uint aSize)</tt></dd>
</dl>
<dl>
<dt>
<a name="Matrix-setSizeMatrixBits"><strong>setSizeMatrixBits</strong></a>(self, *args)</dt>
<dd><tt><a href="#Matrix-setSizeMatrixBits">setSizeMatrixBits</a>(<a href="#Matrix">Matrix</a> self, AAL::uint nColCount, AAL::uint nRowCount)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl><dt>
<strong>LEFT</strong> = 2</dt></dl>
<dl><dt>
<strong>NONE</strong> = 0</dt></dl>
<dl><dt>
<strong>ON_COLUMN</strong> = 2</dt></dl>
<dl><dt>
<strong>ON_LINE</strong> = 1</dt></dl>
<dl><dt>
<strong>RIGHT</strong> = 1</dt></dl>
<dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_Matrix&gt;</dt>
<dd><tt>delete_Matrix(<a href="#Matrix">Matrix</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::NonSuperSingularEllipticCurve class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a>
</div>
<div id="NonSuperSingularEllipticCurve" class="accordion-body collapse"><div class="accordion-inner">
<h4>class NonSuperSingularEllipticCurve(EllipticCurveGF2)</h4>
<td width="100%">
<dl>
<dt>Method resolution order:</dt>
<dd><a href="AAL.html#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a></dd>
<dd><a href="AAL.html#EllipticCurveGF2">EllipticCurveGF2</a></dd>
<dd><a href="__builtin__.html#object">__builtin__.object</a></dd>
</dl>
<hr>
Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-__init__">__init__</a>(AAL::<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; <a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a><br><a href="#NonSuperSingularEllipticCurve-__init__">__init__</a>(AAL::<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> module, <a href="#Polynom">Polynom</a> a2, <a href="#Polynom">Polynom</a> a6) -&gt; <a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a><br><a href="#NonSuperSingularEllipticCurve-__init__">__init__</a>(AAL::<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> eCurve) -&gt; <a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-__repr__">__repr__</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-equals"><strong>equals</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-equals">equals</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#EllipticCurveGF2">EllipticCurveGF2</a> eCurve) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-getA2"><strong>getA2</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-getA2">getA2</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-getA6"><strong>getA6</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-getA6">getA6</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-getOrder"><strong>getOrder</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-getOrder">getOrder</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-hasY"><strong>hasY</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-hasY">hasY</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> x) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-inGroup"><strong>inGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-inGroup">inGroup</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-isNonSuperSingular"><strong>isNonSuperSingular</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-isNonSuperSingular">isNonSuperSingular</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-isSuperSingular"><strong>isSuperSingular</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-isSuperSingular">isSuperSingular</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-rightSide"><strong>rightSide</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-rightSide">rightSide</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> x) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-setA2"><strong>setA2</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-setA2">setA2</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> a2) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-setA6"><strong>setA6</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-setA6">setA6</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> a6) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticCurve-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-setModule">setModule</a>(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_NonSuperSingularEllipticCurve&gt;</dt>
<dd><tt>delete_NonSuperSingularEllipticCurve(<a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
<hr>
Methods inherited from <a href="AAL.html#EllipticCurveGF2">EllipticCurveGF2</a>:<br><dl>
<dt>
<a name="NonSuperSingularEllipticCurve-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticCurve-getModule">getModule</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<hr>
Data descriptors inherited from <a href="AAL.html#EllipticCurveGF2">EllipticCurveGF2</a>:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::NonSuperSingularEllipticPoint class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a>
</div>
<div id="NonSuperSingularEllipticPoint" class="accordion-body collapse"><div class="accordion-inner">
<h4>class NonSuperSingularEllipticPoint(EllipticPointGF2)</h4>
<td width="100%">
<dl>
<dt>Method resolution order:</dt>
<dd><a href="AAL.html#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a></dd>
<dd><a href="AAL.html#EllipticPointGF2">EllipticPointGF2</a></dd>
<dd><a href="__builtin__.html#object">__builtin__.object</a></dd>
</dl>
<hr>
Methods defined here:<br><dl>
<dt>
<a name="NonSuperSingularEllipticPoint-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-Add">Add</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint1, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint2) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-Double"><strong>Double</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-Double">Double</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a><br><a href="#NonSuperSingularEllipticPoint-Double">Double</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> e) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-Mul">Mul</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-Negate"><strong>Negate</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-Negate">Negate</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a><br><a href="#NonSuperSingularEllipticPoint-Negate">Negate</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-__init__">__init__</a>(AAL::<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self) -&gt; <a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a><br><a href="#NonSuperSingularEllipticPoint-__init__">__init__</a>(AAL::<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a> eCurve) -&gt; <a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a><br><a href="#NonSuperSingularEllipticPoint-__init__">__init__</a>(AAL::<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> ePoint) -&gt; <a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a></tt></dd>
</dl>
<dl><dt>
<a name="NonSuperSingularEllipticPoint-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-setCurve"><strong>setCurve</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-setCurve">setCurve</a>(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self, <a href="#EllipticCurveGF2">EllipticCurveGF2</a> eCurve) -&gt; <a href="#NonSuperSingularEllipticCurve">NonSuperSingularEllipticCurve</a></tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_NonSuperSingularEllipticPoint&gt;</dt>
<dd><tt>delete_NonSuperSingularEllipticPoint(<a href="#NonSuperSingularEllipticPoint">NonSuperSingularEllipticPoint</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
<hr>
Methods inherited from <a href="AAL.html#EllipticPointGF2">EllipticPointGF2</a>:<br><dl>
<dt>
<a name="NonSuperSingularEllipticPoint-DLK"><strong>DLK</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-DLK">DLK</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint1, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint2, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; t, int n, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; b, <br>
    <a href="#Polynom">Polynom</a> mod) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-Generate"><strong>Generate</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-Generate">Generate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-WrappingGenerate"><strong>WrappingGenerate</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-WrappingGenerate">WrappingGenerate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> xforwrap) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-__iadd__">__iadd__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-__imul__">__imul__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-findRo"><strong>findRo</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-findRo">findRo</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> module, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; b) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-getCurve"><strong>getCurve</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-getCurve">getCurve</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticCurveGF2">EllipticCurveGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-getX"><strong>getX</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-getX">getX</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-getY"><strong>getY</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-getY">getY</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-isInfinite"><strong>isInfinite</strong></a>(self)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-isInfinite">isInfinite</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-setInfinite"><strong>setInfinite</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-setInfinite">setInfinite</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, bool infinite) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NonSuperSingularEllipticPoint-setXY"><strong>setXY</strong></a>(self, *args)</dt>
<dd><tt><a href="#NonSuperSingularEllipticPoint-setXY">setXY</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<hr>
Data descriptors inherited from <a href="AAL.html#EllipticPointGF2">EllipticPointGF2</a>:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::NumberVector class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#NumberVector">NumberVector</a>
</div>
<div id="NumberVector" class="accordion-body collapse"><div class="accordion-inner">
<h4>class NumberVector(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="NumberVector-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-Add">Add</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> a, <a href="#NumberVector">NumberVector</a> b) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-Compare"><strong>Compare</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-Compare">Compare</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> numberVector) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-ModAdd"><strong>ModAdd</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-ModAdd">ModAdd</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> a, <a href="#NumberVector">NumberVector</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-ModSub"><strong>ModSub</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-ModSub">ModSub</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> a, <a href="#NumberVector">NumberVector</a> b, <a href="#Integer">Integer</a> module) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-Parse"><strong>Parse</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-Parse">Parse</a>(<a href="#NumberVector">NumberVector</a> self, std::string const dataString, AAL::NumericSystem system=Dec) -&gt; <a href="#NumberVector">NumberVector</a><br><a href="#NumberVector-Parse">Parse</a>(<a href="#NumberVector">NumberVector</a> self, std::string const dataString) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-Sub"><strong>Sub</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-Sub">Sub</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> a, <a href="#NumberVector">NumberVector</a> b) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-ToString"><strong>ToString</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-ToString">ToString</a>(<a href="#NumberVector">NumberVector</a> self, AAL::NumericSystem system=Dec) -&gt; std::string<br><a href="#NumberVector-ToString">ToString</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; std::string</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="NumberVector-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-__iadd__">__iadd__</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> numberVector) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-__init__">__init__</a>(AAL::<a href="#NumberVector">NumberVector</a> self) -&gt; <a href="#NumberVector">NumberVector</a><br><a href="#NumberVector-__init__">__init__</a>(AAL::<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> numberVector) -&gt; <a href="#NumberVector">NumberVector</a><br><a href="#NumberVector-__init__">__init__</a>(AAL::<a href="#NumberVector">NumberVector</a> self, std::string const dataString, AAL::NumericSystem system=Dec) -&gt; <a href="#NumberVector">NumberVector</a><br><a href="#NumberVector-__init__">__init__</a>(AAL::<a href="#NumberVector">NumberVector</a> self, std::string const dataString) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-__isub__"><strong>__isub__</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-__isub__">__isub__</a>(<a href="#NumberVector">NumberVector</a> self, <a href="#NumberVector">NumberVector</a> numberVector) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#NumberVector-__repr__">__repr__</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="NumberVector-getNumber"><strong>getNumber</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-getNumber">getNumber</a>(<a href="#NumberVector">NumberVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> *,std::allocator&lt; AAL::<a href="#Integer">Integer</a> * &gt; &gt;::size_type position) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#NumberVector-getNumberBits">getNumberBits</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-getNumberBytes"><strong>getNumberBytes</strong></a>(self)</dt>
<dd><tt><a href="#NumberVector-getNumberBytes">getNumberBytes</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-getNumberDigits"><strong>getNumberDigits</strong></a>(self)</dt>
<dd><tt><a href="#NumberVector-getNumberDigits">getNumberDigits</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; std::vector&lt; AAL::<a href="#Integer">Integer</a> *,std::allocator&lt; AAL::<a href="#Integer">Integer</a> * &gt; &gt;::size_type</tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#NumberVector-isZero">isZero</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-setNumber"><strong>setNumber</strong></a>(self, *args)</dt>
<dd><tt><a href="#NumberVector-setNumber">setNumber</a>(<a href="#NumberVector">NumberVector</a> self, std::vector&lt; AAL::<a href="#Integer">Integer</a> *,std::allocator&lt; AAL::<a href="#Integer">Integer</a> * &gt; &gt;::size_type position, <br>
    <a href="#Integer">Integer</a> integer)</tt></dd>
</dl>
<dl>
<dt>
<a name="NumberVector-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#NumberVector-setZero">setZero</a>(<a href="#NumberVector">NumberVector</a> self) -&gt; <a href="#NumberVector">NumberVector</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_NumberVector&gt;</dt>
<dd><tt>delete_NumberVector(<a href="#NumberVector">NumberVector</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::Polynom class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#Polynom">Polynom</a>
</div>
<div id="Polynom" class="accordion-body collapse"><div class="accordion-inner">
<h4>class Polynom(ucharBasicType)</h4>
<td width="100%">
<dl>
<dt>Method resolution order:</dt>
<dd><a href="AAL.html#Polynom">Polynom</a></dd>
<dd><a href="AAL.html#ucharBasicType">ucharBasicType</a></dd>
<dd><a href="__builtin__.html#object">__builtin__.object</a></dd>
</dl>
<hr>
Methods defined here:<br><dl>
<dt>
<a name="Polynom-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Add">Add</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-AddInGF2_n"><strong>AddInGF2_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-AddInGF2_n">AddInGF2_n</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-And"><strong>And</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-And">And</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-BinaryGCD"><strong>BinaryGCD</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-BinaryGCD">BinaryGCD</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Compare"><strong>Compare</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Compare">Compare</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Div"><strong>Div</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Div">Div</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> remainder=None) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Div">Div</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-DivInGF2_n"><strong>DivInGF2_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-DivInGF2_n">DivInGF2_n</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module, <a href="#Polynom">Polynom</a> remainder) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Euclid"><strong>Euclid</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Euclid">Euclid</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ExEuclid"><strong>ExEuclid</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ExEuclid">ExEuclid</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-FastMod"><strong>FastMod</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-FastMod">FastMod</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GNBTest"><strong>GNBTest</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GNBTest">GNBTest</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, int const type) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Generate"><strong>Generate</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Generate">Generate</a>(<a href="#Polynom">Polynom</a> self, AAL::uint numberBits) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Generate">Generate</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateIrreducible"><strong>GenerateIrreducible</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateIrreducible">GenerateIrreducible</a>(<a href="#Polynom">Polynom</a> self, AAL::uint nMinNumberBits, AAL::uint nMaxNumberBits, AAL::uint nDegree) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateIrreduciblePrimitivity"><strong>GenerateIrreduciblePrimitivity</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateIrreduciblePrimitivity">GenerateIrreduciblePrimitivity</a>(<a href="#Polynom">Polynom</a> self, AAL::uint nMinNumberBits, AAL::uint nMaxNumberBits, AAL::uint nDegree) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateIrreducibleTrinomial"><strong>GenerateIrreducibleTrinomial</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateIrreducibleTrinomial">GenerateIrreducibleTrinomial</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const nDegree) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateNormal"><strong>GenerateNormal</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateNormal">GenerateNormal</a>(<a href="#Polynom">Polynom</a> self, AAL::uint numberBits) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-GenerateNormal">GenerateNormal</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-GenerateNormal">GenerateNormal</a>(<a href="#Polynom">Polynom</a> self, AAL::uint nMinNumberBits, AAL::uint nMaxNumberBits, AAL::uint nDegree) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateONB1"><strong>GenerateONB1</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateONB1">GenerateONB1</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, <a href="#Polynom">Polynom</a> b, <a href="#Matrix">Matrix</a> A) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateONB1Polynom"><strong>GenerateONB1Polynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateONB1Polynom">GenerateONB1Polynom</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, <a href="#Polynom">Polynom</a> b) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateONB2"><strong>GenerateONB2</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateONB2">GenerateONB2</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, <a href="#Polynom">Polynom</a> b, <a href="#Matrix">Matrix</a> A) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateONB2Polynom"><strong>GenerateONB2Polynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateONB2Polynom">GenerateONB2Polynom</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, <a href="#Polynom">Polynom</a> b) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateONB3"><strong>GenerateONB3</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateONB3">GenerateONB3</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, <a href="#Polynom">Polynom</a> b, <a href="#Matrix">Matrix</a> A) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-GenerateONB3Polynom"><strong>GenerateONB3Polynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-GenerateONB3Polynom">GenerateONB3Polynom</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n, <a href="#Polynom">Polynom</a> b) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-InMulGroup"><strong>InMulGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-InMulGroup">InMulGroup</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> groupModule) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Inverse"><strong>Inverse</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Inverse">Inverse</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Inverse">Inverse</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-InverseGF2_n"><strong>InverseGF2_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-InverseGF2_n">InverseGF2_n</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Mod"><strong>Mod</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Mod">Mod</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Mod">Mod</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ModAdd"><strong>ModAdd</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ModAdd">ModAdd</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ModDiv"><strong>ModDiv</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ModDiv">ModDiv</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module, <a href="#Polynom">Polynom</a> remainder=None) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-ModDiv">ModDiv</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ModMul"><strong>ModMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ModMul">ModMul</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ModPow"><strong>ModPow</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ModPow">ModPow</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Integer">Integer</a> n, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ModSub"><strong>ModSub</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ModSub">ModSub</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Mul">Mul</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-MulGF2_n"><strong>MulGF2_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-MulGF2_n">MulGF2_n</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Not"><strong>Not</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Not">Not</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ONB1Test"><strong>ONB1Test</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ONB1Test">ONB1Test</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ONB2Test"><strong>ONB2Test</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ONB2Test">ONB2Test</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ONB3Test"><strong>ONB3Test</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ONB3Test">ONB3Test</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-OnesComplement"><strong>OnesComplement</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-OnesComplement">OnesComplement</a>(<a href="#Polynom">Polynom</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Or"><strong>Or</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Or">Or</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Parse"><strong>Parse</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Parse">Parse</a>(<a href="#Polynom">Polynom</a> self, std::string const dataString, AAL::PolynomSystem system=BackBin, bool cancel=True) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Parse">Parse</a>(<a href="#Polynom">Polynom</a> self, std::string const dataString, AAL::PolynomSystem system=BackBin) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Parse">Parse</a>(<a href="#Polynom">Polynom</a> self, std::string const dataString) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Pow"><strong>Pow</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Pow">Pow</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Integer">Integer</a> n) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-PowGF2_n"><strong>PowGF2_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-PowGF2_n">PowGF2_n</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Integer">Integer</a> n, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-SchtilbergSuonTheorem"><strong>SchtilbergSuonTheorem</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-SchtilbergSuonTheorem">SchtilbergSuonTheorem</a>(<a href="#Polynom">Polynom</a> self, AAL::uint const k, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Sub"><strong>Sub</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Sub">Sub</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-SubInGF2_n"><strong>SubInGF2_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-SubInGF2_n">SubInGF2_n</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ToString"><strong>ToString</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-ToString">ToString</a>(<a href="#Polynom">Polynom</a> self, std::string const dataString) -&gt; std::string<br><a href="#Polynom-ToString">ToString</a>(<a href="#Polynom">Polynom</a> self, AAL::PolynomSystem system=BackBin) -&gt; std::string<br><a href="#Polynom-ToString">ToString</a>(<a href="#Polynom">Polynom</a> self) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-ToStringByPowers"><strong>ToStringByPowers</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-ToStringByPowers">ToStringByPowers</a>(<a href="#Polynom">Polynom</a> self) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Trace"><strong>Trace</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Trace">Trace</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-Trace">Trace</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-WrappingGenerate"><strong>WrappingGenerate</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-WrappingGenerate">WrappingGenerate</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> forwrap, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Xor"><strong>Xor</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Xor">Xor</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> b) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="Polynom-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__iadd__">__iadd__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__iand__"><strong>__iand__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__iand__">__iand__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__idiv__"><strong>__idiv__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__idiv__">__idiv__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__ilshift__"><strong>__ilshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__ilshift__">__ilshift__</a>(<a href="#Polynom">Polynom</a> self, int numberBits) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__imod__"><strong>__imod__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__imod__">__imod__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__imul__">__imul__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__init__">__init__</a>(AAL::<a href="#Polynom">Polynom</a> self) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-__init__">__init__</a>(AAL::<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-__init__">__init__</a>(AAL::<a href="#Polynom">Polynom</a> self, std::string const dataString, AAL::PolynomSystem system=BackBin) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-__init__">__init__</a>(AAL::<a href="#Polynom">Polynom</a> self, std::string const dataString) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-__init__">__init__</a>(AAL::<a href="#Polynom">Polynom</a> self, std::string const dataString, bool in_degres, bool cancel=True) -&gt; <a href="#Polynom">Polynom</a><br><a href="#Polynom-__init__">__init__</a>(AAL::<a href="#Polynom">Polynom</a> self, std::string const dataString, bool in_degres) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__invert__"><strong>__invert__</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-__invert__">__invert__</a>(<a href="#Polynom">Polynom</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__ior__"><strong>__ior__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__ior__">__ior__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__irshift__"><strong>__irshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__irshift__">__irshift__</a>(<a href="#Polynom">Polynom</a> self, int numberBits) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__isub__"><strong>__isub__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__isub__">__isub__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__ixor__"><strong>__ixor__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__ixor__">__ixor__</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> polynom) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__lshift__"><strong>__lshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__lshift__">__lshift__</a>(<a href="#Polynom">Polynom</a> self, int numberBits) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-__repr__">__repr__</a>(<a href="#Polynom">Polynom</a> self) -&gt; char *</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-__rshift__"><strong>__rshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-__rshift__">__rshift__</a>(<a href="#Polynom">Polynom</a> self, int numberBits) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="Polynom-elementOrder"><strong>elementOrder</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-elementOrder">elementOrder</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> groupModule, <a href="#Polynom">Polynom</a> polynom, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getPowersOfPolynom"><strong>getPowersOfPolynom</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-getPowersOfPolynom">getPowersOfPolynom</a>(<a href="#Polynom">Polynom</a> self) -&gt; std::set&lt; AAL::uint &gt;</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-i_to_str"><strong>i_to_str</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-i_to_str">i_to_str</a>(<a href="#Polynom">Polynom</a> self, AAL::uint x) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isIrreducible"><strong>isIrreducible</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-isIrreducible">isIrreducible</a>(<a href="#Polynom">Polynom</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isNormal"><strong>isNormal</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-isNormal">isNormal</a>(<a href="#Polynom">Polynom</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isPolynom"><strong>isPolynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-isPolynom">isPolynom</a>(<a href="#Polynom">Polynom</a> self, AAL::uchar polynom) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isPrimitivity"><strong>isPrimitivity</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-isPrimitivity">isPrimitivity</a>(<a href="#Polynom">Polynom</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isGenerator"><strong>isGenerator</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-isGenerator">isGenerator</a>(<a href="#Polynom">Polynom</a> self, <a href="#Polynom">Polynom</a> groupModule, <a href="#Polynom">Polynom</a> polynom, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-setOne"><strong>setOne</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-setOne">setOne</a>(<a href="#Polynom">Polynom</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-setPolynom"><strong>setPolynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-setPolynom">setPolynom</a>(<a href="#Polynom">Polynom</a> self, AAL::uchar arg2) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-setUnit"><strong>setUnit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-setUnit">setUnit</a>(<a href="#Polynom">Polynom</a> self, AAL::uint degree) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-setZero">setZero</a>(<a href="#Polynom">Polynom</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="Polynom-MulElemPolynoms"><strong>MulElemPolynoms</strong></a>(*args)</dt>
<dd><tt><a href="#Polynom-MulElemPolynoms">MulElemPolynoms</a>(AAL::uchar u, AAL::uchar v) -&gt; AAL::ushort</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_Polynom&gt;</dt>
<dd><tt>delete_Polynom(<a href="#Polynom">Polynom</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'MulElemPolynoms': &lt;function &lt;lambda&gt;&gt;, '_digits': &lt;built-in function ucharBasicType__digits_get&gt;, '_maximumDigits': &lt;built-in function ucharBasicType__maximumDigits_get&gt;, '_numberDigits': &lt;built-in function ucharBasicType__numberDigits_get&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'_digits': &lt;built-in function ucharBasicType__digits_set&gt;, '_maximumDigits': &lt;built-in function ucharBasicType__maximumDigits_set&gt;, '_numberDigits': &lt;built-in function ucharBasicType__numberDigits_set&gt;}</dt></dl>
<hr>
Methods inherited from <a href="AAL.html#ucharBasicType">ucharBasicType</a>:<br><dl>
<dt>
<a name="Polynom-PressMemory"><strong>PressMemory</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-PressMemory">PressMemory</a>(<a href="#ucharBasicType">ucharBasicType</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-Relocation"><strong>Relocation</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-Relocation">Relocation</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint maximumDigits)</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-getBit">getBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getDigit"><strong>getDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-getDigit">getDigit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position) -&gt; unsigned char</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getFirstTrueBit"><strong>getFirstTrueBit</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-getFirstTrueBit">getFirstTrueBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getMaximumDigits"><strong>getMaximumDigits</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-getMaximumDigits">getMaximumDigits</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-getNumberBits">getNumberBits</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getNumberBytes"><strong>getNumberBytes</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-getNumberBytes">getNumberBytes</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-getNumberDigits"><strong>getNumberDigits</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-getNumberDigits">getNumberDigits</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-isOne">isOne</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#Polynom-isZero">isZero</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-setBit">setBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position, bool value=True)<br><a href="#Polynom-setBit">setBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position)</tt></dd>
</dl>
<dl>
<dt>
<a name="Polynom-setDigit"><strong>setDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#Polynom-setDigit">setDigit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position, unsigned char value)</tt></dd>
</dl>
<hr>
Data descriptors inherited from <a href="AAL.html#ucharBasicType">ucharBasicType</a>:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::PolynomGF2_mY_7 class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a>
</div>
<div id="PolynomGF2_mY_7" class="accordion-body collapse"><div class="accordion-inner">
<h4>class PolynomGF2_mY_7(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="PolynomGF2_mY_7-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-Add">Add</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> a, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> b) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-Div"><strong>Div</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-Div">Div</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> a, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> b, <a href="#Polynom">Polynom</a> module, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> remainder) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-FullMul"><strong>FullMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-FullMul">FullMul</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> a, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> b) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-GCD"><strong>GCD</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-GCD">GCD</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> a, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> b, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-MonomialMul"><strong>MonomialMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-MonomialMul">MonomialMul</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> a, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> b) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-Mul">Mul</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> a, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> b) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-NormalMonomialMul"><strong>NormalMonomialMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-NormalMonomialMul">NormalMonomialMul</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> a, int d) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-__iadd__">__iadd__</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> polynom) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-__init__">__init__</a>(AAL::<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a><br><a href="#PolynomGF2_mY_7-__init__">__init__</a>(AAL::<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> polynom) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a><br><a href="#PolynomGF2_mY_7-__init__">__init__</a>(AAL::<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, std::string const a0, std::string const a1, std::string const a2, std::string const a3, <br>
    std::string const a4, std::string const a5, std::string const a6, std::string const module) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-__repr__">__repr__</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-deg"><strong>deg</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-deg">deg</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; int</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA0"><strong>getA0</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA0">getA0</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA1"><strong>getA1</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA1">getA1</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA2"><strong>getA2</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA2">getA2</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA3"><strong>getA3</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA3">getA3</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA4"><strong>getA4</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA4">getA4</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA5"><strong>getA5</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA5">getA5</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getA6"><strong>getA6</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getA6">getA6</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getByIndex"><strong>getByIndex</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getByIndex">getByIndex</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, int index) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getModPolynom"><strong>getModPolynom</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getModPolynom">getModPolynom</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-getModule">getModule</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-isOne">isOne</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-isZero">isZero</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA0"><strong>setA0</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA0">setA0</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA1"><strong>setA1</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA1">setA1</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA2"><strong>setA2</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA2">setA2</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA3"><strong>setA3</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA3">setA3</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA4"><strong>setA4</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA4">setA4</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA5"><strong>setA5</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA5">setA5</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setA6"><strong>setA6</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setA6">setA6</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setByIndex"><strong>setByIndex</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setByIndex">setByIndex</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> a, int index)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setModPolynom"><strong>setModPolynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setModPolynom">setModPolynom</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> modPolynom)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setModule">setModule</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self, <a href="#Polynom">Polynom</a> module)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setOne"><strong>setOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setOne">setOne</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_mY_7-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_mY_7-setZero">setZero</a>(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self) -&gt; <a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_PolynomGF2_mY_7&gt;</dt>
<dd><tt>delete_PolynomGF2_mY_7(<a href="#PolynomGF2_mY_7">PolynomGF2_mY_7</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::PolynomGF2_m_4 class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#PolynomGF2_m_4">PolynomGF2_m_4</a>
</div>
<div id="PolynomGF2_m_4" class="accordion-body collapse"><div class="accordion-inner">
<h4>class PolynomGF2_m_4(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="PolynomGF2_m_4-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-Add">Add</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> a, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> b) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-Inverse"><strong>Inverse</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-Inverse">Inverse</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a><br><a href="#PolynomGF2_m_4-Inverse">Inverse</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> polynom, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-Mul">Mul</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> a, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> b) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-Pow"><strong>Pow</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-Pow">Pow</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> a, <a href="#Integer">Integer</a> n) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-Sqrt"><strong>Sqrt</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-Sqrt">Sqrt</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> a, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-Square"><strong>Square</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-Square">Square</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> a) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-__iadd__">__iadd__</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> polynom) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-__imul__">__imul__</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> polynom) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-__init__">__init__</a>(AAL::<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a><br><a href="#PolynomGF2_m_4-__init__">__init__</a>(AAL::<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> polynom) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a><br><a href="#PolynomGF2_m_4-__init__">__init__</a>(AAL::<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, std::string const a0, std::string const a1, std::string const a2, std::string const a3, <br>
    std::string const module) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-__repr__">__repr__</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-deg"><strong>deg</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-deg">deg</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; int</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-elementOrder"><strong>elementOrder</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-elementOrder">elementOrder</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> groupModule, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> polynom, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-exist"><strong>exist</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-exist">exist</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> a, <a href="#Polynom">Polynom</a> module)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getA0"><strong>getA0</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getA0">getA0</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getA1"><strong>getA1</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getA1">getA1</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getA2"><strong>getA2</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getA2">getA2</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getA3"><strong>getA3</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getA3">getA3</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getByIndex"><strong>getByIndex</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getByIndex">getByIndex</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, int index) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getModPolynom"><strong>getModPolynom</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getModPolynom">getModPolynom</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-getModule">getModule</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-isOne">isOne</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-isZero">isZero</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-isGenerator"><strong>isGenerator</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-isGenerator">isGenerator</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> groupModule, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> polynom, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setA0"><strong>setA0</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setA0">setA0</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setA1"><strong>setA1</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setA1">setA1</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setA2"><strong>setA2</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setA2">setA2</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setA3"><strong>setA3</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setA3">setA3</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> a)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setByIndex"><strong>setByIndex</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setByIndex">setByIndex</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> a, int index)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setModPolynom"><strong>setModPolynom</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setModPolynom">setModPolynom</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> modPolynom)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setModule">setModule</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self, <a href="#Polynom">Polynom</a> module)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setOne"><strong>setOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setOne">setOne</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF2_m_4-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF2_m_4-setZero">setZero</a>(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_PolynomGF2_m_4&gt;</dt>
<dd><tt>delete_PolynomGF2_m_4(<a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::PolynomGF3 class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#PolynomGF3">PolynomGF3</a>
</div>
<div id="PolynomGF3" class="accordion-body collapse"><div class="accordion-inner">
<h4>class PolynomGF3(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="PolynomGF3-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Add">Add</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-AddInGF3_n"><strong>AddInGF3_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-AddInGF3_n">AddInGF3_n</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Div"><strong>Div</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Div">Div</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> remainder=None) -&gt; <a href="#PolynomGF3">PolynomGF3</a><br><a href="#PolynomGF3-Div">Div</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-FastCube"><strong>FastCube</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-FastCube">FastCube</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a1, int len) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-GCD"><strong>GCD</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-GCD">GCD</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-GNBTest"><strong>GNBTest</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-GNBTest">GNBTest</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint const n, int const type) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Generate"><strong>Generate</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Generate">Generate</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a><br><a href="#PolynomGF3-Generate">Generate</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> module, <a href="#PolynomGF3">PolynomGF3</a> m) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-GenerateIrreducible"><strong>GenerateIrreducible</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-GenerateIrreducible">GenerateIrreducible</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint const nDegree) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-InverseMod"><strong>InverseMod</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-InverseMod">InverseMod</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-InverseMod1"><strong>InverseMod1</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-InverseMod1">InverseMod1</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-LegendreSymbol"><strong>LegendreSymbol</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-LegendreSymbol">LegendreSymbol</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Mod"><strong>Mod</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Mod">Mod</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ModAdd"><strong>ModAdd</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ModAdd">ModAdd</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ModMul"><strong>ModMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ModMul">ModMul</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ModPositive"><strong>ModPositive</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ModPositive">ModPositive</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ModPow"><strong>ModPow</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ModPow">ModPow</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#Integer">Integer</a> n, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ModPow1"><strong>ModPow1</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ModPow1">ModPow1</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ModSub"><strong>ModSub</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ModSub">ModSub</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Mul">Mul</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-MulGF3_n"><strong>MulGF3_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-MulGF3_n">MulGF3_n</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ONB1Test"><strong>ONB1Test</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ONB1Test">ONB1Test</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ONB2Test"><strong>ONB2Test</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ONB2Test">ONB2Test</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ONB3Test"><strong>ONB3Test</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-ONB3Test">ONB3Test</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint const n) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Parse"><strong>Parse</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Parse">Parse</a>(<a href="#PolynomGF3">PolynomGF3</a> self, std::string const dataString) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Pow"><strong>Pow</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Pow">Pow</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#Integer">Integer</a> n) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Pow1"><strong>Pow1</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Pow1">Pow1</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-PowGF3_n"><strong>PowGF3_n</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-PowGF3_n">PowGF3_n</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#Integer">Integer</a> n, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Sqrt"><strong>Sqrt</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Sqrt">Sqrt</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> module, <a href="#Integer">Integer</a> s, <a href="#Integer">Integer</a> T) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Square1"><strong>Square1</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Square1">Square1</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> module) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-Sub"><strong>Sub</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-Sub">Sub</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> a, <a href="#PolynomGF3">PolynomGF3</a> b) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ToString"><strong>ToString</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-ToString">ToString</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-ToStringByPowers"><strong>ToStringByPowers</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-ToStringByPowers">ToStringByPowers</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; std::string</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="PolynomGF3-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__iadd__">__iadd__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__idiv__"><strong>__idiv__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__idiv__">__idiv__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__ilshift__"><strong>__ilshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__ilshift__">__ilshift__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, int numberBits) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__imod__"><strong>__imod__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__imod__">__imod__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__imul__">__imul__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__init__">__init__</a>(AAL::<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; <a href="#PolynomGF3">PolynomGF3</a><br><a href="#PolynomGF3-__init__">__init__</a>(AAL::<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#PolynomGF3">PolynomGF3</a><br><a href="#PolynomGF3-__init__">__init__</a>(AAL::<a href="#PolynomGF3">PolynomGF3</a> self, std::string const dataString) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__irshift__"><strong>__irshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__irshift__">__irshift__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, int numberBits) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__isub__"><strong>__isub__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__isub__">__isub__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> polynom) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__lshift__"><strong>__lshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__lshift__">__lshift__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, int numberBits) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-__repr__">__repr__</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; char *</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-__rshift__"><strong>__rshift__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-__rshift__">__rshift__</a>(<a href="#PolynomGF3">PolynomGF3</a> self, int numberBits) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="PolynomGF3-elementOrder"><strong>elementOrder</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-elementOrder">elementOrder</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> groupModule, <a href="#PolynomGF3">PolynomGF3</a> polynom, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-getBit">getBit</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint index) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-getFirstTrueBit"><strong>getFirstTrueBit</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-getFirstTrueBit">getFirstTrueBit</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-getNumberBits">getNumberBits</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-getPowersOfPolynom"><strong>getPowersOfPolynom</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-getPowersOfPolynom">getPowersOfPolynom</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; std::list&lt; std::pair&lt; AAL::uint,AAL::uint &gt; &gt;</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-i_to_str"><strong>i_to_str</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-i_to_str">i_to_str</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint x) -&gt; std::string</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-isIrreducible"><strong>isIrreducible</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-isIrreducible">isIrreducible</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-isOne">isOne</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-isPrimitivity"><strong>isPrimitivity</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-isPrimitivity">isPrimitivity</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-isZero">isZero</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-isGenerator"><strong>isGenerator</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-isGenerator">isGenerator</a>(<a href="#PolynomGF3">PolynomGF3</a> self, <a href="#PolynomGF3">PolynomGF3</a> groupModule, <a href="#PolynomGF3">PolynomGF3</a> polynom, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector, <a href="#Integer">Integer</a> ord) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-setBit">setBit</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint index, AAL::uint bit)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-setNumberDigits"><strong>setNumberDigits</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF3-setNumberDigits">setNumberDigits</a>(<a href="#PolynomGF3">PolynomGF3</a> self, AAL::uint numberDigits)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-setOne"><strong>setOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-setOne">setOne</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-setTwo"><strong>setTwo</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-setTwo">setTwo</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF3-setZero"><strong>setZero</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF3-setZero">setZero</a>(<a href="#PolynomGF3">PolynomGF3</a> self) -&gt; <a href="#PolynomGF3">PolynomGF3</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>A0</strong></dt>
<dd><tt>PolynomGF3_A0_get(PolynomGF3 self) -&gt; Polynom</tt></dd>
</dl>
<dl>
<dt><strong>A1</strong></dt>
<dd><tt>PolynomGF3_A1_get(PolynomGF3 self) -&gt; Polynom</tt></dd>
</dl>
<dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_PolynomGF3&gt;</dt>
<dd><tt>delete_PolynomGF3(<a href="#PolynomGF3">PolynomGF3</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'A0': &lt;built-in function PolynomGF3_A0_get&gt;, 'A1': &lt;built-in function PolynomGF3_A1_get&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'A0': &lt;built-in function PolynomGF3_A0_set&gt;, 'A1': &lt;built-in function PolynomGF3_A1_set&gt;}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::PolynomGF7 class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#PolynomGF7">PolynomGF7</a>
</div>
<div id="PolynomGF7" class="accordion-body collapse"><div class="accordion-inner">
<h4>class PolynomGF7(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="PolynomGF7-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Add">Add</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-Generate"><strong>Generate</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Generate">Generate</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a><br><a href="#PolynomGF7-Generate">Generate</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> module, <a href="#PolynomGF7">PolynomGF7</a> m) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-Inverse"><strong>Inverse</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Inverse">Inverse</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a><br><a href="#PolynomGF7-Inverse">Inverse</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> polynom, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-Mod"><strong>Mod</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Mod">Mod</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-ModAdd"><strong>ModAdd</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-ModAdd">ModAdd</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-ModMul"><strong>ModMul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-ModMul">ModMul</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Mul">Mul</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-MulGF7_14n"><strong>MulGF7_14n</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-MulGF7_14n">MulGF7_14n</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-MulGF7_2n"><strong>MulGF7_2n</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-MulGF7_2n">MulGF7_2n</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b, <a href="#PolynomGF7">PolynomGF7</a> c, <a href="#PolynomGF7">PolynomGF7</a> d, <a href="#PolynomGF7">PolynomGF7</a> module, <a href="#PolynomGF7">PolynomGF7</a> g=None) -&gt; <a href="#PolynomGF7">PolynomGF7</a><br><a href="#PolynomGF7-MulGF7_2n">MulGF7_2n</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b, <a href="#PolynomGF7">PolynomGF7</a> c, <a href="#PolynomGF7">PolynomGF7</a> d, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-MulToConstant"><strong>MulToConstant</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-MulToConstant">MulToConstant</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> b) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-Parse"><strong>Parse</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Parse">Parse</a>(<a href="#PolynomGF7">PolynomGF7</a> self, std::string const dataString) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-Pow"><strong>Pow</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-Pow">Pow</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#Integer">Integer</a> n, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-PowSeven_29"><strong>PowSeven_29</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-PowSeven_29">PowSeven_29</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> a, <a href="#PolynomGF7">PolynomGF7</a> module, <a href="#PolynomGF7">PolynomGF7</a> b, <a href="#PolynomGF7">PolynomGF7</a> ax) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-ToString"><strong>ToString</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF7-ToString">ToString</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; std::string</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="PolynomGF7-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-__iadd__">__iadd__</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> polynom) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-__imod__"><strong>__imod__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-__imod__">__imod__</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> polynom) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-__imul__">__imul__</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> polynom) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-__init__">__init__</a>(AAL::<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; <a href="#PolynomGF7">PolynomGF7</a><br><a href="#PolynomGF7-__init__">__init__</a>(AAL::<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> polynom) -&gt; <a href="#PolynomGF7">PolynomGF7</a><br><a href="#PolynomGF7-__init__">__init__</a>(AAL::<a href="#PolynomGF7">PolynomGF7</a> self, std::string const dataString) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF7-__repr__">__repr__</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="PolynomGF7-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-getBit">getBit</a>(<a href="#PolynomGF7">PolynomGF7</a> self, AAL::uint index) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF7-getNumberBits">getNumberBits</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF7-isOne">isOne</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-isZero"><strong>isZero</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-isZero">isZero</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; bool<br><a href="#PolynomGF7-isZero">isZero</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-setBit">setBit</a>(<a href="#PolynomGF7">PolynomGF7</a> self, AAL::uint index, AAL::uint bit)</tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-setOne"><strong>setOne</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF7-setOne">setOne</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-setTwo"><strong>setTwo</strong></a>(self)</dt>
<dd><tt><a href="#PolynomGF7-setTwo">setTwo</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PolynomGF7-setZero"><strong>setZero</strong></a>(self, *args)</dt>
<dd><tt><a href="#PolynomGF7-setZero">setZero</a>(<a href="#PolynomGF7">PolynomGF7</a> self) -&gt; <a href="#PolynomGF7">PolynomGF7</a><br><a href="#PolynomGF7-setZero">setZero</a>(<a href="#PolynomGF7">PolynomGF7</a> self, <a href="#PolynomGF7">PolynomGF7</a> module) -&gt; <a href="#PolynomGF7">PolynomGF7</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>A0</strong></dt>
<dd><tt>PolynomGF7_A0_get(PolynomGF7 self) -&gt; Polynom</tt></dd>
</dl>
<dl>
<dt><strong>A1</strong></dt>
<dd><tt>PolynomGF7_A1_get(PolynomGF7 self) -&gt; Polynom</tt></dd>
</dl>
<dl>
<dt><strong>A2</strong></dt>
<dd><tt>PolynomGF7_A2_get(PolynomGF7 self) -&gt; Polynom</tt></dd>
</dl>
<dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_PolynomGF7&gt;</dt>
<dd><tt>delete_PolynomGF7(<a href="#PolynomGF7">PolynomGF7</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'A0': &lt;built-in function PolynomGF7_A0_get&gt;, 'A1': &lt;built-in function PolynomGF7_A1_get&gt;, 'A2': &lt;built-in function PolynomGF7_A2_get&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'A0': &lt;built-in function PolynomGF7_A0_set&gt;, 'A1': &lt;built-in function PolynomGF7_A1_set&gt;, 'A2': &lt;built-in function PolynomGF7_A2_set&gt;}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::PrimeTester class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#PrimeTester">PrimeTester</a>
</div>
<div id="PrimeTester" class="accordion-body collapse"><div class="accordion-inner">
<h4>class PrimeTester(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="PrimeTester-ModifiedTestLuka"><strong>ModifiedTestLuka</strong></a>(self, *args)</dt>
<dd><tt><a href="#PrimeTester-ModifiedTestLuka">ModifiedTestLuka</a>(<a href="#PrimeTester">PrimeTester</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PrimeTester-TestLukaLemera"><strong>TestLukaLemera</strong></a>(self, *args)</dt>
<dd><tt><a href="#PrimeTester-TestLukaLemera">TestLukaLemera</a>(<a href="#PrimeTester">PrimeTester</a> self, <a href="#Integer">Integer</a> degree) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="PrimeTester-TestPoklingtona"><strong>TestPoklingtona</strong></a>(self, *args)</dt>
<dd><tt><a href="#PrimeTester-TestPoklingtona">TestPoklingtona</a>(<a href="#PrimeTester">PrimeTester</a> self, <a href="#DecompositionMemberVector">DecompositionMemberVector</a> vector) -&gt; bool</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="PrimeTester-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#PrimeTester-__init__">__init__</a>(AAL::<a href="#PrimeTester">PrimeTester</a> self, <a href="#Integer">Integer</a> number) -&gt; <a href="#PrimeTester">PrimeTester</a></tt></dd>
</dl>
<dl>
<dt>
<a name="PrimeTester-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#PrimeTester-__repr__">__repr__</a>(<a href="#PrimeTester">PrimeTester</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_PrimeTester&gt;</dt>
<dd><tt>delete_PrimeTester(<a href="#PrimeTester">PrimeTester</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::SuperSingularEllipticCurve class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a>
</div>
<div id="SuperSingularEllipticCurve" class="accordion-body collapse"><div class="accordion-inner">
<h4>class SuperSingularEllipticCurve(EllipticCurveGF2)</h4>
<td width="100%">
<dl>
<dt>Method resolution order:</dt>
<dd><a href="AAL.html#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a></dd>
<dd><a href="AAL.html#EllipticCurveGF2">EllipticCurveGF2</a></dd>
<dd><a href="__builtin__.html#object">__builtin__.object</a></dd>
</dl>
<hr>
Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-__init__">__init__</a>(AAL::<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; <a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a><br><a href="#SuperSingularEllipticCurve-__init__">__init__</a>(AAL::<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> module, <a href="#Polynom">Polynom</a> a3, <a href="#Polynom">Polynom</a> a4, <a href="#Polynom">Polynom</a> a6) -&gt; <a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a><br><a href="#SuperSingularEllipticCurve-__init__">__init__</a>(AAL::<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> eCurve) -&gt; <a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-__repr__">__repr__</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-equals"><strong>equals</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-equals">equals</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#EllipticCurveGF2">EllipticCurveGF2</a> eCurve) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-getA3"><strong>getA3</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-getA3">getA3</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-getA4"><strong>getA4</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-getA4">getA4</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-getA6"><strong>getA6</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-getA6">getA6</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-getOrd"><strong>getOrd</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-getOrd">getOrd</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, int step) -&gt; <a href="#Integer">Integer</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-hasY"><strong>hasY</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-hasY">hasY</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> x) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-inGroup"><strong>inGroup</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-inGroup">inGroup</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-isNonSuperSingular"><strong>isNonSuperSingular</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-isNonSuperSingular">isNonSuperSingular</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-isSuperSingular"><strong>isSuperSingular</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-isSuperSingular">isSuperSingular</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-rightSide"><strong>rightSide</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-rightSide">rightSide</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> x) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-setA3"><strong>setA3</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-setA3">setA3</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> a3) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-setA4"><strong>setA4</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-setA4">setA4</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> a4) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-setA6"><strong>setA6</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-setA6">setA6</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> a6) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticCurve-setModule"><strong>setModule</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-setModule">setModule</a>(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self, <a href="#Polynom">Polynom</a> module) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_SuperSingularEllipticCurve&gt;</dt>
<dd><tt>delete_SuperSingularEllipticCurve(<a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
<hr>
Methods inherited from <a href="AAL.html#EllipticCurveGF2">EllipticCurveGF2</a>:<br><dl>
<dt>
<a name="SuperSingularEllipticCurve-getModule"><strong>getModule</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticCurve-getModule">getModule</a>(<a href="#EllipticCurveGF2">EllipticCurveGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<hr>
Data descriptors inherited from <a href="AAL.html#EllipticCurveGF2">EllipticCurveGF2</a>:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::SuperSingularEllipticPoint class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a>
</div>
<div id="SuperSingularEllipticPoint" class="accordion-body collapse"><div class="accordion-inner">
<h4>class SuperSingularEllipticPoint(EllipticPointGF2)</h4>
<td width="100%">
<dl>
<dt>Method resolution order:</dt>
<dd><a href="AAL.html#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a></dd>
<dd><a href="AAL.html#EllipticPointGF2">EllipticPointGF2</a></dd>
<dd><a href="__builtin__.html#object">__builtin__.object</a></dd>
</dl>
<hr>
Methods defined here:<br><dl>
<dt>
<a name="SuperSingularEllipticPoint-Add"><strong>Add</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-Add">Add</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint1, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint2) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-Double"><strong>Double</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-Double">Double</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a><br><a href="#SuperSingularEllipticPoint-Double">Double</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> e) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-Mul"><strong>Mul</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-Mul">Mul</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-Negate"><strong>Negate</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-Negate">Negate</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a><br><a href="#SuperSingularEllipticPoint-Negate">Negate</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-__init__">__init__</a>(AAL::<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self) -&gt; <a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a><br><a href="#SuperSingularEllipticPoint-__init__">__init__</a>(AAL::<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a> eCurve) -&gt; <a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a><br><a href="#SuperSingularEllipticPoint-__init__">__init__</a>(AAL::<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> ePoint) -&gt; <a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a></tt></dd>
</dl>
<dl><dt>
<a name="SuperSingularEllipticPoint-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-setCurve"><strong>setCurve</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-setCurve">setCurve</a>(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self, <a href="#EllipticCurveGF2">EllipticCurveGF2</a> eCurve) -&gt; <a href="#SuperSingularEllipticCurve">SuperSingularEllipticCurve</a></tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_SuperSingularEllipticPoint&gt;</dt>
<dd><tt>delete_SuperSingularEllipticPoint(<a href="#SuperSingularEllipticPoint">SuperSingularEllipticPoint</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
<hr>
Methods inherited from <a href="AAL.html#EllipticPointGF2">EllipticPointGF2</a>:<br><dl>
<dt>
<a name="SuperSingularEllipticPoint-DLK"><strong>DLK</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-DLK">DLK</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint1, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint2, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; t, int n, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; b, <br>
    <a href="#Polynom">Polynom</a> mod) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-Generate"><strong>Generate</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-Generate">Generate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-WrappingGenerate"><strong>WrappingGenerate</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-WrappingGenerate">WrappingGenerate</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> xforwrap) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-__iadd__">__iadd__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#EllipticPointGF2">EllipticPointGF2</a> ePoint) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-__imul__"><strong>__imul__</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-__imul__">__imul__</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Integer">Integer</a> i) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-findRo"><strong>findRo</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-findRo">findRo</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> module, <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp; b) -&gt; <a href="#PolynomGF2_m_4">PolynomGF2_m_4</a> &amp;</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-getCurve"><strong>getCurve</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-getCurve">getCurve</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#EllipticCurveGF2">EllipticCurveGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-getX"><strong>getX</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-getX">getX</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-getY"><strong>getY</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-getY">getY</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; <a href="#Polynom">Polynom</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-isInfinite"><strong>isInfinite</strong></a>(self)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-isInfinite">isInfinite</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-setInfinite"><strong>setInfinite</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-setInfinite">setInfinite</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, bool infinite) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<dl>
<dt>
<a name="SuperSingularEllipticPoint-setXY"><strong>setXY</strong></a>(self, *args)</dt>
<dd><tt><a href="#SuperSingularEllipticPoint-setXY">setXY</a>(<a href="#EllipticPointGF2">EllipticPointGF2</a> self, <a href="#Polynom">Polynom</a> x, <a href="#Polynom">Polynom</a> y) -&gt; <a href="#EllipticPointGF2">EllipticPointGF2</a></tt></dd>
</dl>
<hr>
Data descriptors inherited from <a href="AAL.html#EllipticPointGF2">EllipticPointGF2</a>:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;"></span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#SwigPyIterator">SwigPyIterator</a>
</div>
<div id="SwigPyIterator" class="accordion-body collapse"><div class="accordion-inner">
<h4>class SwigPyIterator(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<a name="SwigPyIterator-__add__"><strong>__add__</strong></a>(self, *args)</dt></dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__eq__"><strong>__eq__</strong></a>(self, *args)</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__iadd__"><strong>__iadd__</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__init__"><strong>__init__</strong></a>(self, *args, **kwargs)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__isub__"><strong>__isub__</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__iter__"><strong>__iter__</strong></a>(self)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__ne__"><strong>__ne__</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__next__"><strong>__next__</strong></a>(self)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl><dt>
<a name="SwigPyIterator-__sub__"><strong>__sub__</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-advance"><strong>advance</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-copy"><strong>copy</strong></a>(self)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-decr"><strong>decr</strong></a>(self, n<font color="#909090">=1</font>)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-distance"><strong>distance</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-equal"><strong>equal</strong></a>(self, *args)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-incr"><strong>incr</strong></a>(self, n<font color="#909090">=1</font>)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-next"><strong>next</strong></a>(self)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-previous"><strong>previous</strong></a>(self)</dt></dl>
<dl><dt>
<a name="SwigPyIterator-value"><strong>value</strong></a>(self)</dt></dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl><dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_SwigPyIterator&gt;</dt></dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::TableManager class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#TableManager">TableManager</a>
</div>
<div id="TableManager" class="accordion-body collapse"><div class="accordion-inner">
<h4>class TableManager(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl><dt>
<a name="TableManager-__init__"><strong>__init__</strong></a>(self, *args, **kwargs)</dt></dl>
<dl>
<dt>
<a name="TableManager-__repr__"><strong>__repr__</strong></a>(self)</dt>
<dd><tt><a href="#TableManager-__repr__">__repr__</a>(<a href="#TableManager">TableManager</a> self) -&gt; char *</tt></dd>
</dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="TableManager-getElementaryPolynomsMultiplication"><strong>getElementaryPolynomsMultiplication</strong></a>(self, *args)</dt>
<dd><tt><a href="#TableManager-getElementaryPolynomsMultiplication">getElementaryPolynomsMultiplication</a>(<a href="#TableManager">TableManager</a> self, AAL::uchar u, AAL::uchar v) -&gt; AAL::ushort</tt></dd>
</dl>
<hr>
Static methods defined here:<br><dl>
<dt>
<a name="TableManager-Instance"><strong>Instance</strong></a>()</dt>
<dd><tt><a href="#TableManager-Instance">Instance</a>() -&gt; <a href="#TableManager">TableManager</a></tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_TableManager&gt;</dt>
<dd><tt>delete_TableManager(<a href="#TableManager">TableManager</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'Instance': &lt;function &lt;lambda&gt;&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::BasicType&lt;(uchar)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#ucharBasicType">ucharBasicType</a>
</div>
<div id="ucharBasicType" class="accordion-body collapse"><div class="accordion-inner">
<h4>class ucharBasicType(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="ucharBasicType-PressMemory"><strong>PressMemory</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-PressMemory">PressMemory</a>(<a href="#ucharBasicType">ucharBasicType</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-Relocation"><strong>Relocation</strong></a>(self, *args)</dt>
<dd><tt><a href="#ucharBasicType-Relocation">Relocation</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint maximumDigits)</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="ucharBasicType-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#ucharBasicType-__init__">__init__</a>(AAL::BasicType&lt;(uchar)&gt; self) -&gt; <a href="#ucharBasicType">ucharBasicType</a><br><a href="#ucharBasicType-__init__">__init__</a>(AAL::BasicType&lt;(uchar)&gt; self, <a href="#ucharBasicType">ucharBasicType</a> basicType) -&gt; <a href="#ucharBasicType">ucharBasicType</a><br><a href="#ucharBasicType-__init__">__init__</a>(AAL::BasicType&lt;(uchar)&gt; self, unsigned char const number) -&gt; <a href="#ucharBasicType">ucharBasicType</a></tt></dd>
</dl>
<dl><dt>
<a name="ucharBasicType-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="ucharBasicType-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#ucharBasicType-getBit">getBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-getDigit"><strong>getDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#ucharBasicType-getDigit">getDigit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position) -&gt; unsigned char</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-getFirstTrueBit"><strong>getFirstTrueBit</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-getFirstTrueBit">getFirstTrueBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-getMaximumDigits"><strong>getMaximumDigits</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-getMaximumDigits">getMaximumDigits</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-getNumberBits">getNumberBits</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-getNumberBytes"><strong>getNumberBytes</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-getNumberBytes">getNumberBytes</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-getNumberDigits"><strong>getNumberDigits</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-getNumberDigits">getNumberDigits</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-isOne">isOne</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#ucharBasicType-isZero">isZero</a>(<a href="#ucharBasicType">ucharBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#ucharBasicType-setBit">setBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position, bool value=True)<br><a href="#ucharBasicType-setBit">setBit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position)</tt></dd>
</dl>
<dl>
<dt>
<a name="ucharBasicType-setDigit"><strong>setDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#ucharBasicType-setDigit">setDigit</a>(<a href="#ucharBasicType">ucharBasicType</a> self, AAL::uint position, unsigned char value)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_ucharBasicType&gt;</dt>
<dd><tt>delete_ucharBasicType(<a href="#ucharBasicType">ucharBasicType</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'_digits': &lt;built-in function ucharBasicType__digits_get&gt;, '_maximumDigits': &lt;built-in function ucharBasicType__maximumDigits_get&gt;, '_numberDigits': &lt;built-in function ucharBasicType__numberDigits_get&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'_digits': &lt;built-in function ucharBasicType__digits_set&gt;, '_maximumDigits': &lt;built-in function ucharBasicType__maximumDigits_set&gt;, '_numberDigits': &lt;built-in function ucharBasicType__numberDigits_set&gt;}</dt></dl>
</td>
</div></div>
</div>
<div class="accordion-group">
<div class="accordion-heading">
<span class="pull-right muted" style="padding: 8px 0 0;">Proxy of C++ AAL::BasicType&lt;(AAL::uint)&gt; class </span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#uintBasicType">uintBasicType</a>
</div>
<div id="uintBasicType" class="accordion-body collapse"><div class="accordion-inner">
<h4>class uintBasicType(__builtin__.object)</h4>
<td width="100%">Methods defined here:<br><dl>
<dt>
<a name="uintBasicType-PressMemory"><strong>PressMemory</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-PressMemory">PressMemory</a>(<a href="#uintBasicType">uintBasicType</a> self)</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-Relocation"><strong>Relocation</strong></a>(self, *args)</dt>
<dd><tt><a href="#uintBasicType-Relocation">Relocation</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint maximumDigits)</tt></dd>
</dl>
<dl><dt>
<strong>__del__</strong> <em>lambda</em> self</dt></dl>
<dl><dt>
<strong>__getattr__</strong> <em>lambda</em> self, name</dt></dl>
<dl>
<dt>
<a name="uintBasicType-__init__"><strong>__init__</strong></a>(self, *args)</dt>
<dd><tt><a href="#uintBasicType-__init__">__init__</a>(AAL::BasicType&lt;(AAL::uint)&gt; self) -&gt; <a href="#uintBasicType">uintBasicType</a><br><a href="#uintBasicType-__init__">__init__</a>(AAL::BasicType&lt;(AAL::uint)&gt; self, <a href="#uintBasicType">uintBasicType</a> basicType) -&gt; <a href="#uintBasicType">uintBasicType</a><br><a href="#uintBasicType-__init__">__init__</a>(AAL::BasicType&lt;(AAL::uint)&gt; self, unsigned int const number) -&gt; <a href="#uintBasicType">uintBasicType</a></tt></dd>
</dl>
<dl><dt>
<a name="uintBasicType-__repr__"><strong>__repr__</strong></a> = _swig_repr(self)</dt></dl>
<dl><dt>
<strong>__setattr__</strong> <em>lambda</em> self, name, value</dt></dl>
<dl>
<dt>
<a name="uintBasicType-getBit"><strong>getBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#uintBasicType-getBit">getBit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-getDigit"><strong>getDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#uintBasicType-getDigit">getDigit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position) -&gt; unsigned int</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-getFirstTrueBit"><strong>getFirstTrueBit</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-getFirstTrueBit">getFirstTrueBit</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-getMaximumDigits"><strong>getMaximumDigits</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-getMaximumDigits">getMaximumDigits</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-getNumberBits"><strong>getNumberBits</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-getNumberBits">getNumberBits</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-getNumberBytes"><strong>getNumberBytes</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-getNumberBytes">getNumberBytes</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-getNumberDigits"><strong>getNumberDigits</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-getNumberDigits">getNumberDigits</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; AAL::uint</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-isOne"><strong>isOne</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-isOne">isOne</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-isZero"><strong>isZero</strong></a>(self)</dt>
<dd><tt><a href="#uintBasicType-isZero">isZero</a>(<a href="#uintBasicType">uintBasicType</a> self) -&gt; bool</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-setBit"><strong>setBit</strong></a>(self, *args)</dt>
<dd><tt><a href="#uintBasicType-setBit">setBit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position, bool value=True)<br><a href="#uintBasicType-setBit">setBit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position)</tt></dd>
</dl>
<dl>
<dt>
<a name="uintBasicType-setDigit"><strong>setDigit</strong></a>(self, *args)</dt>
<dd><tt><a href="#uintBasicType-setDigit">setDigit</a>(<a href="#uintBasicType">uintBasicType</a> self, AAL::uint position, unsigned int value)</tt></dd>
</dl>
<hr>
Data descriptors defined here:<br><dl>
<dt><strong>__dict__</strong></dt>
<dd><tt>dictionary for instance variables (if defined)</tt></dd>
</dl>
<dl>
<dt><strong>__weakref__</strong></dt>
<dd><tt>list of weak references to the object (if defined)</tt></dd>
</dl>
<hr>
Data and other attributes defined here:<br><dl>
<dt>
<strong>__swig_destroy__</strong> = &lt;built-in function delete_uintBasicType&gt;</dt>
<dd><tt>delete_uintBasicType(<a href="#uintBasicType">uintBasicType</a> self)</tt></dd>
</dl>
<dl><dt>
<strong>__swig_getmethods__</strong> = {'_digits': &lt;built-in function uintBasicType__digits_get&gt;, '_maximumDigits': &lt;built-in function uintBasicType__maximumDigits_get&gt;, '_numberDigits': &lt;built-in function uintBasicType__numberDigits_get&gt;}</dt></dl>
<dl><dt>
<strong>__swig_setmethods__</strong> = {'_digits': &lt;built-in function uintBasicType__digits_set&gt;, '_maximumDigits': &lt;built-in function uintBasicType__maximumDigits_set&gt;, '_numberDigits': &lt;built-in function uintBasicType__numberDigits_set&gt;}</dt></dl>
</td>
</div></div>
</div>
</div>
</div>

%rebase layout title='Справка по Алгебраическому процессору МЭИ', path='/help', is_user=True, is_admin=False

