# get current time, set universal start time to be five seconds later 
timestamp=$(date +%s)
start_time=$((timestamp + 3))
printf "start_time = %s\n" $start_time >> setting.py


#start running the server and clients
python setting.py &
python client/smartDev.py & 
python client/sensor.py &

python server/server.py &
python client/bulb.py &
python client/temperature.py &
python client/outlet.py &
python client/motion.py &
python user/userp.py &
python combineresult.py 
