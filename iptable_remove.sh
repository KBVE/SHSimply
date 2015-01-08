#same as iptable_forward, but to make sure the ip tables do not get damange, I decided to isolate.
iptables -t nat -D PREROUTING -p tcp -d $1 --dport $2  -i eth0 -j DNAT --to-destination $3
#chmod +x iptable_remove.sh
# ./iptable_remove.sh <public ip> <port number> <bind internal ip>
# So if you have an OpenVZ template and your public IP is 142.4.212.92, it would run as following to stop traffic to a Nginx VM @ 10.8.0.1.
# ./iptable_remove.sh 142.4.212.92 80 10.8.0.1
