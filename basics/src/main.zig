const std = @import("std");

pub fn main() anyerror!void {
    // Assignment    
    const constant: i32 = 5;  // signed 32-bit constant
    var variable: u32 = 5000; // unsigned 32-bit variable
    std.debug.print("constant: {d}\n", .{constant});
    std.debug.print("variable: {d}\n", .{variable});

    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);
    std.debug.print("inferred_constant: {d}\n", .{inferred_constant});
    std.debug.print("inferred_variable: {d}\n", .{inferred_variable});

    const a: i32 = undefined;
    var b: u32 = undefined;
    std.debug.print("a: {d}\n", .{a});
    std.debug.print("b: {d}\n", .{b});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
