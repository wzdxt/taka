
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
#     The "getPublicId()" method of a documenttype node contains
#    the public identifier associated with the external subset.
#    
#    Retrieve the documenttype.
#    Apply the "getPublicId()" method.  The string "STAFF" should be
#    returned.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/DOM-Level-2-Core/core#ID-Core-DocType-publicId]
##
DOMTestCase('publicId01') do

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
    preload(contentType, "staffNS", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_publicId01
    doc = nil
    docType = nil
    publicId = nil
    doc = load_document("staffNS", false)
      docType = doc.doctype()
      
      assert_equal("STAFF", publicId, "throw_Equals")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/publicId01"
  end
end
