<!doctype html>
<html class="no-js" lang="$ContentLocale">
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
        $MetaTags(false)
        <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />
        <% if $RSSLink %>
        <link rel='alternate' type='application/rss+xml' title='RSS' href='$RSSLink'>
        <% end_if %>
        <link rel="stylesheet" href="{$ThemeDir}_advanced/dist/css/main.css">
        <% include Favicon %>
    </head>
    <body class="$ClassName">
        <header>
            <% include Header %>
            <% include MainNav %>
        </header>
        <main id="main">
            $Layout
        </main>
        <% include FooterQuicklinks %>
        <footer>
            <% include Footer %>
        </footer>
        <script src="{$ThemeDir}/dist/js/main.js"></script>
        <script src="{$ThemeDir}_advanced/dist/js/main.js"></script>
        <% if $SiteConfig.GACode %>
            <script>
                (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
                ga('create', '$SiteConfig.GACode', 'auto');
                ga('send', 'pageview');
            </script>
        <% end_if %>
    </body>
</html>
