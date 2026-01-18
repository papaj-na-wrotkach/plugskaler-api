const std = @import("std");

pub fn build(b: *std.Build) void {
	const target = b.standardTargetOptions(.{});
	const optimize = b.standardOptimizeOption(.{});
	_ = b.addModule("plugskaler-api", .{
		.root_source_file = b.path("root.zig"),
		.target = target,
		.optimize = optimize,
	});

	const install_step = b.getInstallStep();
	install_step.dependOn(&b.addInstallHeaderFile(b.path("plgugskaler-api.h"), b.pathJoin(&[_][]const u8{ "plugskaler", "plugiskaler-api.h", })).step);
}
