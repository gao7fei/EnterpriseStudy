package com.sf.message;

import java.sql.Timestamp;

/**
 * Created by sf on 2017/8/16.
 */
public class MessageGC {
    private String message;
    private String manager;
    private String time;

    public String getMessage() {

        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
