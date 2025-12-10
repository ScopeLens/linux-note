#算术运算符 用在(())中

numA=100

numB=2

echo "numA = $numA numB = $numB"

echo "numA + numB = $((numA + numB))"

echo "numA - numB = $((numA - numB))"

echo "numA * numB = $((numA * numB))"

echo "numA / numB = $((numA / numB))"

echo "numA % numB = $((numA % numB))"

echo "numA++ $((++numA))"

echo "numA-- $((--numA))"

numB=100

if (( numA == numB )); then

    echo "numA 等于 numB"

fi

numB=200

if (( numA != numB )); then

    echo "numA 不等于 numB"

fi

if (( numA < numB )); then

    echo "numA 小于 numB"

fi

#关系运算符 只能用于数值 用在[[]]中

numA=1

numB=1

if [[ numA -eq numB ]]; then

    echo "numA 等于 numB"

fi

numB=2

if [[ numA -lt numB ]]; then

    echo "numA 小于 numB"

fi

#布尔运算符
numA=2

numC=3

if [[ numA -eq numB && numB -lt numC ]]; then

    echo "numA等于numB并且numB小于numC"

fi

numC=1

if [[ numA -eq numB || numB -lt numC ]]; then

    echo "numA等于numB或者numB小于numC"

fi


#字符串运算符

strA="hello"

strB="world"

strC="hello"

if [[ $strA == $strC ]]; then

    echo "strA 等于 strC"

fi

if [[ $strA != $strB ]]; then

    echo "strA 不等于 strB"

fi

strA=""

if [[ -z $strA ]]; then

    echo "strA 为空字符串"

fi

if [[ ! -z $strB ]]; then

    echo "strB 非空字符串"

fi

if [[ -n $strB ]]; then

    echo "strB 非空字符串"

fi

#文件测试运算符

fileA="script.sh"

if [[ -e $fileA ]]; then

    echo "$fileA 文件存在"

fi

if [[ -r $fileA ]]; then

    echo "$fileA 文件可读"

fi

if [[ -w $fileA ]]; then

    echo "$fileA 文件可写"

fi

if [[ -x $fileA ]]; then

    echo "$fileA 文件可执行"

fi