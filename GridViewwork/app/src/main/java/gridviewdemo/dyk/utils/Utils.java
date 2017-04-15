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
    /** 字符串转换为byte数组 因为有可能分包问题 所以，用二维数组表示*/
    public static byte[][] bytetoarray(String ip){
        ip =ip+"\r\n";
        if(ip.length()<=20){
            byte[][] doublebyte =new byte[1][20];
            doublebyte[0] =ip.getBytes();
            return doublebyte;
        }else if(ip.length()>20){
            byte[] arr =new byte[40];
            byte[] arrtemp =new byte[40];
            arrtemp =ip.getBytes();
            System.arraycopy(arrtemp, 0, arr, 0, arrtemp.length);
            for(int i =0;i<arr.length;i++)
            {
                System.out.print(arr[i]+" ");
            }
            int counts =0;
            System.out.println();
            byte[][] doublebyte =new byte[2][20];
            for(int i =0;i<doublebyte.length;i++){
                for(int j=0;j<doublebyte[i].length;j++){
                    doublebyte[i][j] = arr[j];
                    if(i==1){
                        doublebyte[i][j] = arr[j+doublebyte[1].length];
                    }
                    System.out.print(doublebyte[i][j]+" ");
                }
                System.out.println("");
            }
            return doublebyte;
        }
        return null;
    }
}
