<!doctype html>
<html class="no-js" lang="$ContentLocale">
    <head>
        <% base_tag %>
        <title><% if $MetaTitle %>$MetaTitle.XML<% else %>$Title.XML<% end_if %> | $SiteConfig.Title.XML</title>
        $MetaTags(false)
        <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0" />
        <% if $RSSLink %>
        <link rel='alternate' type='application/rss+xml' title='RSS' href='$RSSLink'>
        <% end_if %>
        <% require themedCss('dist/css/main.css') %>
        <% include Favicon %>
    </head>
    <body class="$ClassName
        <% if $SiteConfig.MainFontFamily %>theme-font-{$SiteConfig.MainFontFamily}<% end_if %>
        <% if $SiteConfig.HeaderBackground %>theme-header-{$SiteConfig.HeaderBackground}<% end_if %>
        <% if $SiteConfig.NavigationBarBackground %>theme-nav-{$SiteConfig.NavigationBarBackground}<% end_if %>
        <% if $SiteConfig.CarouselBackground %>theme-carousel-{$SiteConfig.CarouselBackground}<% end_if %>
        <% if $SiteConfig.FooterBackground %>theme-footer-{$SiteConfig.FooterBackground}<% end_if %>
        <% if $SiteConfig.AccentColor %>theme-accent-{$SiteConfig.AccentColor}<% end_if %>
        <% if $SiteConfig.TextLinkColor %>theme-link-{$SiteConfig.TextLinkColor}<% end_if %>">
        <header class="header">
            <% include Header %>
            <% include MainNav %>
        </header>
        <main id="main" class="main">
            $Layout
        </main>
        <% include PageShowcase %>
        <footer class="footer-site">
            <% include Footer %>
        </footer>
        <% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>
        <% require javascript('themes/starter/dist/js/main.js') %>
        <% require javascript('themes/watea/dist/js/main.js') %>
        <% include GoogleAnalytics %>
    </body>
</html>
