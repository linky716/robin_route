# coding:utf-8
import pymysql
import json
import re
import os,subprocess
from operator import itemgetter

class MYSQL:
    def __init__(self, host, user, password, database, charset="utf8"):
        self.host = host
        self.user = user
        self.password = password
        self.database = database
        self.charset = charset
        self.conn = None

    # 连接数据库
    def connect(self):
        self.conn = pymysql.connect(host=self.host,
                                    user=self.user,
                                    password=self.password,
                                    database=self.database,
                                    charset=self.charset)
        if self.conn.open == 1:
            print(">> 数据库连接成功!")
            return 1
        return 0

    # 关闭数据库连接
    def disconnect(self):
        self.conn.close()
        print(">> 数据库关闭成功!")

    # 输出全部
    def fetchAll(self, column,table):
        cursor = self.conn.cursor()
        sql = 'select %s from %s;' %(column, table)
        cursor.execute(sql)
        res = cursor.fetchall()
        cursor.close()
        return res

if __name__ == '__main__':


    mysql = MYSQL('114.212.112.36', 'root', '123456', 'communication')
    mysql.connect()
    res_flow = mysql.fetchAll("id,starttime,endtime", "flow_table")
    res_link = mysql.fetchAll("id,sourceip,destip,sourceport", "link_table")
   
    mysql.disconnect()

p = os.popen("hostname")
line = p.readline()
hostname=line.strip()

print('%s'%hostname)
link=[]
for i in range(len(res_link)):
    test=re.compile('%s+'%hostname)
    if(test.match(res_link[i][3])):
        link.append(res_link[i])

link.sort()

flow=[]
for m in range(len(res_flow)):
    for n in range(len(link)):
        if(res_flow[m][0]==link[n][0]):
            flow.append(res_flow[m])
 
flow=list(set(flow))   
for i in range(len(flow)):
    flow[i]=list(flow[i])

for i in range(len(flow)):
    flow[i][1]=int(flow[i][1])

flow.sort(key=(lambda x:x[1]))

print(flow)


link_dic=dict()
for i in range(len(link)):
    link_dic[link[i][0]]=link[i][1:]


f = open("leo_route.sh", "w") 
f.write("while true \n")
f.write("do\n")


gw=[]
for k in range(len(flow)):
    gw.append(link_dic[flow[k][0]])
    f.write("route add -net 10.0.0.0/16 gw "+gw[0][0]+"\n" )
    f.write("route add -net 10.0.0.0/16 gw "+gw[0][1]+"\n" )

    f.write("slepp "+str(int(flow[k][2])-int(flow[k][1]))+"\n")

    f.write("route del -net 10.0.0.0/16\n")
    f.write("route del -net 10.0.0.0/16\n")
    del gw[:]



f.write("done\n")

f.close()


