<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Student Exam Results</title>

    <style>
        body {
            font-family: Arial;
            background: #eef2f7;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            border-collapse: collapse;
            margin: auto;
            width: 70%;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th {
            background: #ff6b00;
            color: white;
            padding: 10px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }
    </style>

</head>

<body>

<h2>📊 Top Scorers (Score > 90)</h2>

<table border="1">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Subject</th>
    <th>Score</th>
</tr>

<!-- LOOP + CONDITION -->
<xsl:for-each select="results/candidate">

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