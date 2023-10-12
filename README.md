# lfz-config

Configuration files used by LFZ template projects

This repo contains configuration files, such as lint configuration, that are used by all LFZ student projects. This allows these configuration files to be maintained in one location and used by each project.

The files in the `config` folder should be imported into configuration files at the root of the project.

# Usage

## Using the Config

`npm install --save-dev @learningfuze/lfz-config`

Config files are stored in the `config` folder, usually named with a `.json` extension. Usage depends on the system using it.

For example, ESLint lets you specify a relative path to the config file in the `extends` field. Like this:

```json
{
  "extends": "./node_modules/@learningfuze/lfz-config/config/eslintrc.json"
}
```

Others, like `lint-staged`, let you use a JS file to read the config and export it. Like this:

```js
// .lintstagedrc.cjs
const config = require("@learningfuze/lfz-config/config/lintstagedrc.json");

module.exports = config;
```

## Publishing

This package is published as `@learningfuze/lfz-config`. Every time this package is updated it should be republished, using `npm publish` from the command line. Remember to bump the version before publishing! For example:

```sh
npm version patch -m "Turn on lint rule X"
npm publish
```
