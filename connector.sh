#!/bin/bash -eu

#Merges data from one file to another


while read -r serial && read -r stickerid <&3;

do 

        if grep -qi "$serial" ../devicelist.csv; then
		newline=$stickerid","
		data="$(grep -i "$serial" ../devicelist.csv)"
		echo $data
		combination=$newline$data
		#echo $combination
		echo $combination  >> ../combined_stickerids_serialnumbers.csv;
        fi
#fi

done < ../serials.txt 3<../stickerids.txt;

#Says aloud what is in speech.txt
#./voice.sh "$speech"
exit
