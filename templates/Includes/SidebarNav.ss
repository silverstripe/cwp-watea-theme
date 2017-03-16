<nav id="pageNav" role="navigation" class="page-sidebar-widget page-sidebar-nav">
    <% if $Children %>
        <h3 class="h4 page-sidebar-header"><%t CWP.Section.Title "In this section" %></h3>
        <ul class="list-unstyled">
            <% loop $Children %>
                <li class="$LinkingMode">
                    <a href="$Link" class="$LinkingMode">$MenuTitle</a>
                </li>
            <% end_loop %>
        </ul>
    <% end_if %>
</nav>
