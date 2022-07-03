import std/osproc
import std/terminal
import std/strformat

type
    dns_type = object
        name: string
        ip_1 :string
        ip_2 : string

proc dns_maker(name: string, ip_1: string,ip_2:string): dns_type = 
    var dns : dns_type
    dns.name = name
    dns.ip_1 = ip_1
    dns.ip_2 = ip_2
    dns
proc dns_conf_maker(dns : dns_type) =
    stdout.styledWriteLine(fgGreen, " - DNS changed to " , dns.name)
    discard execCmd(fmt"echo 'nameserver {dns.ip_1} ' > /etc/resolv.conf")
    discard execCmd(fmt"echo 'nameserver {dns.ip_2} ' >> /etc/resolv.conf")


var
    default_dns = dns_maker("Default","10.104.88.8","10.104.88.9")
    google_dns = dns_maker("Google","8.8.8.8","4.2.2.4")
    shekan_dns = dns_maker("Shekan","178.22.122.101","185.51.200.1")
var dnss = @[default_dns,google_dns ,shekan_dns ]

stdout.styledWriteLine(fgRed, "Avalable DNS:")  
stdout.styledWrite(" - ") 
for dns in dnss:
    stdout.styledWrite(fgGreen, dns.name , " ") 
echo ""

stdout.styledWriteLine(fgRed, "Which DNS To Use?")   
var dns_name = readLine(stdin)

case dns_name
of "d","default":
    dns_conf_maker(default_dns)
of "g","google":
    dns_conf_maker(google_dns)
of "s","shekan":
    dns_conf_maker(shekan_dns)
of "c","cancel":
    discard
else:
    echo "not valid"
    