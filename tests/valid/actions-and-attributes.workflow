"action" "a" {
	"uses"="./x"
	runs="cmd"
	env={ PATH="less traveled by", "HOME"="where the heart is" }
}
action "b" {
	uses="./y"
	needs=["a"]
	args=["foo", "bar"]
	secrets=[ "THE", "CURRENCY", "OF", "INTIMACY" ]
}

# ASSERT {
#   "result":       "success",
#   "numActions":   2,
#   "numWorkflows": 0
# }
