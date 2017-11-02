<% include Carousel %>
<div class="home-page">
    <div class="container">
        <div class="row">
            <section class="col-md-7 col-md-offset-1">
                <h1>$Title</h1>
                <% if $ElementalArea %>
                    <%-- Support for content blocks, if enabled --%>
                    <% if $ElementalArea.RichLinks %>
                        $ElementalArea.RichLinks
                    <% else %>
                        $ElementalArea
                    <% end_if %>
                <% else %>
                    <%-- CMS page content --%>
                    <% if $Content.RichLinks %>
                        $Content.RichLinks
                    <% else %>
                        $Content
                    <% end_if %>
                <% end_if %>
            </section>

            <aside class="col-md-3">
                <% include NewsSummary %>
            </aside>
        </div>
    </div>
</div>
<% include PageUtilities %>
