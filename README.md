# zig-fs-check

Measure the difference between two slices using the Levenshtein distance algorithm

Adapted from https://github.com/sindresorhus/fs-check

## Built With
- Zig master
    - https://github.com/ziglang/zig
- Zigmod package manager
    - https://github.com/nektro/zigmod

## Install
```
zigmod aq add 1/nektro/fs-check
```

## Usage
- `pub fn doesFileExist(dir: std.fs.Dir, fpath: []const u8) !bool`
- `pub fn doesDirExist(dir: std.fs.Dir, fpath: []const u8) !bool`

## License
MIT
