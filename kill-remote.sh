# Action:
#	Kill clients by ssh-ing into client machines

export APT=1

if [ $APT -eq 1 ]
then
	for i in `seq 2 110`; do
		sshpass -p "123456" ssh -oStrictHostKeyChecking=no 192.168.99.12 "cd HERD; ./local-kill.sh" &
	done
else 
	for i in `seq 2 20`; do
		ssh anuj$i.RDMA.fawn.susitna.pdl.cmu.local "cd HERD; ./local-kill.sh"
	done
fi
