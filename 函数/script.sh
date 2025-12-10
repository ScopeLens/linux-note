myfunc(){
    echo "This is my function"
}

myfunc

myfunc(){  
    echo "总共有$#个参数"   

    for item in "$@"
    do
        echo "参数值为：$item"
    done
}
myfunc 1 2 3 4 5


myfunc(){
    echo "总共有$#个参数"   

    number=0

    for item in "$@"
    do
        number=$((number+item))
    done

    return $number
}
myfunc 1 2 3 4 5

result=$?

echo "函数返回值为：$result"