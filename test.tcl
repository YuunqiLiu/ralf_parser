source ralf_parser.tcl

#puts [info vars]

field TXE {
    bits 1;
}

block B1 @0 {
    register L1 @0 {
        bits 1;
        field TXE @0;
        field TXD @4 {
            bits 1;
        }
        
    }
}

#puts [info vars]

#parray DEF
#puts [array names DEF]

#puts [set DEF(B1)]
#sputs "wer"
#puts $def_L1





        #puts [info vars]

        #puts $def_TXE
        #puts $def_TXD

        #puts "======="
        #puts $field_dict

#set myVar 42
#puts [find_variable myVar]
#set register_list "field1 field2"
#array set a_reg $register_list
#set d_reg [dict create zolli {nick_kroc}]
#dict append d_reg key val

        #set inst_dict [uplevel "set def_$name"]
        #uplevel "set inst_$name {$inst_dict}"

    #set var_offset  [lindex $args 1]
    #set code        [lindex $args 2]

    #eval $code

    #puts $var_bits

    # set name        [lindex $args 0]

    # set mode "def_and_inst"

    # if {$mode eq "def_and_inst" || $mode eq "def"} {
    #     puts "Mode is either 'def_and_inst' or 'def'"
    # } else {
    #     puts "Mode is not 'def_and_inst' or 'def'"
    # }


# proc register {args} {
# 
#     #set arg_list [lrange $args 1 end]
#     set field_list "field1 field2"
# 
#     set name [lindex $args 0]
# 
#     uplevel {lappend register_list "wer"}
# 
#     puts [lindex $args 1]
# 
#     puts [namespace current]
# 
#     eval [lindex $args 1]
#     #eval [lindex $args 1]
# 
#     puts $field_list
# 
# }


    
     # set num_args [llength $args     ]
     # set name     [lindex  $args 0   ]
 # 
     # set IS_DEF  0
     # set IS_INST 0
     # if {$num_args == 3} {
     #     if {![string match "@*" [lindex $args 1]]} {
     #         error "Invalid second argument. Should start with '@', but get [lindex $args 1]."
     #     }
     #     set IS_DEF  1
     #     set def_code  [lindex $args 2]
     #     set IS_INST 1
     #     set inst_addr [lindex $args 1]
     # } elseif {$num_args == 2} {
     #     if {[string match "@*" [lindex $args 1]]} {
     #         set IS_INST 1
     #         set inst_addr [lindex $args 1]
     #     } else {
     #         set IS_DEF 1
     #         set def_code  [lindex $args 1]
     #     }
     # } else {
     #     error "Error arg number, Expected 2 or 3. "
     # }