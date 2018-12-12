<% if $Locales %>
    <div class="dropdown float-right language-selector" id="header-language-toggle">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-language" aria-hidden="true"></i>
            <span class="d-none d-sm-inline-block">
                $SelectedLanguage
            </span>
            <i class="fa fa-angle-down" aria-hidden="true"></i>
        </button>
        <ul class="dropdown-menu dropdown-menu-right language-selector__dropdown">
            <% loop $Locales %>
                <li <% if $LinkingMode == 'Current' %>class="active"<% end_if %>>
                    <a href="$Link" lang="$LocaleRFC1766" class="dropdown-item">
                        <%-- Note: if you have multiple locales within the same language, you can use $Title instead --%>
                        $LanguageNative
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
