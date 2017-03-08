<% if $ShowPageUtilities %>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="page-utilities">
                    <% if $LastEdited %>
                        <% include LastModified %>
                    <% end_if %>
                    <ul class="list-inline pull-right">
                        <li>
                            <a href="#" class="fa fa-print" onclick="window.print(); return false;">
                                <span class="sr-only"><%t TableListField.Print "Print" %></span>
                            </a>
                        </li>
                    <% if $PdfLink %>
                        <li>
                            <a href="$PdfLink" class="fa fa-file-pdf-o"><%t CWP.Home.PDF "Export PDF" %></a>
                        </li>
                    <% end_if %>

                        <% if $ClassName == HomePage %>
                            <% if $AtomLink %>
                                <li>
                                    <a href="$AtomLink" class="fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% else_if $RSSLink %>
                                <li>
                                    <a href="$RSSLink" class="fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% else_if $DefaultAtomLink %>
                                <li>
                                    <a href="$DefaultAtomLink" class="fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% else_if $DefaultRSSLink %>
                                <li>
                                    <a href="$DefaultRSSLink" class="fa fa-rss">
                                        <span class="sr-only"><%t CWP.Home.Subscribe "Subscribe" %></span>
                                    </a>
                                </li>
                            <% end_if %>
                        <% end_if %>

                        <% if $ClassName == NewsHolder || $ClassName == EventsHolder || $ClassName == Blog %>
                            <li>
                                <a href="#subscribe" class="fa fa-rss">
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
