<h3 class="sidebar-header h4"><%t NewsPage.NEWSHEADING "News" %></h3>

<% loop $getNewsItems(3) %>
    <article class="news-item">
        <h4 class="h5"><a href="{$Link}">{$Title}</a></h4>
        <p class="news-item__publish-date text-muted small">{$Created.Nice}</p>
        <% if $Abstract %>
            <p>{$Abstract}</p>
        <% else %>
            $Content.Summary(30)
        <% end_if %>
    </article>
<% end_loop %>
