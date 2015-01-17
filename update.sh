#!/bin/bash

init() {
	cd /tmp
	mkdir "RRP"
	cd RRP
	git clone https://github.com/RedlineReborn/Plugins.git && cd Plugins && open plugins
	if [ "$?" -ne "0" ]; then
		echo "Failed to clone. Exiting."
		exit
	fi
}

wait() {
	echo -e "\033[31m"
	echo "Press 'enter' to upload your changes."
	echo "Please, be sure that everything is correct."
	echo "If there are any problems, contact me."
	echo -e "\033[0m"
	read
}

writeoutIndex() {
	echo '{"plugins":['
	for f in plugins/*.json
	do
		cat "$f"
		echo ","
	done
	echo "0]}"
}

upload() {
	git add .
	git commit -m "Updated files. =]"
	git push
}

reset() {
	cd ../..
	mv RRP ~/.Trashes
	echo "Thanks for your contributions. =]"
}

init&&wait&&writeoutIndex>index.json&&upload&&reset
