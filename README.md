## 本项目实现的最终作用是基于JSP大学生思想建设与心理健康网站
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 健康资讯管理.JPG
 - 公告友情链接管理.JPG
 - 教师信息管理.JPG
 - 管理员角色登录.JPG
 - 选择题管理.JPG
### 第2个角色为教师角色，实现了如下功能：
 - 个人资料管理.JPG
 - 教师角色登录.JPG
 - 留言查看.JPG
### 第3个角色为学生角色，实现了如下功能：
 - 个人信息管理
 - 健康资讯查看.JPG
 - 在线留言.JPG
 - 学生登录注册首页.JPG
 - 心理测试.JPG
 - 心理测试成绩查看
 - 留言查询
## 数据库设计如下：
# 数据库设计文档

**数据库名：** dxs_mental

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [chengji](#chengji) |  |
| [dx](#dx) |  |
| [jiaoshixinxi](#jiaoshixinxi) |  |
| [kemuxinxi](#kemuxinxi) |  |
| [liuyanban](#liuyanban) |  |
| [shijuanshengcheng](#shijuanshengcheng) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [xuanzeti](#xuanzeti) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   '普通管理员'    |   |
|  5   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="chengji">chengji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  4   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | ceshijieguo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   mediumtext   | 16777215 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="jiaoshixinxi">jiaoshixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | gonghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | suoshoukecheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  9   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="kemuxinxi">kemuxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kemu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  4   | lianxishouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | liuyanlaoshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  7   | huifu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="shijuanshengcheng">shijuanshengcheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | shijuanbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kemu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | timu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xuanzeti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | xuanzetishu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | xuanzefenzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   mediumtext   | 16777215 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   'hsg'    |   |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="xuanzeti">xuanzeti</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | kemu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | timu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | xuanxiangA |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xuanxiangB |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | xuanxiangC |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | xuanxiangD |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | daan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 答案  |
|  9   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 头像  |
|  12   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   '否'    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**运行不出来可以微信 javape 我的公众号：源码码头**
