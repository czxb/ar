* Stata清屏命令
prog def cls
qui query
qui loc lines = c(pagesize)
if c(more) == "on" {
	qui set more off
	display _newline(`lines')
	qui set more on
}
else {
	display _newline(`lines')
}
end
