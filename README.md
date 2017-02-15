# CWP Agency theme

This theme is a [subtheme](https://docs.silverstripe.org/en/3/developer_guides/templates/themes) of the [`cwp-base` theme](https://gitlab.cwp.govt.nz/cwp/new-theme). It provides a more visually appealing example for starting a theme for a CWP website.

**Please note:** Currently the theme is configured as a "subtheme", so everything is inherited from the base theme into this module. Towards the end of the project we may/will take this out and allow the theme to be fully functional on its own for the sake of picking it up easily and modifying it on its own.

## Installation

Install this module with composer:

```
composer require cwp/new-theme_advanced
```

## Development

### Setup

For development you will need to install the required npm package and link the "base" theme:

```
npm link ../new-theme # This should be the folder of the base theme relative to the agency theme
npm install
```

**Note:** If you don't run `npm link` as above, you will see something like "Registry returned 404 for GET on ..." in the output of `npm install`.

### Compiling assets

You can run the following npm scripts to compile Javascript and SASS assets:

```
npm run build   # Produces unminified (development) distributable files in dist/
npm run package # Produces minified (production) distributable files in dist/
```

### Linting

Every now and then (e.g. before you commit) you should run a quick linter check over your Javascript and SASS source code:

```
npm run lint
```

## Versioning

This library follows [Semver](http://semver.org). According to Semver, you will be able to upgrade to any minor or patch version of this library without any breaking changes to the public API. Semver also requires that we clearly define the public API for this library.

All methods, with `public` visibility, are part of the public API. All other methods are not part of the public API. Where possible, we'll try to keep `protected` methods backwards-compatible in minor/patch versions, but if you're overriding methods then please test your work before upgrading.
