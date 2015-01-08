iptables -t nat -A PREROUTING -p tcp -d 142.4.212.92 --dport $1  -i eth0 -j DNAT --to-destination $2
#chmod +x iptable_forward.sh 
# ./iptable_forward.sh <port number> <bind ip>
