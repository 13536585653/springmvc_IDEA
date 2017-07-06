package com.soecode.lyf.exception;

/**
 * Created by langye on 2017/4/16.
 */
/**
 * 预约业务异常
 */
public class AppointException extends RuntimeException {

    public AppointException(String message) {
        super(message);
    }

    public AppointException(String message, Throwable cause) {
        super(message, cause);
    }

}
