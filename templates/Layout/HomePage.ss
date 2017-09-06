<% include Carousel %>
<div class="home-page">
    <div class="container">
        <div class="row">
            <section class="col-md-7 col-md-offset-1">
                <h1>$Title</h1>
                <% if $Content.RichLinks %>
                $Content.RichLinks
                <% else %>
                $Content
                <% end_if %>
            </section>

            <aside class="col-md-3">
                <% include NewsSummary %>
            </aside>
        </div>
    </div>
</div>
<% include PageUtilities %>
