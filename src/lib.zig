const std = @import("std");

pub fn doesFileExist(dir: std.fs.Dir, fpath: []const u8) !bool {
    const file = dir.openFile(fpath, .{}) catch |e| switch (e) {
        error.FileNotFound => return false,
        error.IsDir => return true,
        else => return e,
    };
    defer file.close();
    return true;
}

pub fn doesDirExist(dir: std.fs.Dir, fpath: []const u8) !bool {
    const file = dir.openFile(fpath, .{}) catch |e| switch (e) {
        error.FileNotFound => return false,
        error.IsDir => return true,
        else => return e,
    };
    defer file.close();
    const s = try file.stat();
    if (s.kind != .Directory) return false;
    return true;
}
