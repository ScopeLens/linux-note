#创建数组
my_array=("apple" "banana" "cherry")

#创建关联数组
declare -A acg_array=(["A"]="Anime" ["C"]="Comic" ["G"]="Galgame") #数据是无需

#获取数组中元素
echo "数组元素:${my_array[@]}"
echo "关联数组元素:${acg_array[*]}"

echo ${!my_array[@]}
echo ${!acg_array[@]}

#获取数组长度
echo ${#my_array[@]}