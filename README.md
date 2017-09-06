# CWP Wātea theme

This theme is a [subtheme](https://docs.silverstripe.org/en/3/developer_guides/templates/themes) of the [Starter theme](https://gitlab.cwp.govt.nz/cwp/starter-theme). It provides a more visually appealing example for starting a theme for a CWP website.

![Screenshot](docs/images/screenshot.jpg)

## Installation

Install this theme module with Composer:

```
composer require cwp/watea-theme
```

## Documentation

You can find documentation on how to use this theme in the CWP Developer Documentation: [Using the Wātea theme](https://gitlab.cwp.govt.nz/cwp/cwp/blob/1.6/docs/en/01_Working_with_projects/14_Using_the_Watea_theme.md).

You may also find the documentation for the Starter theme useful: [Customising the starter theme](https://gitlab.cwp.govt.nz/cwp/cwp/blob/1.6/docs/en/01_Working_with_projects/05_Customising_the_starter_theme.md).

## Requirements

* [Composer](https://getcomposer.org)
* `cwp/starter-theme`: The foundation theme for this subtheme, via Composer

## Suggested module

The [agency-extensions](https://gitlab.cwp.govt.nz/cwp/agency-extensions) module provides additional functionality to the CMS for agency-style websites.

### Development requirements

* [Node and NPM](https://docs.npmjs.com/getting-started/installing-node)
* [Laravel-Mix](https://github.com/JeffreyWay/laravel-mix) and [Webpack](https://webpack.github.io) (via NPM)

## Versioning

This library follows [Semver](http://semver.org). According to Semver, you will be able to upgrade to any minor or patch version of this library without any breaking changes to the public API. Semver also requires that we clearly define the public API for this library.

All methods, with `public` visibility, are part of the public API. All other methods are not part of the public API. Where possible, we'll try to keep `protected` methods backwards-compatible in minor/patch versions, but if you're overriding methods then please test your work before upgrading.
