-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "SCSS", --插件名称
  files = "%.scss$", --匹配符合的副档名
  comment = "//", --注释
  patterns = {
    { pattern = "//.-\n",             type = "comment"  }, --单行注释
    { pattern = { "/%*", "%*/" },     type = "comment"  }, --多行注释
    { pattern = "^%.[%a][%w_-]*",      type = "keyword2" }, --CSS Class
    { pattern = "[0-9]",        type="number"}, --数值
    { pattern = "-?%d+[%d%.]*p[xt]",      type = "number"   }, 
    { pattern = "-?%d+[%d%.]*deg",        type = "number"   }, 
    { pattern = "-?%d+[%d%.]*[s%%]",      type = "number"   }, 
    { pattern = "-?%d+[%d%.]*",           type = "number"   }, 
    { pattern = { '"', '"', '\\' },       type = "string"   }, --字串
    { pattern = { "'", "'", '\\' },       type = "string"   }, --字串
    { pattern = "[%a][%w-]*%s*%f[:]", type = "keyword"  }, --CSS 属性
    { pattern = "#[%a][%w_-]*",       type = "keyword2" }, --CSS ID 选择器
    { pattern = "%-%-[A-Za-z_%-]+",              type = "keyword2" }, --CSS 变量
    { pattern = "$[A-Za-z_%-]+",                   type = "keyword"  }, --变量
    { pattern = "@%w+",                   type = "literal"  }, --CSS 函数
    { pattern = "[#,]%w+",                type = "function" }, 
    { pattern = "&",                      type = "keyword2" }, --上一层级定义符
    --{ pattern = "[%:%w+]",              type = "operator" }, --CSS 伪类
    { pattern = "#%x%x%x%x%x%x%f[%W]",type = "string"   }, --HEX
    { pattern = "#%x%x%x%f[%W]",      type = "string"   }, --HEX
    { pattern = "[%a_][%w_]*",            type = "symbol"   },
    { pattern = "%.[%a][%w_-]*",      type = "normal" },-- 其他
  },
  symbols = {
    ["transparent"] = "literal",
    ["none"]        = "literal",
    ["absolute"]    = "literal",
    ["relative"]    = "literal",
    ["solid"]       = "literal",
    ["flex"]        = "literal",
    ["flex-start"]  = "literal",
    ["flex-end"]    = "literal",
    ["row"]         = "literal",
    ["center"]      = "literal",
    ["column"]      = "literal",
    ["pointer"]     = "literal",
    ["ease"]        = "literal",
    ["white"]      = "function",
    ["black"]      = "function",
    ["gray"]       = "function",
    ["blue"]       = "function",
    ["red"]        = "function",
    ["purple"]     = "function",
    ["green"]      = "function",
    ["yellow"]     = "function"
  }
}