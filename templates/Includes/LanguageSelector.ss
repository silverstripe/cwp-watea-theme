<% if $Locales %>
    <div class="btn-group pull-right language-selector" id="header-language-toggle">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-language" aria-hidden="true"></i>
            <span class="hidden-xs hidden-sm">
                $SelectedLanguage
            </span>
            <i class="fa fa-angle-down" aria-hidden="true"></i>
        </button>
        <ul class="dropdown-menu dropdown-menu-right">
            <% loop $Locales %>
                <li <% if $LinkingMode == 'Current' %> class="active"<% end_if %>>
                    <a href="$Link" lang="$LocaleRFC1766">
                        <%-- Note: if you have multiple locales within the same language, you can use $Title instead --%>
                        $LanguageNative
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
