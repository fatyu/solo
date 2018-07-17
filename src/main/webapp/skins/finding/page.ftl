<#include "macro-head.ftl">
<#include "macro-comments.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${page.pageTitle} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${page.pageTitle}" />
        <meta name="description" content="${metaDescription}" />
        </@head>
    </head>
    <body class="nav-closed">
        <div class="nav">
            <#include "side.ftl">
        </div>
        <div class="site-wrapper">
            <#include "header.ftl">
            <main>
                <article class="post">
                    <section class="post-content article-body">
                        ${page.pageContent}
                    </section>
                    <footer>
                        
                    </footer>
                </article>
                <@comments commentList=pageComments article=page></@comments>
            </main>

            <#include "footer.ftl">

            <@comment_script oId=page.oId></@comment_script>
        </div>
    </body>
</html>
