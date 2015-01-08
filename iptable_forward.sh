iptables -t nat -A PREROUTING -p tcp -d $1 --dport $2  -i eth0 -j DNAT --to-destination $3
#chmod +x iptable_forward.sh 
# ./iptable_forward.sh <public ip> <port number> <bind ip>
