> Last update 2017-12-04

## Description

This Webpack config separated into *common*, *dev*, and *prod* parts respectively.

This Webpack config does the following:

1. HTML
     - Copies *index.html* from *src* to *dist*
2. CSS
    - Transpile SASS into CSS
    - Extracts styles into the separate file
    - Adds prefixes
    - Does NOT process images (e.g. just copies *assets* folder to *dist*)
3. Javascript
    - Performs Babel magic


## Dependencies

Dependencies for this Webpack config are listed in *package.json*.  

Or execute the following command 

> **Warning!** The command may be outdated!

```sh
npm i autoprefixer babel-core babel-loader babel-preset-env clean-webpack-plugin copy-webpack-plugin css-loader extract-text-webpack-plugin file-loader html-webpack-plugin node-sass postcss-loader precss sass-loader style-loader uglifyjs-webpack-plugin webpack webpack-dev-server webpack-merge
```
