package org.springmvc.ssm.controller;


import org.springframework.web.HttpRequestHandler;
import org.springmvc.ssm.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by langye on 2017/4/13.
 */
//@WebServlet("/addUser")
public class ItemController2 implements HttpRequestHandler{
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = new ArrayList<>();
        User user1 = new User();
        user1.setUserName("狼野");
        user1.setPassword("123");
        User user2 = new User();
        user2.setUserName("旺仔");
        user2.setPassword("123");
        list.add(user1);
        list.add(user2);
        request.setAttribute("list",list);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
