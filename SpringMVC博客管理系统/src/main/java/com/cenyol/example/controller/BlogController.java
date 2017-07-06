package com.cenyol.example.controller;

import com.cenyol.example.model.BlogEntity;
import com.cenyol.example.repository.BolgRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 熊显付 on 2017/4/11.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BolgRepository bolgRepository;

    //查询，
    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String getBolg(ModelMap modelMap){
        List<BlogEntity> list=bolgRepository.findAll(  );
        System.out.println(list.size());
        modelMap.addAttribute( "bloglist",list);
        return  "blog";
    }

    //添加信息
    @RequestMapping(value="/addblog",method = RequestMethod.POST)
    @ResponseBody
    public String addBlog(Model model, BlogEntity blogEntity){
        System.out.println(blogEntity.getTitle());
        System.out.println(blogEntity.getContent());
        System.out.println(blogEntity.getId());
        bolgRepository.save( blogEntity );
        return "asadasa";
    }

    @RequestMapping(value="/updateBlog",method = RequestMethod.POST)
    public  String showBlogById(@PathVariable("id") Integer id,ModelMap modelMap){
        modelMap.addAttribute( "blog", bolgRepository.findOne( id ) );
        return "updateBlog";
    }

    //ajax通过id查询单条记录（没有实现，报错！）
    @RequestMapping(value="/blogid/{id}",method = RequestMethod.POST)
    @ResponseBody
    public String getBlog(@RequestParam Integer id){
        System.out.println(id);
        return "asadasa";
    }

    //得到jsonList（没有实现，报错！）
    @RequestMapping(value="/bloglist",method = RequestMethod.POST)
    @ResponseBody
    public List<BlogEntity> getBloglist(@RequestParam Integer id ){
        System.out.println(id);
        List<BlogEntity> list = new ArrayList();
        /*list=bolgRepository.findAll(  );*/
        BlogEntity b1=new BlogEntity();
        b1.setContent( "1" );
        b1.setId( 1 );
        b1.setTitle( "1" );

        BlogEntity b2=new BlogEntity();
        b2.setContent( "2" );
        b2.setId( 2 );
        b2.setTitle( "2" );

        list.add(b1);
        list.add(b2);
        return list;
    }

    //删除
    @RequestMapping(value="/deleteBlog/{id}",method = RequestMethod.GET)
    public String deleteBlog(@PathVariable("id") Integer id){
        bolgRepository.delete( id );
        bolgRepository.flush();
        return "redirect:/blog/blog";
    }


}
