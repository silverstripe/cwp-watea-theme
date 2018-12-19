<% if $EntryData %>
    <p class="registry__label">$Label</p>
    <p>
        <a href="
            <% if $Label == 'Email' %>mailto:$EntryData<% else %>$EntryData<% end_if %>"
            <% if $Label == 'Website' %>target="_blank" class="external"<% end_if %>
        >
            $EntryData
        </a>
    </p>
<% end_if %>
