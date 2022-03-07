i=1
resp="200"

while [ $resp = "200" ]
do
	((i++))
	resp=$(curl -s -o /dev/null -I -w "%{http_code}" https://cs.msu.ru/sites/cmc/files/docs/3_kurs_vesna_2022_$i.pdf)
done

((i--))
echo "https://cs.msu.ru/sites/cmc/files/docs/3_kurs_vesna_2022_$i.pdf"
