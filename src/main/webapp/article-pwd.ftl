<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>${articleViewPwdLabel}</title>
        <meta name="keywords" content="Notalk,Java 博客,开源" />
        <meta name="description" content="Notalk.cc blog" />
        <meta name="owner" content="Notalk" />
        <meta name="author" content="伴读小书童-fatyu" />
        <meta name="generator" content="Solo" />
        <meta name="copyright" content="Notalk" />
        <meta name="revised" content="Notalk, ${year}" />
        <meta name="robots" content="noindex, follow" />
        <meta http-equiv="Window-target" content="_top" />
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/default-init${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
        <link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
        <script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
    </head>
    <body>
        <div class="wrapper">
            <div class="wrap">
                <div class="content">
                    <div class="logo">
                        <a href="https://www.notalk.cc" target="_blank">
                            <img border="0" width="200" height="200" alt="notalk.cc" title="notalk.cc" src="${staticServePath}/images/logo.jpg"/>
                        </a>
                    </div>
                    <div class="main article-pwd">
                        <h2>
                            ${articleTitle}   
                        </h2>
                        <div>
                            ${articleAbstract}
                        </div>
                        <#if msg??>
                        <div>${msg}</div>
                        </#if>
                        <form method="POST" action="${servePath}/console/article-pwd">
                            <label for="pwdTyped">访问密码：</label>
                            <input type="password" id="pwdTyped" name="pwdTyped" />
                            <input type="hidden" name="articleId" value="${articleId}" />
                            <button id="confirm" type="submit">${confirmLabel}</button>
                        </form>
                        <a href="https://www.notalk.cc" target="_blank">
                            <img border="0" class="icon" alt="notalk" title="notalk" src="${staticServePath}/favicon.png"/>
                        </a>
                    </div>
                    <span class="clear"></span>
                </div>
            </div>

            <div class="footerWrapper">
                <div class="footer">
                    &copy; ${year} - <a href="${servePath}">${blogTitle}</a><br/>
                    骄傲的使用 <a href="http://b3log.org" target="_blank">B3log 开源</a> • <a href="http://b3log.org/services/#solo" target="_blank">Solo</a> ${version}
                </div>
            </div>
        </div>
    </body>
</html>
