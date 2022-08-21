local style = require "core.style"
local common = require "core.common"

style.background =             { common.color "#FCFCFC" } --代码区
style.background2 =            { common.color "#EDEDED" } --顶栏及侧栏
style.background3 =            { common.color "#DDDDDD" } --次栏
style.text =                   { common.color "#404040" } --文字
style.caret =                  { common.color "#181818" } --嗯啊啊啊啊啊啊（插入）
style.accent =                 { common.color "#43648A" } --主题色（类似于Primary）
style.dim =                    { common.color "#C2C2C2" } --淡色
style.divider =                { common.color "#E4E4E4" } --代码缩进对齐线
style.selection =              { common.color "#ECECEC" } --被倒转力（反白）
style.line_number =            { common.color "#d0d0d0" } --行数
style.line_number2 =           { common.color "#E8E8E8" } --行数被狙击（Focus） 
style.line_highlight =         { common.color "#E8E8E8" } --行被狙击（Focus）
style.scrollbar =              { common.color "#DDDDDD" } --滚动条
style.scrollbar2 =             { common.color "#CCCCCC" } --滚动条被轻轻的抚摸（Hover）

style.syntax["normal"] =       { common.color "#373C42" } --基本
style.syntax["symbol"] =       { common.color "#4A545E" } --符号
style.syntax["comment"] =      { common.color "#6A737D" } --注释
style.syntax["keyword"] =      { common.color "#D73A49" } --关键词组
style.syntax["keyword2"] =     { common.color "#7d4141" } --又一个关键词组
style.syntax["number"] =       { common.color "#215EA3" } --数字
style.syntax["literal"] =      { common.color "#215EA3" } --字面量
style.syntax["string"] =       { common.color "#054187" } --字符串
style.syntax["operator"] =     { common.color "#D73A49" } --运算符
style.syntax["function"] =     { common.color "#215EA3" } --函数
