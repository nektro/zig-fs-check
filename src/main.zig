const std = @import("std");

const fscheck = @import("./lib.zig");

pub fn main() !void {
    std.log.info("All your codebase are belong to us.", .{});

    try std.testing.expectEqual(true, try fscheck.doesFileExist(std.fs.cwd(), "LICENSE"));
    try std.testing.expectEqual(true, try fscheck.doesDirExist(std.fs.cwd(), ".zigmod"));
}
