package org.springmvc.ssm.controller;


import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import org.springmvc.ssm.pojo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by langye on 2017/4/13.
 */
//@WebServlet("/addUser")
public class ItemController1 implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<User> list = new ArrayList<>();
        User user1 = new User();
        user1.setUserName("langye");
        user1.setPassword("123");
        User user2 = new User();
        user2.setUserName("wangzai");
        user2.setPassword("123");
        list.add(user1);
        list.add(user2);
        //返回modelAndView
        ModelAndView modelAndView = new ModelAndView();
        //相当于request的set
        modelAndView.addObject("list",list);
        //指定视图
        modelAndView.setViewName("/index.jsp");
        return modelAndView;
    }
}
