<% if $QuickLinks %>
    <div class="col-md-4 page-showcase-quicklinks">
        <h2 class="h4"><%t CWP.Home.Quicklinks.Title "Quicklinks" %></h2>
        <ul>
            <% loop $QuickLinks %>
                <li>
                    <% if $ExternalLink %>
                        <a href="$ExternalLink">
                    <% else %>
                        <a href="$InternalLink.Link">
                    <% end_if %>
                            $Title
                        </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
