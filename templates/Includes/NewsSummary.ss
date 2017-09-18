<% if $getNewsItems %>
    <h3 class="h4 page-sidebar-header"><%t NewsPage.NEWSHEADING "News" %></h3>

    <% loop $getNewsItems(3) %>
        <article class="news-item">
            <h4 class="h5"><a href="{$Link}">{$Title}</a></h4>
            <p class="meta-info">
                <time datetime="$Created.Nice">{$Created.Nice}</time>
            </p>
            <% if $Abstract %>
                <p>{$Abstract}</p>
            <% else %>
                $Content.Summary(30)
            <% end_if %>
        </article>
    <% end_loop %>
<% end_if %>
