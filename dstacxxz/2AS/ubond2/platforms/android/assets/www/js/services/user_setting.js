/**
 * Created by Administrator on 16-6-6.
 */
/**个人用户信息*/

angular.module('ufind1.services.user_setting', [])

    .factory('userService', function() {
        var user_date = {
            isSendOut:false, //是否自动发送实时数据
            whoIsLogin:false, //没有用户已经登录了
            userIdd:0,
//个人信息
            username2:'', //用户名
            password:'',
            userName: '', // 昵称
            sex : 1,
            height: 170,
            weight:110,
            birthYear:2000,
            birthMoth:6,
//运动目标
            sports:6000,
//来电提醒
            isCall: true,
            delayCall:"0S",
//手机闹钟
            silentTimeId:1,

            alarm1: false,
            alarm2: false,
            alarm3: false,
            silentYear1:2016,
            silentMonth1:9,
            silentDay1:20,
            silentHour1: 8,
            silentMinute1: 20,
            silentWeekDay1: 0,

            silentYear2:2016,
            silentMonth2:9,
            silentDay2:20,
            silentHour2: 22,
            silentMinute2: 10,
            silentWeekDay2: 127,

            silentYear3:2016,
            silentMonth3:9,
            silentDay3:20,
            silentHour3: 22,
            silentMinute3: 1,
            silentWeekDay3: 127,
//短信提醒
            isSms: true,
          /** 实时运动数据*/
             totalSteps:0,
             totalDistance:0,
             totalCalory :0,
          //防丢设置
             lost_setting:false,
          //亮屏设置
            bright_screen:false,
          /**久坐提醒*/
            sedentary:false,
            sedentary_time:30,
            interval:0,
          /*跌倒报警*/
            fall_alarm:false,
          /*定时心率测量*/
            timer_heart:0,
          /*跌倒报警短信发送号码*/
            number:null,
          /*跌倒报警短信发送的内容*/
            message:null,

          /** 实时心率数据*/
             heart:0,
             max_heart:0,
             min_heart:0,

          /** 实时体温数据*/
             temp:0,
             max_temp:0,
             min_temp:0,
          /** 实时气压数据*/
             ambientTemp:0,
             atmospheric:0,
             altitude:0,
          /*血压*/
            blood_pressure:'0',
          /**血氧*/
          blood_oxygen:0,
          /*呼吸*/
          breathe:0,


          //头像
            image:"img/photo1.jpg",
            image2:"img/photo1.jpg",

            stepArray:      [0,0,0,0,0,0,0,0,0],
            step_timeArray:[0,0,0,0,0,0,0,0,0],

            heartsArray:[0,0,0],
            hearts_timeArray:[0,0,0],

            tempArray:[0,0,0,0,0,0,0,0,0],
            temp_timeArray:[0,0,0,0,0,0,0,0,0],

            /**实时睡眠数据*/
            sleep:0,

            /**设备特性*/
            device_oxygen:0,
            device_blood:0,
            device_temp:0,
            device_heart:0,
            device_sleep:0,
            device_step:0
        };

        var userSystem;
        return {
            all: function() {
                return userSystem;
            },
            serialize: function() {
                localStorage.setItem("userSystem", angular.toJson(userSystem))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("userSystem"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    userSystem = user_date;
                    return userSystem;
                } else {
                    userSystem = tmp;
                    return userSystem;
                }
            }
        }
    });