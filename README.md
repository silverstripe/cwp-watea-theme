# CWP Agency theme

This theme is a [subtheme](https://docs.silverstripe.org/en/3/developer_guides/templates/themes) of the [`cwp-base` theme](https://gitlab.cwp.govt.nz/cwp/new-theme). It provides a more visually appealing example for starting a theme for a CWP website.

## Installation

Install this module with composer:

```
composer require cwp/new-theme_advanced
```

## Development

### Setup

For development you will need to install the required npm packages. Ensure you have changed into this theme's directory first:

```
cd themes/new-theme_advanced
npm install
```

### Compiling assets

You can run the following npm scripts to compile Javascript and SASS assets:

```
npm run build   # Produces unminified (development) distributable files in dist/
npm run package # Produces minified (production) distributable files in dist/
```

**Please note:** This subtheme will be the source of truth for compiled CSS. For Javascript however, this subtheme will _only_ contain code that is relevant to this subtheme. For this reason you will need to include the base theme Javascript first and then the subtheme Javascript:

```
# File: templates/Page.ss
<script src="{$ThemeDir}/dist/js/main.js"></script>
<script src="{$ThemeDir}_advanced/dist/js/main.js"></script>
```

While for CSS, just include this subtheme's file:

```
# File: templates/Page.ss
<link rel="stylesheet" href="{$ThemeDir}_advanced/dist/css/main.css">
```

### Linting

Every now and then (e.g. before you commit) you should run a quick linter check over your Javascript and SASS source code:

```
npm run lint
```

## Versioning

This library follows [Semver](http://semver.org). According to Semver, you will be able to upgrade to any minor or patch version of this library without any breaking changes to the public API. Semver also requires that we clearly define the public API for this library.

All methods, with `public` visibility, are part of the public API. All other methods are not part of the public API. Where possible, we'll try to keep `protected` methods backwards-compatible in minor/patch versions, but if you're overriding methods then please test your work before upgrading.
