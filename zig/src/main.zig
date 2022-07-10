const std = @import("std");

pub fn main() anyerror!void {
    var iteration: u64 = 0;
    var value: i32 = 0;
    for ([_]u0{0} ** 1000000000) |_| {
        var x: i32 = 0;
        var y: i32 = 1;
        while (true) {
            iteration += 1;
            if (iteration & 1 == 0) {
                value += x;
            } else {
                value -= x;
            }
            var i = x + y;
            x = y;
            y = i;
            if (x > 999999999) {
                break;
            }
        }
    }
    std.debug.print("iter: {} {}\n", .{iteration, value});
}
