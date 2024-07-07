# About this

Self (public): [palladius/ricc-hotrails](https://github.com/palladius/ricc-hotrails/)

Riccardo wants to learn Turbo and Stimulus.

## about
* See `webapp/README.md` for more

## Ricc doc

* https://docs.google.com/document/d/1XQSbAjj8zirUnXWMDdDecGl3lyNIcwTC_wdBv4CUB7A/edit
* initialization: rails new quote-editor --css=sass --javascript=esbuild --database=postgresql


## BUGS

Ah no its good.

```
$ bundle platform
Your platform is: x86_64-linux

ricc@derek:🏡~/git/ricc-hotrails/webapp$ arch
x86_64
```

### Dockerfile fails:

Error:

```
The command '/bin/sh -c yarn install --frozen-lockfile' returned a non-zero code: 1
➤ YN0050: The --frozen-lockfile option is deprecated; use --immutable and/or --immutable-cache instead
 ---> Running in bc5a610a811e
Step 14/26 : RUN yarn install --frozen-lockfile
```

Tried this solution:

```
# Solution from https://stackoverflow.com/questions/43429685/how-can-i-resolve-your-bundle-only-supports-platforms-x86-mingw32-but-your
$ bundle lock --add-platform ruby
$ bundle lock --add-platform x86_64-linux
```
