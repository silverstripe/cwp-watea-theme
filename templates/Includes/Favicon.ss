<% if $SiteConfig.FavIcon %>
  <link rel="shortcut icon" href="$SiteConfig.FavIcon.Link" />
<% else %>
  <link rel="shortcut icon" href="{$BaseHref}themes/watea/ico/favicon.ico" />
<% end_if %>

<!-- Change to rel="apple-touch-icon-precomposed" if you do not want apple chrome on icons (rounded corners and gloss) -->
<% if $SiteConfig.AppleTouchIcon144 %>
  <link rel="apple-touch-icon" sizes="144x144" href="$SiteConfig.AppleTouchIcon144.Link">
  <meta name="msapplication-TileImage" content="$SiteConfig.AppleTouchIcon144.Link" />
<% else %>
  <link rel="apple-touch-icon" sizes="144x144" href="{$BaseHref}themes/watea/ico/apple-touch-icon-144.png">
  <meta name="msapplication-TileImage" content="{$BaseHref}themes/watea/ico/apple-touch-icon-144.png" />
<% end_if %>

<% if $SiteConfig.AppleTouchIcon114 %>
  <link rel="apple-touch-icon" sizes="114x114" href="$SiteConfig.AppleTouchIcon114.Link">
<% else %>
  <link rel="apple-touch-icon" sizes="114x114" href="{$BaseHref}themes/watea/ico/apple-touch-icon-114.png">
<% end_if %>

<% if $SiteConfig.AppleTouchIcon72 %>
  <link rel="apple-touch-icon" sizes="72x72" href="$SiteConfig.AppleTouchIcon72.Link">
<% else %>
  <link rel="apple-touch-icon" sizes="72x72" href="{$BaseHref}themes/watea/ico/apple-touch-icon-72.png">
<% end_if %>

<% if $SiteConfig.AppleTouchIcon57 %>
  <link rel="apple-touch-icon" href="$SiteConfig.AppleTouchIcon57.Link">
<% else %>
  <link rel="apple-touch-icon" href="{$BaseHref}themes/watea/ico/apple-touch-icon-57.png">
<% end_if %>
