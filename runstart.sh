#ps  -ef |grep shadow|grep start |grep -v grep|awk '{print $2}'|xargs kill -9
count=`ps -ef |grep $1 |grep -v "grep" |wc -l`
      #echo $count
if [ 0 == $count ];then
        nohup sh /root/shadowsocks.sh 2>&1 | tee shadowsocks.log #这里修改路径
fi

