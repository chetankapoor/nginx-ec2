url=$1
status=$(curl --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null ${url})
if [ $status == 200 ]; then
	echo "[$(date)]"
	echo $status
	echo "page loading successfully"
else
	echo "[$(date)]"
	echo $status
	echo "Error"
fi
