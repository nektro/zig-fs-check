# zig-fs-check

Various utilities for testing certain conditions in the local files

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
