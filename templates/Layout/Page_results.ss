<div class="content search-results">
    <div class="container">
        <div class="row">
            <section class="col-lg-8 offset-lg-2">
                <div class="search-results__heading">
                    <h1>$Title.XML</h1>
                </div>
                $SearchForm
                <% if $Query %>
                    <div class="search-results__summary clearfix">
                        <% if $Results %>
                            <% if $Original %>
                                <div class="row search-results__no-result">
                                    <div class="col-md-12">
                                        <div class="alert alert-warning" role="alert"><p>
                                            <%t CWP_Search.Original "No search results were found matching <strong>{original}</strong>." original=$Original %>
                                        </p></div>
                                    </div>
                                </div>
                            <% end_if %>
                            <div class="row">
                                <div class="col-sm-12 col-md-8">
                                    <p class="lead search-results__message" tabindex="-1">
                                        <% if $Original %>
                                            <%t CWP_Search.ShowingResultsInsteadFor 'Showing results for "{query}" instead' query=$Query.XML %>
                                        <% else %>
                                            <%t CWP_Search.ShowingResultsFor 'Showing results for "{query}"' query=$Query.XML %>
                                        <% end_if %>
                                    </p>
                                </div>
                                <div class="col-sm-12 col-md-4 float-right search-results-results-page">
                                    <p class="text-muted">
                                        <%t CWP_Search.Pages "Displaying Page {current} of {total}" current=$Results.CurrentPage total=$Results.TotalPages %>
                                    </p>
                                </div>
                            </div>

                        <% else %>
                            <div class="row search-results-no-result">
                                <div class="col-md-12">
                                    <div class="alert alert-warning" role="alert">
                                        $NoSearchResults.XML
                                    </div>
                                </div>
                            </div>
                        <% end_if %>
                    </div>

                    <% if $Results %>
                        <div class="listing">
                            <% loop $Results %>
                                <article class="listing__item listing__item--search-result" data-highlight="$Up.Query.ATT">
                                    <header>
                                        <h1 class="h4">
                                            <a href="$Link" title="$Title">$Title</a>
                                        </h1>
                                        $Breadcrumbs
                                    </header>
                                    $Content.Summary
                                </article>
                            <% end_loop %>
                        </div>
                        <% with $Results %>
                            <% include Pagination %>
                        <% end_with %>
                    <% end_if %>
                <% else %>
                    <div class="row search-results__empty-search">
                        <div class="col-md-12">
                            <div class="alert alert-warning" role="alert">
                                $EmptySearch
                            </div>
                        </div>
                    </div>
                <% end_if %>
            </section>
        </div>
    </div>
    <% include PageUtilities %>
</div>
