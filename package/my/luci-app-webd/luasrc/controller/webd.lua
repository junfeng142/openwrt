module("luci.controller.webd", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/webd") then
		return
    end
    
	entry({"admin", "services", "webd"}, cbi("webd"), _("Web Filemanage"), 200).dependent=false
	entry({"admin", "services", "webd","status"},call("act_status")).leaf=true

end

function act_status()
    local e={}
    e.running=luci.sys.call("pgrep webd >/dev/null")==0
    luci.http.prepare_content("application/json")
    luci.http.write_json(e)
end
