;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	dns1.puppetlabs.com. admin.puppetlabs.com. (
			      8		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

;Name servers - ns records 
	 	NS	dns1.puppetlabs.com.
		NS	dns2.puppetlabs.com.
;Name servers - A records 
dns1			A	192.168.2.7
dns2  		 	A 	192.168.2.9
yavor-laptop		A	192.168.2.5
micore			A	192.168.2.194
misentry		A	192.168.2.195
