package gridviewdemo.dyk.utils;

/**
 * Created by Administrator on 2017/3/25.
 */

public class Utils {

    /**
     * 返回固定的6个字符长度的函数
     * @param nameTest 传入的字符串
     * @return
     */
    public static String Stringname(String nameTest){
        int counts;
        if(nameTest  == null)
            return nameTest;
        counts =6-nameTest.length();
        if(nameTest.length()<6){
            for(int i=0;i<counts;i++){
                nameTest=nameTest.concat("*");
            }
            nameTest=nameTest.concat("*");
            return nameTest;
        }
        return nameTest;
    }
    /** 字符串转换为byte数组 */
    public static byte[] strToByteArray(String str) {
        byte[] byBuffer = new byte[16];
        byBuffer = str.getBytes();
        return byBuffer;

    }
}
