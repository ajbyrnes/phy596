set ModuleHierarchy {[{
"Name" : "fit","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "readStage_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_28_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "interStage1_U0","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "inter1","ID" : "4","Type" : "no"},]},
	{"Name" : "interStage2_U0","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "inter2","ID" : "6","Type" : "no"},]},
	{"Name" : "finalStage_U0","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "readResult","ID" : "8","Type" : "no"},]},]
}]}