package org.springmvc2.ssm.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springmvc2.ssm.pojo.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by langye on 2017/4/13.
 * 注解适配器handler开发
 * 使用@Controller来标识他是一个控制器
 */
@Controller
public class ItemController1{


    //用户查询列表
    //@RequestMapping实现对queryUsers和url进行映射
    //一般讲义将url和方法写成一样
    @RequestMapping("/queryUsers")
    public ModelAndView queryUsers(User user)throws Exception{
        System.out.println(user.getUserName());
        System.out.println(user.getPassword());
        List<User> list = new ArrayList<>();
        User user1 = new User();
        user1.setUserName("狼野");
        user1.setPassword("123");
        User user2 = new User();
        user2.setUserName("旺仔");
        user2.setPassword("123");
        list.add(user1);
        list.add(user2);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("/index.jsp");
        return modelAndView;
    }
}
