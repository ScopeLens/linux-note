# linux-note
学习linux与相关脚本

### Shell变量

#### 变量声明

命名和正常编程语言没有什么区别,不能使用数字开头,不能使用该语言的关键字

特别:不能使用$符号,无需关键字,声明的时候等号两边最好不要空格,会出现问题

```
EG.
普通变量:
Tag="B"
约定:常量使用全大写字母声明
PI="3.14"
```

#### 变量使用

使用美元符号放在前面表示使用

```
PI="3.14"
echo $PI
可以使用花括号帮助系统识别变量边界
echo ${PI}
```

#### 只读变量

先声明一个变量:PI="3.14"
设置成只读变量:readonly PI
只读变量无法修改


#### 删除变量

使用unset可以删除变量:unset PI  
**无法删除只读变量**


#### 数据类型

##### 字符串
shell中的默认类型,也是使用最多的类型

可以使用单引号或者双引号进行声明

单引号的字符都会原样输出,无法在单引号字符串中使用变量,单引号字符串中无法出现单个单引号,即便是转义也不行  

##### 数字

声明:`declare -i`

##### 数组

声明1:`TEST_ARRAY=(value1 value2 value3)`

声明2:单个声明
TEST[0]=value1
TEST[1]=value2

声明关联数组(感觉是个map,key->value)  
`declare -A site=(["google"]="www.google.com" ["runoob"]="www.runoob.com" ["taobao"]="www.taobao.com")`  
这个关联数组也可以像上面一样,先声明之后再给每一个元素单独赋值


访问方式:`${TEST_ARRAY[0]}`

### 注释

`#`号之后的内容不会被执行
```
#这里就会被忽略
```

### 字符串操作

#### 获取字符串长度

```
my_string="abcde"
echo ${#string}  #输出5
```

#### 提取子字符串/切割字符串

```
#定义一个字符串
my_string="hello"
#获取第二到第四个字符
echo ${my_string:1:4}
```


#### 查找字符

```
my_string="hello_world"
echo `expr index ${my_string} ow`
#查找字符o或者w的位置,谁先找到就返回谁的下标
```