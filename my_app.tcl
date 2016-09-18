
wm withdraw .
fconfigure stdout -translation lf

########################################
#
proc main { argv } {

    set cmd "exec make clean run"

    puts "executing: $cmd"

    if {[catch {set result [eval $cmd]} e]} {
	puts "badness has occurred: $e"
	puts "$::argv0: abnormal exit"
	exit 1
    }
    
    puts "result:\n[join [split \n$result \n] \n*\t]"

    puts "$::argv0: normal exit"
    exit 0
}

########################################

main $argv
