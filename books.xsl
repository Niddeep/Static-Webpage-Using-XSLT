<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "entity-value">
]>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- All this does is make simple HTML, the format is in the CSS file -->

  <xsl:template match="/">
    <html>
      <head>
        <title>Books</title>
        <link rel="StyleSheet" href="books.css" type="text/css" media="screen" />
        <script>

        </script>
      </head>
      <body>
        <center>
          <h1>Books</h1>
          <table>
            <tr>
              <th>Title</th>
              <th>Author</th>
              <th>ISBN</th>
            </tr>
            <xsl:for-each select="BOOKS/BOOK">
              <xsl:sort select="TITLE" order="ascending" />
              <tr>
                <td>
                  <xsl:value-of select="TITLE"/>
                </td>
                <td>
                  <xsl:value-of select="AUTHOR"/>
                </td>
                <td>
                  <xsl:value-of select="ISBN"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>

          <h2>Fill to buy a BOOK</h2>

          <form id="theForm" method="post" action="https://formspree.io/f/meqnwjwj">
            <table>
              <tr>
                <td>Name<span class="red">*</span>
                </td>
                <td>
                  <input type="text" id="name" name="name"/>
                </td>
              </tr>
              <tr>
                <td>Address</td>
                <td>
                  <input type="text" id="address" name="address" />
                </td>
              </tr>
              <tr>
                <td>Zip Code<span class="red">*</span>
                </td>
                <td>
                  <input type="text" id="zipcode" name="zipcode" />
                </td>
              </tr>
              <tr>
                <td>SELECT THE BOOK<span class="red">*</span>
                </td>
                <td>
                  <select id="book title" name="book title">
                    <option value="Please select the Book">Please select the Book</option>
                    <option value="Prototype &amp; Scriptaculous In Action">Prototype &amp; Scriptaculous In Action</option>
                    <option value="Ajax on Rails">Ajax on Rails</option>
                    <option value="Head Rush Ajax">Head Rush Ajax</option>
                    <option value="XSLT">XSLT</option>
                    <option value="Bulletproof Ajax">Bulletproof Ajax</option>
                    <option value="Professional Ajax">Professional Ajax</option>

                  </select>
                  <br />
                </td>
              </tr>
              <tr>
                <td>Gender<span class="red">*</span>
                </td>
                <td>
                  <input type="radio" name="gender" value="m" />
                    Male
                  <input type="radio" name="gender" value="f" />
                    Female</td>
              </tr>

              <tr>
                <td>Phone<span class="red">*</span>
                </td>
                <td>
                  <input type="text" id="phone" name="phone" />
                </td>
              </tr>
              <tr>
                <td>Email<span class="red">*</span>
                </td>
                <td>
                  <input type="text" id="email" name="email" />
                </td>
              </tr>
              <tr>
                <td>password (6-8 characters)<span class="red">*</span>
                </td>
                <td>
                  <input type="password" id="password" name="password" />
                </td>
              </tr>
              <tr>
                <td>Verify password<span class="red">*</span>
                </td>
                <td>
                  <input type="password" id="pwVerified" name="pwVerified" />
                </td>
              </tr>
              <tr>

                <td>
                  <input type="submit" value="SEND" id="submit"/>
                </td>
                <td>
                  <input type="reset" value="CLEAR" id="reset"/>

                </td>
              </tr>
            </table>
          </form>
        </center>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>