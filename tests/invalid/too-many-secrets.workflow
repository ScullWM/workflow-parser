# Invalid file, with too many secrets.

action "a" { uses="./a" secrets=["S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", "S11", "S12", "S13", "S14", "S15", "S16", "S17", "S18", "S19", "S20", "S21", "S22", "S23", "S24", "S25", "S26", "S27", "S28", "S29", "S30", "S31", "S32", "S33", "S34", "S35", "S36", "S37", "S38", "S39", "S40"] }
action "b" { uses="./b" secrets=["S35", "S36", "S37", "S38", "S39", "S40", "S41", "S42", "S43", "S44", "S45", "S46", "S47", "S48", "S49", "S50", "S51", "S52", "S53", "S54", "S55", "S56", "S57", "S58", "S59", "S60", "S61", "S62", "S63", "S64", "S65", "S66", "S67", "S68", "S69", "S70", "S71", "S72", "S73", "S74", "S75", "S76", "S77", "S78", "S79", "S80", "S81", "S82", "S83", "S84", "S85", "S86", "S87", "S88", "S89", "S90", "S91", "S92", "S93", "S94", "S95", "S96", "S97", "S98", "S99", "S100", "S101"] }
action "c" { uses="./b" secrets=["S90", "S91", "S92", "S93", "S94", "S95", "S96", "S97", "S98", "S99", "S100", "S101", "S102", "S103", "S104", "S105", "S106", "S107", "S108", "S109", "S110"] }

# ASSERT {
#   "result":       "failure",
#   "numActions":   3,
#   "numWorkflows": 0,
#   "errors":[
#     { "line": 4, "severity": "ERROR", "message": "all actions combined must not have more than 100 unique secrets" }
#   ]
# }
