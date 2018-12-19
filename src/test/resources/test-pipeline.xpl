<p:declare-step version='1.0' name="main"
                xmlns:p="http://www.w3.org/ns/xproc"
                xmlns:c="http://www.w3.org/ns/xproc-step"
                xmlns:cx="http://xmlcalabash.com/ns/extensions"
                xmlns:sr="http://www.w3.org/2005/sparql-results#"
                exclude-inline-prefixes="c cx sr">
<p:output port="result"/>
<p:serialization port="result" indent="true"/>

<p:import href="http://xmlcalabash.com/extension/steps/xslthl.xpl"/>

<cx:xslthl highlighter="java">
  <p:input port="source">
    <p:inline><doc>
@XMLCalabash(
        name = "cx:xslthl",
        type = "{http://xmlcalabash.com/ns/extensions}XsltHL")

public class XsltHL extends DefaultStep implements ProcessMatchingNodes {
    private static final QName _highlighter = new QName("highlighter");
    private static final QName _config = new QName("config");
}</doc></p:inline>
  </p:input>
</cx:xslthl>

<p:choose>
  <p:when xmlns:hl="http://xslthl.sf.net" test="//hl:annotation">
    <p:identity>
      <p:input port="source">
        <p:inline><c:result>PASS</c:result></p:inline>
      </p:input>
    </p:identity>
  </p:when>
  <p:otherwise>
    <p:error code="FAIL">
      <p:input port="source">
        <p:inline><message>Did not find expected markup.</message></p:inline>
      </p:input>
    </p:error>
  </p:otherwise>
</p:choose>

</p:declare-step>
