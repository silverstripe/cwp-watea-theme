<div class="container site-header">
    <% include SkipLinks %>
    <div class="site-header-brand">
        <a title="<%t CWP_Header.Title "Go to Home Page" %>" class="site-header-brand-link-default" href="$BaseHref">
            <% if $SiteConfig.Logo %>
                <img
                    src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height"
                    alt="$SiteConfig.Title"
                    aria-hidden="true" />
            <% else %>
                <span>$SiteConfig.Title</span>
            <% end_if %>
        </a>
        <% if $SiteConfig.Tagline %>
            <span class="site-header-brand-tagline small">$SiteConfig.Tagline</span>
        <% end_if %>
    </div>
    <button type="button" class="navbar-toggle collapsed pull-right" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
        <span class="sr-only"><%t CWP_Header.Toggle "Toggle navigation" %></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <% include HeaderSearch %>
    <% include LanguageSelector %>
</div>
