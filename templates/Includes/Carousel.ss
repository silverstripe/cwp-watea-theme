<% if $CarouselItems %>

    <%-- Determine if a carousel or single item --%>
    <% if $CarouselItems.Count > 1 %>
        <div id="carousel-slide" data-ride="carousel" class="carousel slide text-center">
    <% else %>
        <div class="carousel slide text-center carousel-static">
    <% end_if %>

      <div class="carousel-inner">
          <% if $CarouselItems.Count > 1 %>

          <div class="carousel-interface">

            <div class="carousel-controls-wrapper">

              <%-- Indicators --%>
              <div class="carousel-controls-inner-wrapper">
                  <ol class="carousel-indicators" role="tablist">
                    <% loop $CarouselItems %>
                      <li data-target="#carousel-slide" data-slide-to="$Pos(0)" class="<% if $Pos == 1 %>active<% end_if %>" name="carousel-item-{$Pos}"></li>
                    <% end_loop %>
                  </ol>

                  <%-- Play or Pause --%>
                  <div class="carousel-play-controls">
                    <button type="button" class="btn btn-link btn-sm" id="carousel-pause" aria-label="Autoplaying carousel with slides. <%t CwpCarousel.PAUSESLIDE "Click to pause carousel slides." %>">
                      <i class="fa fa-pause" aria-hidden="true"></i>
                    </button>
                    <button type="button" class="btn btn-link btn-sm" id="carousel-play" aria-label="Paused carousel with slides. <%t CwpCarousel.PLAYSLIDE "Click to play carousel slides." %>" style="display:none;">
                      <i class="fa fa-play" aria-hidden="true"></i>
                    </button>
                  </div>
              </div>

            </div>

            <%-- Controls --%>
            <div class="carousel-controls">
              <button class="left carousel-control" href="#carousel-slide" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
                <span class="sr-only"><%t CwpCarousel.PREVIOUS "Go to previous slide." %></span>
              </button>
              <button class="right carousel-control" href="#carousel-slide" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
                <span class="sr-only"><%t CwpCarousel.NEXT "Go to next slide." %></span>
              </button>
            </div>

          </div>
          <% end_if %>

          <% loop $CarouselItems %>

              <%-- Items --%>
              <div class="<% if First %>active <% end_if %>item <% if $Image %>carousel-has-image<% end_if %>"
                <% if $Image %> style="background-image:url($Image.URL);"<% end_if %>
                <% if $Title %> aria-labelledby="carousel-title-{$Pos}"<% end_if %>
                <% if $Content %> aria-describedby="carousel-desc-{$Pos}"<% end_if %>>

                <div class="carousel-mask"></div>

                <% if $Content || $Title || $PrimaryCallToActionLabel || $SecondaryCallToActionLabel %>
                    <div class="container">
                        <div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2">
                            <% if $Title %>
                                <h1 id="carousel-title-{$Pos}">$Title</h1>
                            <% end_if %>

                            <% if $Content %>
                              <div class="carousel-content" id="carousel-desc-{$Pos}">$Content</div>
                            <% end_if %>

                            <% if $PrimaryCallToActionLabel || $SecondaryCallToActionLabel %>
                                <p>
                                    <% if $PrimaryCallToActionLabel %>
                                        <a class="btn btn-primary btn-lg" href="{$PrimaryCallToAction.Link}">
                                            $PrimaryCallToActionLabel
                                        </a>
                                    <% end_if %>
                                    <% if $SecondaryCallToActionLabel %>
                                        <a class="btn btn-lg btn-link" href="{$SecondaryCallToAction.Link}">
                                            $SecondaryCallToActionLabel
                                        </a>
                                    <% end_if %>
                                </p>
                            <% end_if %>
                        </div>
                    </div>
                <% end_if %>

              </div>
          <% end_loop %>
      </div>
      <%-- Announce end of carousel for screen readers --%>
      <div tabindex="0" class="sr-only"><%t CwpCarousel.ENDOFCAROUSEL "End of carousel." %></div>
    </div>
<% end_if %>
