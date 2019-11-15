<% if $ShowPageUtilities %>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-utilities clearfix">
                    <% if $LastEdited %>
                        <% include LastModified %>
                    <% end_if %>
                    <ul class="list-inline float-right page-utilities-actions">
                        <li>
                            <a href="#" class="btn btn-link" onclick="window.print(); return false;" aria-label="<%t SilverStripe\\Forms\\GridField\\GridField.Print "Print" %>">
                                <i class="fa fa-print" aria-hidden="true"></i>
                            </a>
                        </li>

                        <%-- Uncomment this section to re-enable the PDF link in the template - see the documentation
                        for configuration instructions --%>
                        <% if $PdfLink %>
                            <li>
                                <a href="$PdfLink" class="btn btn-link" aria-label="<%t CWP\\CWP\\PageTypes\\BaseHomePage.PDF "Export PDF" %>">
                                    <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
                                </a>
                            </li>
                        <% end_if %>

                        <% if $ClassName == HomePage %>
                            <% if $AtomLink %>
                                <li>
                                    <a href="$AtomLink" class="btn btn-link" aria-label="<%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %>">
                                        <i class="fa fa-rss" aria-hidden="true"></i>
                                    </a>
                                </li>
                            <% else_if $RSSLink %>
                                <li>
                                    <a href="$RSSLink" class="btn btn-link" aria-label="<%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %>">
                                        <i class="fa fa-rss" aria-hidden="true"></i>
                                    </a>
                                </li>
                            <% else_if $DefaultAtomLink %>
                                <li>
                                    <a href="$DefaultAtomLink" class="btn btn-link" aria-label="<%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %>">
                                        <i class="fa fa-rss" aria-hidden="true"></i>
                                    </a>
                                </li>
                            <% else_if $DefaultRSSLink %>
                                <li>
                                    <a href="$DefaultRSSLink" class="btn btn-link" aria-label="<%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %>">
                                        <i class="fa fa-rss" aria-hidden="true"></i>
                                    </a>
                                </li>
                            <% end_if %>
                        <% end_if %>

                        <% if $ClassName == CWP\\CWP\\PageTypes\\NewsHolder || $ClassName == CWP\\CWP\\PageTypes\\EventsHolder || $ClassName == SilverStripe\\Blog\\Model\\Blog %>
                            <li>
                                <a href="#subscribe" class="btn btn-link" aria-label="<%t CWP\\CWP\\PageTypes\\BaseHomePage.Subscribe "Subscribe" %>">
                                    <i class="fa fa-rss" aria-hidden="true"></i>
                                </a>
                            </li>
                        <% end_if %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<% end_if %>
