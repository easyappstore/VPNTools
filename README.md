# VPNTools
# 永不掉线版VPN

用法说明：
第一步：
chmod 777 shadowsocks.sh
chmod 777 runstart.sh
第二步：【注意】
修改runstart中shadowsocks的路劲
第三步：./runstart.sh 
第三步功能是检测代理是否存在，如代理进程不在了就重启进程，如果在则不执行重启

第四步:加入定时任务
在终端输入crontab -e
添加:
0 */10 * * * /root/runstart.sh（注意这个脚本的路劲）
