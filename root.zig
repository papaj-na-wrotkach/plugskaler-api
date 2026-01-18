pub const Image = extern struct {
	data: [*c]u8,
	w: c_int,
	h: c_int,
	c: c_int,
};

pub const PlugskalerInitFn = fn ([*c]const u8) *anyopaque;
pub const PlugskalerProcessFn = fn ([*c]Image, [*c]Image) void;
pub const PlugskalerDeinitFn = fn (*anyopaque) void;
