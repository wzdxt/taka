
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2004 World Wide Web Consortium, 
(Massachusetts Institute of Technology, Institut National de
Recherche en Informatique et en Automatique, Keio University).  All 
Rights Reserved.  This program is distributed under the W3C's Software
Intellectual Property License.  This program is distributed in the 
hope that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE.  

See W3C License http://www.w3.org/Consortium/Legal/ for more details.


=end
#

require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'helper'))

###
#       The method setAttributeNS adds a new attribute.
#       Retreive an existing element node with a default attribute node and 
#       add two new attribute nodes that have the same local name as the 
#       default attribute but different namespaceURI to it using the setAttributeNS method.   
#       Check if the attribute was correctly set by invoking the getAttributeNodeNS method
#       and checking the nodeName and nodeValue of the returned nodes.
 #     
# @author IBM
# @author Neil Delima
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-ElSetAttrNS]
##
DOMTestCase('elementsetattributens03') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.namespaceAware
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_elementsetattributens03
    doc = nil
    element = nil
    attribute = nil
    elementList = nil
    attrName = nil
    attrValue = nil
    doc = load_document("staffNS", true)
      elementList = doc.getElementsByTagName("emp:employee")
      element = elementList.item(0)
      assert_not_nil(element, "empEmployeeNotNull")
      
      
      
      attrName = attribute.nodeName()
      attrValue = attribute.nodeValue()
      assert_equal("defaultAttr", attrName, "elementsetattributens03_attrName")
            assert_equal("default1", attrValue, "elementsetattributens03_attrValue")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/elementsetattributens03"
  end
end

