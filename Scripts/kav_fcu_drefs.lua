
local autopilot_hdg = dataref_table("sim/cockpit/autopilot/heading")
local autopilot_alt = dataref_table("sim/cockpit2/autopilot/altitude_dial_ft")
local autopilot_spd = dataref_table("sim/cockpit2/autopilot/airspeed_dial_kts")


function init()
    hdg_h = create_dataref_table("kavfcu/hdg", "Float")
    msg = string.format("new kavfcu datarefs created kavfcu/hdg")
    logMsg(msg)
    alt_h = create_dataref_table("kavfcu/alt", "Float")
    msg = string.format("new kavfcu datarefs created kavfcu/alt")
    logMsg(msg)
    spd_h = create_dataref_table("kavfcu/spd", "Float")
    msg = string.format("new kavfcu datarefs created kavfcu/spd")
    logMsg(msg)
end

function update()
    hdg_h[0] = math.floor(autopilot_hdg[0]+0.5)
    alt_h[0] = math.floor(autopilot_alt[0]+0.5)
    spd_h[0] = math.floor(autopilot_spd[0]+0.5)
end

init()
do_every_frame("update()")
