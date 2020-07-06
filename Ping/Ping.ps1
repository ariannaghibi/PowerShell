#Test if a computer is online

function ping {
param($computer_name)
# test-connection sends pings to a computer once and returns True if connection is established
return (test-connection $computer_name -Count 1 -Quiet)
}