-- The following configuration simply disables the "animation" for mini.indentscope
return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      delay = 0,
      draw = { animation = require("mini.indentscope").gen_animation.none() },
    },
  },
}
