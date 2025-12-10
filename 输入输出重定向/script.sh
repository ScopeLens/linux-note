echo "这是一个测试" >> output.txt

function listArr(){
    echo "总共$#个参数"
    for item in "$@"
    do
        echo "$item">>output.txt
    done
}

# listArr $(cat input.txt)

#cat input.txt | ./script.sh

# 修正后的函数：读取标准输入
function listArr_from_stdin(){
    local count=0
    
    # 循环读取标准输入 (stdin) 的每一行
    while IFS= read -r item
    do
        echo "$item" >> output.txt
        ((count++))
    done
    
    echo "总共$count个参数 (从标准输入读取)"
}

listArr_from_stdin