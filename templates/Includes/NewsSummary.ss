<% if $getNewsItems %>
    <h3 class="h4 page-sidebar-header"><%t NewsPage.NEWSHEADING "Latest news" %></h3>

    <% loop $getNewsItems(3) %>
        <article class="news-item">
            <h4 class="h5 news-item__heading"><a href="{$Link}">{$Title}</a></h4>
            <% if $Date %>
                <p class="meta-info">
                    <time datetime="$Date.Nice">$Date.Format('dd MMM y')</time>
                </p>
            <% end_if %>
            <p class="summary">
                <% if $Abstract %>
                    $Abstract.RAW
                <% else %>
                    $Content.RAW.Summary(30)
                <% end_if %>
            </p>
        </article>
    <% end_loop %>
<% end_if %>
