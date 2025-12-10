#if

numA=1
numB=2
numC=3

#if 
if [[ $numA -lt $numB ]];
then
    echo "$numA 小于 $numB"
fi

#if else
if [[ $numA -gt $numC ]];
then
    echo "$numA 大于 $numC"
else
    echo "$numA 不大于 $numC"
fi

#if elif else
if [[ $numA -gt $numC ]];
then
    echo "$numA 大于 $numC"
elif [[ $numA -eq $numB ]];
then
    echo "$numA 等于 $numB"
else
    echo "$numA 小于 $numC 且不等于 $numB"
fi


#for循环
arr=(10 20 30)
for index in ${!arr[@]}
do 
    echo "索引：$index，值：${arr[$index]}"
done

#while语句
count=1
while [[ $count -ne $numC ]];
do
    echo "count的值为：$count"
    ((count++))
done

#until循环
until [[ $count -eq 1 ]];
do
    echo "count的值为：$count"
    ((count--))
done

#case...esac
fruit="apple"
case $fruit in
    "apple")
        echo "这是一个苹果"
        ;;
    "banana")
        echo "这是一个香蕉"
        ;;
    *)
        echo "未知的水果"
        ;;
esac    