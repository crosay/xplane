KGS_TO_GALH = 1320.92
ff_kg_s = dataref_table("sim/cockpit2/engine/indicators/fuel_flow_kg_sec")


function init()
    ff_gallon_h = create_dataref_table("lua/engine/indicators/fuel_flow_gal_hour", "FloatArray")
end

function updateFuelFlow()
    local i
    for i = 0, 10 do
        ff_gallon_h[i] = ff_kg_s[i] * KGS_TO_GALH
    end
end

logMsg("FlyWithLua Info: fuel flow from kg per s to gallon per hour set.")
logMsg("new dataref created:sim/lua/engine/indicators/fuel_flow_gal_hour")

init()
do_every_frame("updateFuelFlow()")
