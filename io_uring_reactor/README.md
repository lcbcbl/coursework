新建文件夹了




#### cpp bind
```cpp
// bind() 什么意思

//例子    
accept_channel_.set_readcallback(bind(&Acceptor::handle_read, this));

```




#### snprintf()

```cpp
// 声明
int snprintf ( char * str, size_t size, const char * format, ... );

```
- str -- 目标字符串。
- size -- 拷贝字节数(Bytes)。
- format -- 格式化成字符串。
- ... -- 可变参数。

```cpp
#include <stdio.h>
 
int main()
{
    char buffer[50];
    char* s = "runoobcom";
 
    // 读取字符串并存储在 buffer 中
    int j = snprintf(buffer, 6, "%s\n", s);
 
    // 输出 buffer及字符数
    printf("string:\n%s\ncharacter count = %d\n", buffer, j);
 
    return 0;
}
```
输出结果为
```
string:
runoo
character count = 10
```