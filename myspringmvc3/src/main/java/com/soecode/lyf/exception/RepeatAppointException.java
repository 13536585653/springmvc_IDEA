package com.soecode.lyf.exception;

/**
 * Created by langye on 2017/4/16.
 */
/**
 * 重复预约异常
 */
public class RepeatAppointException extends RuntimeException {

    public RepeatAppointException(String message) {
        super(message);
    }

    public RepeatAppointException(String message, Throwable cause) {
        super(message, cause);
    }

}