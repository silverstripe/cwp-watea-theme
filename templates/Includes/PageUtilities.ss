<% if $ShowPageUtilities %>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="page-utilities clearfix">
                    <% if $LastEdited %>
                        <% include LastModified %>
                    <% end_if %>
                    <ul class="list-inline pull-right page-utilities-actions">
                        <li>
                            <a href="#" class="btn btn-link fa fa-print" onclick="window.print(); return false;">
                                <span class="sr-only"><%t TableListField.Print "Print" %></span>
                            </a>
                        </li>

                        <%-- Uncomment this section to re-enable the PDF link in the template - see the documentation
                        for configuration instructions --%>
                        <%-- <% if $PdfLink %>
                            <li>
                                <a href="$PdfLink" class="btn btn-link fa fa-file-pdf-o">
                                    <span class="sr-only"><%t CWP.Home.PDF "Export PDF" %></span>
                                </a>
                            </li>
                        <% end_if %> --%>

                        <% if $ClassName == HomePage %>
                            <% if $AtomLink %>
                                <li>
                                    <a href="$AtomLink" class="btn btn-link fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% else_if $RSSLink %>
                                <li>
                                    <a href="$RSSLink" class="btn btn-link fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% else_if $DefaultAtomLink %>
                                <li>
                                    <a href="$DefaultAtomLink" class="btn btn-link fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% else_if $DefaultRSSLink %>
                                <li>
                                    <a href="$DefaultRSSLink" class="btn btn-link fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% end_if %>
                        <% end_if %>

                        <% if $ClassName == NewsHolder || $ClassName == EventsHolder || $ClassName == Blog %>
                            <li>
                                <a href="#subscribe" class="btn btn-link fa fa-rss">
                                    <span class="sr-only"><%t Cwp.Subscribe "Subscribe" %></span>
                                </a>
                            </li>
                        <% end_if %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<% end_if %>
