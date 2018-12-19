<article class="container">
    <div class="row">
        <section class="col-lg-12">
            <header class="page-header">
                $Breadcrumbs
                <h1>$Entry.Name</h1>
            </header>
        </section>
    </div>
    <div class="row">
        <section class="col-lg-12">
            <% with $Entry %>
                <div class="registry__section">
                    <% include SchoolDetail Label='Principal', EntryData=$Principal %>
                    <% include SchoolDetail Label='Address', EntryData=$Street, EntrySuburb=$Suburb %>
                    <% include SchoolDetail Label='Type', EntryData=$Type %>
                    <% include SchoolDetail Label='Gender', EntryData=$Gender %>
                </div>

                <header>
                    <h1 class="h4">Contact Details</h1>
                </header>

                <div class="registry__section">
                    <% include SchoolDetail Label='Telephone', EntryData=$Telephone %>
                    <% include SchoolDetail Label='Fax', EntryData=$Fax %>
                    <% include SchoolDetailLink Label='Email', EntryData=$Email %>
                    <% include SchoolDetailLink Label='Website', EntryData=$Website %>
                </div>

                <header>
                    <h1 class="h4">Roll</h1>
                </header>

                <div class="registry__section">
                    <% include SchoolDetail Label='Total', EntryData=$RollTotal %>
                    <% include SchoolDetail Label='European / Pakeha', EntryData=$RollPakeha %>
                    <% include SchoolDetail Label='Māori', EntryData=$RollMaori %>
                    <% include SchoolDetail Label='Pasifika', EntryData=$RollPasifika %>
                    <% include SchoolDetail Label='MELAA', EntryData=$RollMELAA %>
                    <% include SchoolDetail Label='Other', EntryData=$RollOther %>
                    <% include SchoolDetail Label='International Students', EntryData=$RollInternational %>
                </div>

                <header>
                    <h1 class="h4">Administrative Details</h1>
                </header>

                <div class="registry__section">
                    <% include SchoolDetail Label='Local Ministry of Education Office', EntryData=$MinEdLocalOffice %>
                    <% include SchoolDetail Label='Education Region', EntryData=$EducationRegion %>
                    <% include SchoolDetail Label='Decile', EntryData=$Decile %>
                    <% include SchoolDetail Label='Longitude', EntryData=$Longitude %>
                    <% include SchoolDetail Label='Latitude', EntryData=$Latitude %>
                </div>
            <% end_with %>
        </section>
    </div>
</article>

<% include PageUtilities %>
