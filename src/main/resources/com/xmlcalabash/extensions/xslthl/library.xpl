<p:library xmlns:p="http://www.w3.org/ns/xproc"
           xmlns:cx="http://xmlcalabash.com/ns/extensions"
           version="1.0">

<p:declare-step type="cx:xslthl">
  <p:input port="source"/>
  <p:output port="result"/>
  <p:option name="config"/>
  <p:option name="highlighter" required="true"/>
</p:declare-step>

</p:library>
