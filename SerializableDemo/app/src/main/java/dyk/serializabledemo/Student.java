package dyk.serializabledemo;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by Dengyangkang on 2017/4/12.
 */

public class Student implements Parcelable{
    private String name ;
    private int age;
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public static final Parcelable.Creator<Student> CREATOR = new Parcelable.Creator<Student>() {
        @Override
        public Student createFromParcel(Parcel source) {
            Student student =new Student();
            student.name =source.readString();//读取name
            student.age =source.readInt();
            return student;
        }

        @Override
        public Student[] newArray(int size) {
            return new Student[size];
        }
    };

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
       dest.writeString(name);//写出name
        dest.writeInt(age);//写出age
    }
}
