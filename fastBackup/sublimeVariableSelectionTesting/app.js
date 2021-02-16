// Key to select only variable instances, you must NOT SELECT variable text and use ctrl+d.
// But you should use place cursor insted of start/end/or mid of varible binding text and use ctrl+d. Yikes!!

const foo = "bar";

const buffoon = foo;

buffoon = foo;
// Adding, below bindings to `user settings` makes f2, f3(find next binding) and shift+f3(find previous binding) works.
// { "keys": ["f2"], "command": "find_all_under" }
// { "keys": ["f3"], "command": "find_next" },
// { "keys": ["shift+f3"], "command": "find_prev" },
