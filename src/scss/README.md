## CSS Conventions

## This theme uses Bootstrap v3.3.7 (http://getbootstrap.com/)
## The principles below are inspired by Bootstrap and Airbnb standards.
## As per Bootstrap (unlike Airbnb) this theme does not use strict BEM with its use of double dashes or underscores but uses single dashes.

Use soft tabs (2 spaces) for indentation.
Prefer dashes over camelCasing in class names.
Do not use ID selectors.
When using multiple selectors in a rule declaration, give each selector its own line.
Put a space before the opening brace { in rule declarations.
In properties, put a space after, but not before, the : character.
Put closing braces } of rule declarations on a new line.
Put blank lines between rule declarations.
Never use !important.


## Comments

Prefer line comments (// in Sass-land) to block comments.
Prefer comments on their own line.
Avoid end-of-line comments (an exception might be to provide information about what variables equate to e.g. // ~24px).
Write detailed comments for code that is not self-documenting:
* Uses of z-index
* Compatibility or browser-specific hacks


## OOCSS and BEM

We encourage some combination of OOCSS and BEM (excludes dashes for this theme) for these reasons:
* It helps create clear, strict relationships between CSS and HTML
* It helps us create reusable, composable components
* It allows for less nesting and lower specificity
* It helps in building scalable stylesheets


## ID selectors

While it is possible to select elements by ID in CSS, it should generally be considered an anti-pattern. ID selectors introduce an unnecessarily high level of specificity to your rule declarations, and they are not reusable.


## Nested selectors

Do not nest selectors more than three levels deep, with the execption of nesting selectors like :focus and :hover.
Never nest ID selectors.


## JavaScript hooks

Avoid binding to the same class in both your CSS and JavaScript. Conflating the two often leads to, at a minimum, time wasted during refactoring when a developer must cross-reference each class they are changing, and at its worst, developers being afraid to make changes for fear of breaking functionality.


## Syntax

Use the .scss syntax, never the original .sass syntax
Order your regular CSS and @include declarations logically after, then nested styles


## Extend directive

@extend should be avoided because it has unintuitive and potentially dangerous behavior, especially when used with nested selectors. Even extending top-level placeholder selectors can cause problems if the order of selectors ends up changing later (e.g. if they are in other files and the order the files are loaded shifts). Gzipping should handle most of the savings you would have gained by using @extend, and you can DRY up your stylesheets nicely with mixins.


## Links

For more information on these conventions from Airbnb see https://github.com/airbnb/css, and refer to Bootstrap coding conventions here http://getbootstrap.com/.
