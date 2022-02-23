#include <updater>
#define UPDATE_URL "https://raw.githubusercontent.com/TMG-CSGO/Mtach/main/addons/sourcemod/updatefile-Match.txt"
public Plugin myinfo = 
{
	name = "auto updater",
	author = "alix",
	description = "updater for Match[Game MOD] plugins",
	version = "1.0.0",
	url = "https://github.com/alix1383"
};
public void OnPluginStart()
{
    	if (LibraryExists("updater"))
	{
		Updater_AddPlugin(UPDATE_URL);
	}
}
public void OnLibraryAdded(const char[] name)
{
	if (StrEqual(name, "updater"))
	{
		Updater_AddPlugin(UPDATE_URL);
	}
}