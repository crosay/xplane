r_flight_inst_rheo = XPLMFindDataRef("laminar/b58/lighting/flight_inst_rheo")
r_inst_flood_rheo = XPLMFindDataRef("laminar/b58/lighting/inst_flood_rheo")
r_eng_inst_rheo = XPLMFindDataRef("laminar/b58/lighting/eng_inst_rheo")
r_sub_panel_rheo = XPLMFindDataRef("laminar/b58/lighting/sub_panel_rheo")


cmd_dec_flight_inst = create_command( "lua/b58/lighting/dec_flight_inst", "decrease flight instrument panel", 
                "XPLMSetDataf(r_flight_inst_rheo, XPLMGetDataf(r_flight_inst_rheo) - .1)",
                "",
                "")

create_command( "lua/b58/lighting/inc_flight_inst", "increase flight instrument panel",
                "XPLMSetDataf(r_flight_inst_rheo, XPLMGetDataf(r_flight_inst_rheo) + .1)",
                "",
                "")

create_command( "lua/b58/lighting/dec_inst_flood_rheo", "decrease instrument flood rheostat",
                "XPLMSetDataf(r_inst_flood_rheo, XPLMGetDataf(r_inst_flood_rheo) - .1)",
                "",
                "")
create_command( "lua/b58/lighting/inc_inst_flood_rheo", "increase instrument flood rheostat",
                "XPLMSetDataf(r_inst_flood_rheo, XPLMGetDataf(r_inst_flood_rheo) + .1)",
                "",
                "")
