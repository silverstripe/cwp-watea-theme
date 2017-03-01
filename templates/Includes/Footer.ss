<div class="container">
  <div class="clearfix">
  <% if $SiteConfig.FacebookURL || $SiteConfig.TwitterUsername %>

    <div class="footer_nav-links footer_social-links" role="complementary">
    <% if $SiteConfig.FacebookURL %>
      <a class="fa fa-facebook" href="http://www.facebook.com/$SiteConfig.FacebookURL" title='<%t CWP.Footer.FollowOnFacebook "Follow us on Facebook" %>'>
        <span class="sr-only"><%t CWP.Footer.FollowOnFacebook "Follow us on Facebook" %></span>
      </a>
    <% end_if %>
    <% if $SiteConfig.TwitterUsername %>
      <a class="fa fa-twitter" href="http://www.twitter.com/$SiteConfig.TwitterUsername" title='<%t CWP.Footer.FollowOnTwitter "Follow us on Twitter" %>'>
        <span class="sr-only"><%t CWP.Footer.FollowOnTwitter "Follow us on Twitter" %></span>
      </a>
    <% end_if %>
    </div>
    <% end_if %>

    <% if $Footer.Children %>
    <nav class="footer_nav-links" aria-label="Footer navigation">
    <% loop $Footer.Children %>
      <a href="$Link" class="$LinkingMode <% if $LinkingMode = current %> active<% end_if %>">
        $MenuTitle.XML
      </a>
    <% end_loop %>
    </nav>
  <% end_if %>
  </div>

  <hr class="hidden-md hidden-lg">

  <div class="footer_govt-logo">
    <a class="footer_brand-secondary"
      <% if $SiteConfig.FooterLogoSecondaryLink %>
        href="$SiteConfig.FooterLogoSecondaryLink">
      <% else %>
        href="http://cwp.govt.nz/">
      <% end_if %>

      <img
      <% if $SiteConfig.FooterLogoSecondary %>
        src="$SiteConfig.FooterLogoSecondary.URL"
      <% else %>
        src="$ThemeDir(advanced)/images/cwp-logo.png"
      <% end_if %>

      <% if $SiteConfig.FooterLogoSecondaryDescription %>
        alt="$SiteConfig.FooterLogoSecondaryDescription"
      <% else %>
        alt="<%t CWP.Footer.AgencyAlt "Powered by New Zealand Government Common Web Platform" %>"
      <% end_if %>
      />
    </a>

    <a class="footer_nzgovt-logo"
      <% if $SiteConfig.FooterLogoLink %>
        href="$SiteConfig.FooterLogoLink">
      <% else %>
        href="http://newzealand.govt.nz/">
      <% end_if %>

      <img
      <% if $SiteConfig.FooterLogo %>
        src="$SiteConfig.FooterLogo.URL"
      <% else %>
        src="$ThemeDir(advanced)/images/newzealand-government-footer.png"
      <% end_if %>

      <% if $SiteConfig.FooterLogoDescription %>
        alt="$SiteConfig.FooterLogoDescription"
      <% else %>
        alt="<%t CWP.Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>"
      <% end_if %>
      />
    </a>
  </div>

  <p>
    <small>&copy; $CurrentDatetime.Format(Y) $SiteConfig.Title</small>
  </p>
</div>
