#echo

echo -n "Hello,World!"
echo "前一段不换行"

echo -e "Hello\tWorld"
echo -e "Hello\nWorld"

echo "追加1" >> test.txt
echo "追加2" >> test.txt

echo "覆盖写入" > test.txt

echo "追加3" >> test.txt
echo "追加4" >> test.txt

#printf

#和c基本一致

numA=10
strA="Hello"

printf "numA=%d\n" $numA
printf "strA=%s\n" $strA

floatA=3.14159
printf "floatA=%.2f\n" $floatA