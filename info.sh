tail -F /var/log/syslog | while read line
do 
    program="$ (echo "$line" | cud -d " " -f 5 | cut -d "[" -f 1)"
        if [ "$program" = "dhclient" ]
	then
		echo "LOG DU CLIENT DHCP: $line"
	fi
done
