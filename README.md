# CV

The cv is compiled and published using [`mstk`](https://github.com/mclevey/mstk/tree/main). Running `bash compile.sh` will print some messages to the terminal, or you can just run `mstk pipeline cv .`, where `.` represents the cv directory. Note that `mstk` expects the directory to contain a file called `cv.md` and a file called `config.yaml`, both of which contain `yaml` data. See the `mstk` documentation for more details.

## Compile

```zsh
bash compile.sh
```

or 

```zsh
mstk pipeline cv .
```
