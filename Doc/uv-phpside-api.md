# You-we php端 API
###### 仅对android端开放

# 基类(Base)

### 错误码表
| 错误码 | 常量名     | 含义 |
| :-------------: | :-------------: | :----------: |
| 0       |   STATUS\_OK  | 正常 |
| 500 | STATUS\_UNKNOWN\_ERROR | 内部错误 |
| 101 | STATUS\_BAD\_REQUEST | 请求错误 |
| 401 | STATUS\_AUTH\_FAIL | APPKEY/APPSEC 过期 |
| 1 | STATUS\_AUTH\_EXPIRED | 授权过期 |
| 404 | STATUS\_NOT\_FOUND | 页面未找到 |
| 600 | STATUS\_ACCOUNT\_LOCKED | 账户被锁定 |
| 201 | STATUS\_EMPTY\_DATA | 操作成功，数据为空 |

### 排序选项
| 选项 | 含义     |
| :-------------: | :-------------: |
| PRICE\_DESC       |  价格降序   |
| PRICE\_ASC | 价格升序 |
| TIME\_DESC | 时间降序 |
| LOCATION\_ASC | 地点升序 |
| RANK\_DESC | 排名降序 |
| RANK\_ASC | 排名升序 |

### 验证规则
| 验证项目 | 规则 |
| :-------------: | :-------------: |
| UUID | *必须 |
| push\_token | *必须 |
| platform | *必须 |
| os | *必须 |
| APPID | *必须且长度>=6 |
| APPKEY | *必须且长度>=32 |

### 函数
| 函数名  | 头部 | 说明 |
| :-----------: | :-------------: | :----: |
| `\_\_construct` | `public function \_\_construct` | |
| `auth` | `public function auth` | |
| `validateInput` | `public funtion validateInput` | |
| `json` | `public function json` | |
| `error` | `public function error` | |
| `jsons` | `public static function jsons` | 静态函数 |
| `setHistory` | `public funciton setHistory` | |
| `updateRank` | `public function updateRank` | |
| `createMessage` | `public function createMessage` | |

#### `public function \_\_construct()`
- `\_\_construct`是基类的构造函数，从输入(`Input`)中获取基本验证信息并检查是否满足验证规则，如果不满足则抛出相应的错误
- 参数：无
- 返回值：验证成功无返回，失败则返回一个错误对象(`self::error object`)

#### `public funtion auth()`
- 认证函数，通过用户id(`uid`)和话题id(`sid`)来生成一个会话(`session`)，如果失败则抛出错误
- 参数：无
- 返回值：成功无返回，失败返回错误对象(`self::error object`)

#### `public function validateInput()`
- 验证输入。
- 参数：用于验证的规则数组
- 返回值：(成功时)空字符串或者(失败时)错误对象(`self::error object`)

#### `public function json()`
- 公用response接口
- 参数：要答复的数据数组
- 返回值：json格式的答复数据

#### `public function error($error\_code, $error\_message)`
- 返回错误
- 参数：`integer $error\_code, string $error\_message`
- 返回值：包含错误信息的对象(`object`)

#### `public function errors(array $data, $succeed, $code, $error)`
- `error()`的多错误版本

---

# 用户控制类(UserController)
### 错误码
| 错误码 | 常量名     | 含义 |
| :-------------: | :-------------: | :----------: |
| 3 | ERROR\_MOBILE\_NOT\_EXISTS  | 手机号码不存在 |
| 6 | ERROR\_PASSWD\_ERROR | 密码错误 |
| 7 | ERROR\_MOBILE\_REPEAT | 用户名已经存在 |
| 10 | ERROR\_NICKNAME\_REPEAT | 昵称已经存在 |
| 11 | ERROR\_CERTITY\_REPEAT | 重复申请 |
| 27 | ERROR\_SERVICE\_FLAG\_EMPTY | 未指定服务操作动作 |
| 59 | ERROR\_SERIVCE\_FLAG\_ERROR | 错误的服务操作动作 |

### 函数
|      函数头      |      返回值      |      补充      |
| :-------------: | :-------------: | :-----------: |
| `public function getInfo()` | `json Response` | 用户详情 |
| `public function postList()` | `json Response` | 用户列表 |
| `public function postProfile()` | `json Response` | 用户资料 |
| `public function postSignin()` | `json Response` | 登录 |
| `public function postSignup()` |  `json Response` | 注册 |
| `public function postVerifycode()` | `json Response` | 获取短信验证码 |
| `public function postValidcode()` | `json Response` | 校验验证码 |
| `public function postInviteCode()` | `json Response` | 获取邀请码 |
| `public function postCertify()` | `json Response` | 申请自由人 |
| `public function postChangePassword()` | `json Response` | 修改密码 |
| `public function postChangeProfile()` | `json Response` | 修改用户资料 |
| `public function postChangeService(array $services)` | `json Response` | 修改感兴趣话题 |
| `public function postChangeAvatar()` | `json Response` | 修改用户头像 |
| `public function refreshClient(integer $userId)` | `Client` | 刷新用户Client |
| `public function postBalance()` | `json Response` | 用户余额 |
| `public function postApplyService()` | `json Response` | 认证更多服务 |
| `public function postSignout()` | `json Response` | 退出登录(clean session&token) |

#### `public function postChangeProfile()`
- 功能：修改用户资料，包括感兴趣话题。
- 传入数据：从`Input`获取需要的数据，**必须** 为已登录用户，可选传入数据(`nickname`, `signature`, `brief`, `services`) ，如果传入了`services`话题id数组，则必须同时传入一个`flag`(取值`1`表示添加话题，`2`表示删除话题)。
- 返回值：操作结果(json data)

#### `public function postChangeService(array $services)`
- 功能：修改用户感兴趣的话题。
- 传入数据：`$services`为话题id数组。从`Input`中读取`flag`值用于指定增删动作(`flag`为`1`增加，为`2`删除)
- 返回值：`json Response`，Json格式操作结果。ogle
