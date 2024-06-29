# CV

- More information coming soon...
- `mstk` coming soon... 

The cv is compiled and published using [`mstk`](https://github.com/mclevey/mstk/tree/main). Running `bash compile.sh` will print some messages to the terminal, or you can just run `mstk pipeline cv .`, where `.` represents the cv directory. Note that `mstk` expects the directory to contain a file called `cv.md` and a file called `config.yaml`, both of which contain `yaml` data. See the `mstk` documentation for more details.

## Compile

`mstk` is currently installed in the conda environemnt `mstk`. This is really just for development, will not do this once the package is on pypi. 

```zsh
conda activate mstk 
bash compile.sh
```

or 

```zsh
conda activate mstk 
mstk pipeline cv .
```
