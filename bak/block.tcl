proc block {args} {

    
    set num_args [llength $args     ]
    set name     [lindex  $args 0   ]

    set IS_DEF  0
    set IS_INST 0
    if {$num_args == 3} {
        if {![string match "@*" [lindex $args 1]]} {
            error "Invalid second argument. Should start with '@', but get [lindex $args 1]."
        }
        set IS_DEF  1
        set def_code  [lindex $args 2]
        set IS_INST 1
        set inst_addr [lindex $args 1]
    } elseif {$num_args == 2} {
        if {[string match "@*" [lindex $args 1]]} {
            set IS_INST 1
            set inst_addr [lindex $args 1]
        } else {
            set IS_DEF 1
            set def_code  [lindex $args 1]
        }
    } else {
        error "Error arg number, Expected 2 or 3. "
    }


    set field_dict [dict create]
    set addr_dict  [dict create]


    if {$IS_DEF} {
        eval $def_code

        # define data struct
        set field_payload [dict create]
        dict set field_payload name $name
        #dict set field_payload bits $var_bits
        # define var in up level stack.
        uplevel "set def_$name {$field_payload}"


        #uplevel "set def_$name  [lindex $args 0]"
    }


    if {$IS_INST} {
        # inst var in up level stack.
        #puts [uplevel "set def_$name"]

        set inst_dict [uplevel "set def_$name"]
        dict set inst_dict addr $inst_addr
        uplevel "dict set addr_dict $name {$inst_dict}"
        #uplevel "set inst_$name {$inst_dict}"
    }

}