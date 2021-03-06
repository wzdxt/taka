
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001 World Wide Web Consortium, 
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
#     The "setAttributeNodeNS(newAttr)" method raises an 
#    "WRONG_DOCUMENT_ERR DOMException if the "newAttr" 
#    was created from a different document than the one that
#    created this document.
#    
#    Retrieve the first emp:address and attempt to set a new
#    attribute node.  The new
#    attribute was created from a document other than the
#    one that created this element, therefore a
#    WRONG_DOCUMENT_ERR DOMException should be raised.
#    This test uses the "createAttributeNS(newAttr)" method
#    from the Document interface.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-258A00AF')/constant[@name='WRONG_DOCUMENT_ERR'])]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-ElSetAtNodeNS]
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#xpointer(id('ID-ElSetAtNodeNS')/raises/exception[@name='DOMException']/descr/p[substring-before(.,':')='WRONG_DOCUMENT_ERR'])]
##
DOMTestCase('setAttributeNodeNS05') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "staffNS", true)
    preload(contentType, "staffNS", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_setAttributeNodeNS05
    namespaceURI = "http://www.newattr.com";
    qualifiedName = "emp:newAttr";
    doc1 = nil
    doc2 = nil
    newAttr = nil
    elementList = nil
    testAddr = nil
    setAttr1 = nil
    doc1 = load_document("staffNS", true)
      doc2 = load_document("staffNS", true)
      
      elementList = doc1.getElementsByTagName("emp:address")
      testAddr = elementList.item(0)
      
    begin
      success = false;
      begin
        
      rescue Nokogiri::XML::DOMException => ex
        success = (ex.code == Nokogiri::XML::DOMException::WRONG_DOCUMENT_ERR)
      end 
      assert(success, "throw_WRONG_DOCUMENT_ERR")
    end

  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/setAttributeNodeNS05"
  end
end

