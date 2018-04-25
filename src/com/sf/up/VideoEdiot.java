package com.sf.up;

import java.util.List;

/**
 * 用于对视频进行截图操作
 * 后期可用此工具进行视频转码作业
 * Created by sf on 2017/6/30.
 */
public class VideoEdiot {
    public  boolean screenShot(String videoLocation, String imageLocation)
    {
// 低精度
        List commend = new java.util.ArrayList();
        uploadFile f=new uploadFile();
        commend.add(f.getWorkPath()+"tools\\ffmpeg.exe");//视频提取工具的位置
        commend.add("-i");
        commend.add(videoLocation);
        commend.add("-y");
        commend.add("-f");
        commend.add("image2");
        commend.add("-ss");
        commend.add("08.010");
        commend.add("-t");
        commend.add("0.001");
        commend.add("-s");
        commend.add("352x240");
        commend.add(imageLocation);
        try {
            ProcessBuilder builder = new ProcessBuilder();
            builder.command(commend);
            builder.start();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
