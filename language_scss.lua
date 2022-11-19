-- mod-version:3
local syntax = require "core.syntax"

-- Lite-XL-SCSS
-- Author: wuxian425
-- License: MIT

syntax.add {
  name = "SCSS",       -- 插件名称
  files = {"%.sass", "%.scss$"},   -- 匹配符合的副档名
  comment = "//", 
  patterns = {
    { pattern = "//.-\n",                         type = "comment"  },       -- 单行注释
    { pattern = { "/%*", "%*/" },                 type = "comment"  },       -- 多行注释
    { pattern = "^%.[%a][%w_-]*",                 type = "keyword2" },       -- CSS Class
    { pattern = "#%x%x%x%x%x%x%f[%W]",            type = "string"   },       -- HEX
    { pattern = "#%x%x%x%f[%W]",                  type = "string"   },       -- HEX
    { pattern = "[0-9]",                          type = "number"},          -- 数值
    { pattern = "-?%d+[%d%.]*p[xt]",              type = "number"   }, 
    { pattern = "-?%d+[%d%.]*deg",                type = "number"   }, 
    { pattern = "-?%d+[%d%.]*[s%%]",              type = "number"   }, 
    { pattern = "-?%d+[%d%.]*",                   type = "number"   }, 
    { pattern = { '"', '"', '\\' },               type = "string"   },       -- 字串
    { pattern = { "'", "'", '\\' },               type = "string"   },       -- 字串
    { pattern = "%-%-[A-Za-z_%-]+",               type = "keyword2" },       -- CSS 变量
    { pattern = "[%a%-][%w-]*%s*%f[:]",           type = "keyword"  },       -- CSS 属性
    { pattern = "#[%a][%w_-]*",                   type = "keyword2" },       -- CSS ID 选择器
    { pattern = "$[A-Za-z_%-]+",                  type = "keyword2"  },      -- SCSS 变量
    { pattern = "@%w+",                           type = "function"  },      -- CSS 函数
    { pattern = "[#,]%w+",                        type = "function" }, 
    { pattern = "&",                              type = "symbol" },         -- 上一层级定义符
    { pattern = "[%a_][%w_]*",                    type = "symbol"   },
    { pattern = "%.[%a][%w_-]*",                  type = "normal" },         -- 其他
  },
  symbols = {
    -- Color
    ["transparent"]   = "literal",
    -- Public
    ["none"]          = "literal",
    ["inherit"]       = "literal" , 
    ["initial"]       = "literal",  
    ["unset"]         = "literal", 
    -- Position
    ["absolute"]      = "literal",
    ["relative"]      = "literal",
    ["fixed"]         = "literal",
    ["sticky"]        = "literal",
    -- Border
    ["solid"]         = "literal",
    ["dashed"]        = "literal",
    ["doted"]         = "literal",
    ["double"]        = "literal",
    -- Flex
    ["flex"]          = "literal",
    ["flex-start"]    = "literal",
    ["flex-end"]      = "literal",
    -- Align
    ["center"]        = "literal",
    ["middle"]        = "literal",
    -- Row
    ["row"]           = "literal",
    ["column"]        = "literal",
    -- Cursor
    ["pointer"]       = "literal",
    -- Transition
    ["ease"]          = "literal",
    ["ease-in"]       = "literal",
    ["ease-out"]      = "literal",
    ["linear"]        = "literal",
    -- WhiteSpace   
    ["normal"]        = "literal",
    ["nowrap"]        = "literal",
    ["pre"]           = "literal",
    ["pre-line"]      = "literal",
    ["pre-wrap"]      = "literal",
    -- Visibiliy
    ["visible"]       = "literal",
    ["hidden"]        = "literal",
    -- !
    ["important"]     = "keyword2",
    -- Unit
    ["px"]            = "literal",
    ["vw"]            = "literal",
    ["em"]            = "literal",
    ["rem"]           = "literal",
    ["in"]            = "literal",
    ["pt"]            = "literal",
    -- Color
    ["white"]         = "function",
    ["black"]         = "function",
    ["gray"]          = "function",
    ["blue"]          = "function",
    ["red"]           = "function",
    ["purple"]        = "function",
    ["green"]         = "function",
    ["yellow"]        = "function"
  }
}