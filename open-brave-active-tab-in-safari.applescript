tell application "Brave Browser"
	if (exists front window) then
		-- Retrieve the URL of the active tab in the front window
		set tabUrl to URL of active tab of front window
	end if
end tell

-- Ensure the URL is not empty before proceeding to Safari
if tabUrl is not "" then
	-- Target Safari application
	tell application "Safari"
		activate
		-- Open the URL in a new tab
		open location tabUrl
	end tell
else
	-- Handle the case where there is no active tab or URL is empty
	display dialog "No active tab in Brave Browser." buttons {"OK"} default button "OK"
end if
