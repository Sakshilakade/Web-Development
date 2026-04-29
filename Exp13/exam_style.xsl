<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
  <title>Exam Results</title>

  <style>
    body {
      font-family: Arial;
      background-color: #f4f4f4;
    }
    table {
      border-collapse: collapse;
      width: 70%;
      margin: auto;
    }
    th {
      background-color: #ff9800;
      color: white;
      padding: 10px;
    }
    td {
      padding: 8px;
      text-align: center;
    }
    tr:nth-child(even) {
      background-color: #dddddd;
    }
  </style>

</head>

<body>

<h2 style="text-align:center;">Top Scorers (Above 90)</h2>

<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Subject</th>
    <th>Score</th>
  </tr>

  <xsl:for-each select="results/candidate">

    <!-- changed condition -->
    <xsl:if test="score &gt; 90">
      <tr>
        <td><xsl:value-of select="@id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="subject"/></td>
        <td><xsl:value-of select="score"/></td>
      </tr>
    </xsl:if>

  </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>