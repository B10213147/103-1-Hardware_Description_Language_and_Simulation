onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /simulation/in
add wave -noupdate -format Literal /simulation/out
add wave -noupdate -format Literal /simulation/UUT/in
add wave -noupdate -format Literal /simulation/UUT/out
add wave -noupdate -format Logic /simulation/UUT/valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 48
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ns} {168 ns}
