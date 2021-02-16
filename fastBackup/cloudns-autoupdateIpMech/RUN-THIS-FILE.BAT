set dynurl=%cd%
SchTasks /Create /SC HOURLY /TN ClouDNS /TR %dynurl%\updateIP.vbs
SchTasks /Run /TN ClouDNS