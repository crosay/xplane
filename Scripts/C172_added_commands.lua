r_knob_TAS = XPLMFindDataRef("laminar/c172/knob_TAS")


cmd_dec_TAS = create_command( "lua/c172/dec_knob_TAS", "decrease true airspeed computer", 
                "XPLMSetDataf(r_knob_TAS, XPLMGetDataf(r_knob_TAS) - .01)",
                "",
                "")
cmd_inc_TAS = create_command( "lua/c172/inc_knob_TAS", "increase true airspeed computer", 
                "XPLMSetDataf(r_knob_TAS, XPLMGetDataf(r_knob_TAS) + .01)",
                "",
                "")
