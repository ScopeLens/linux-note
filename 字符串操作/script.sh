#"定义一个字符串变量"
my_string="Hello,World!"
echo "字符串内容:${my_string}"
echo "字符串长度:${#my_string}"

#获取第二到第四个字符
echo "第二到第四个字符:${my_string:1:4}"
echo "第四个字符开始截取:${my_string:3}"
echo "切割到第四个字符:${my_string::4}"

#查找字符
echo `expr index ${my_string} W`