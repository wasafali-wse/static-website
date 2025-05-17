<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Sitemap</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    h1 { color: #007bff; text-align: center; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 5px 0; }
                    a { text-decoration: none; color: #333; font-weight: bold; }
                    a:hover { color: #007bff; }
                </style>
            </head>
            <body>
                <h1>Sitemap</h1>
                <ul>
                    <xsl:for-each select="urlset/url">
                        <li>
                            <a href="{loc}">
                                <xsl:value-of select="loc" />
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
