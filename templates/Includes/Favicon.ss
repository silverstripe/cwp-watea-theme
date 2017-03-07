<% if $SiteConfig.FavIcon %>
  <link rel="shortcut icon" href="$SiteConfig.FavIcon.Link" />
<% else %>
  <link rel="shortcut icon" href="{$BaseHref}{$ThemeDir(watea)}/ico/favicon.ico" />
<% end_if %>

<% if $SiteConfig.AppleTouchIcon144 %>
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="$SiteConfig.AppleTouchIcon144.Link">
  <meta name="msapplication-TileImage" content="$SiteConfig.AppleTouchIcon144.Link" />
<% else %>
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{$BaseHref}{$ThemeDir(watea)}/ico/apple-touch-icon-144-precomposed.png">
  <meta name="msapplication-TileImage" content="{$BaseHref}{$ThemeDir(watea)}/ico/apple-touch-icon-144-precomposed.png" />
<% end_if %>

<% if $SiteConfig.AppleTouchIcon114 %>
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="$SiteConfig.AppleTouchIcon114.Link">
<% else %>
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{$BaseHref}{$ThemeDir(watea)}/ico/apple-touch-icon-114-precomposed.png">
<% end_if %>

<% if $SiteConfig.AppleTouchIcon72 %>
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="$SiteConfig.AppleTouchIcon72.Link">
<% else %>
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{$BaseHref}{$ThemeDir(watea)}/ico/apple-touch-icon-72-precomposed.png">
<% end_if %>

<% if $SiteConfig.AppleTouchIcon57 %>
  <link rel="apple-touch-icon-precomposed" href="$SiteConfig.AppleTouchIcon57.Link">
<% else %>
  <link rel="apple-touch-icon-precomposed" href="{$BaseHref}{$ThemeDir(watea)}/ico/apple-touch-icon-57-precomposed.png">
<% end_if %>
