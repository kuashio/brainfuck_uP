setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/testing_Brainfuino/testing_Brainfuino.adf"]} { 
	design create testing_Brainfuino "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino"
  set newDesign 1
}
design open "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/testing_Brainfuino"
cd "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/brainfuck_uP/source/brainfuck_uP.v"
addfile "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/brainfuck_uP/source/memory.v"
addfile "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/brainfuck_uP/source/testing_brainfuck_uP.v"
vlib "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/testing_Brainfuino/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/brainfuck_uP/source/brainfuck_uP.v"
vlog -dbg -work work "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/brainfuck_uP/source/memory.v"
vlog -dbg -work work "C:/Users/kuash/OneDrive/Documents/brainfuck/Brainfuino/github repo/brainfuck_uP/Brainfuino/brainfuck_uP/source/testing_brainfuck_uP.v"
module testing_brainfuck_uP
vsim  +access +r testing_brainfuck_uP   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
