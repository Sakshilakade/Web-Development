<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
  <title>Book Library</title>

  <style>
    body {
      font-family: Verdana;
      background-color: #f9f9f9;
    }
    table {
      border-collapse: collapse;
      width: 75%;
      margin: auto;
    }
    th {
      background-color: #3f51b5;
      color: white;
      padding: 10px;
    }
    td {
      padding: 8px;
      text-align: center;
    }
    tr:nth-child(even) {
      background-color: #e6e6e6;
    }
  </style>

</head>

<body>

<h2 style="text-align:center;">Library Book Details</h2>

<table border="1">
  <tr>
    <th>Title</th>
    <th>Author</th>
    <th>Year</th>
    <th>Price</th>
  </tr>

  <xsl:for-each select="library/book">
    <xsl:sort select="price" data-type="number"/>

    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="author"/></td>
      <td><xsl:value-of select="year"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
  </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>