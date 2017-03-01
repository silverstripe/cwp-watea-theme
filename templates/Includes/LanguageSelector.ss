<% if $AvailableTranslationsWithLocale %>
    <div class="btn-group pull-right language-selector" id="header-language-toggle">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="hidden-xs">
                $getSelectedLanguage
            </span>

            <span class="pull-left">
                <i class="fa fa-language" aria-hidden="true"></i>
            </span>
            <i class="fa fa-angle-down" aria-hidden="true"></i>
        </button>
        <ul class="dropdown-menu dropdown-menu-right">
            <% loop $AvailableTranslationsWithLocale %>
                <li <% if $Current %> class="active"<% end_if %>>
                    <a href="$Link" lang="$Locale">
                        $LangName
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
