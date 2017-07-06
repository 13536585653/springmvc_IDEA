package com.soecode.lyf.exception;

/**
 * Created by langye on 2017/4/16.
 */
/**
 * 库存不足异常
 */
public class NoNumberException extends RuntimeException {

    public NoNumberException(String message) {
        super(message);
    }

    public NoNumberException(String message, Throwable cause) {
        super(message, cause);
    }

}