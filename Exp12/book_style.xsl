<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Library Books</title>
</head>

<body style="font-family:Arial;">

<h2 style="text-align:center;">📚 Library Book Details (XSLT)</h2>

<table border="1" cellpadding="10" cellspacing="0" style="margin:auto;">

<tr style="background:#ff6b9a; color:white;">
    <th>Title</th>
    <th>Author</th>
    <th>Country</th>
    <th>Year</th>
    <th>Price</th>
</tr>

<xsl:for-each select="library/book">

<tr>
    <td><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="author"/></td>
    <td><xsl:value-of select="country"/></td>
    <td><xsl:value-of select="year"/></td>
    <td><xsl:value-of select="price"/></td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>