#!/usr/bin/expect
#设置ssh连接的用户名
set user $1
ss
#设置ssh连接的host地址
set host $2

#设置ssh连接的端口号
set port $3

#设置ssh连接的登录密码
set password $4

#设置连接超时时间
set timeout -1

spawn ssh -o StrictHostKeyChecking=no $user@$host -p $port
expect "*password:"

#提交密码
send "$password\r"

#控制权移交
interact
