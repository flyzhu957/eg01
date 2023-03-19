package com.itheima.web.servlet;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.itheima.domain.Book;
import com.itheima.service.BookService;
import com.itheima.service.impl.BookServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@WebServlet("/books/*")
public class BookServlet extends BaseServlet {
    //创建service对象
    private BookService bookService = new BookServiceImpl();

    /**
     * 查询所有
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void findAllBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.查询所有图书对象
        List<Book> books = bookService.findAllBook();

       // System.out.println("666");
        //2.将图书对象放到request域中
        request.setAttribute("books", books);
        //3.请求转发到list.jsp页面
        request.getRequestDispatcher("/pages/book/list.jsp").forward(request, response);
    }

    /**
     * 根据id查询
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void findBookById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收id
        String _id = request.getParameter("id");
        int id = Integer.parseInt(_id);
        //2. 调用service查询
        Book book = bookService.findBookById(id);
        //System.out.println("findBookById");
        //3. 存储到request中
        request.setAttribute("book", book);
        //4. 转发到uodata.jsp
        // (edit.jsp)
        request.getRequestDispatcher("/pages/book/list.jsp").forward(request, response);

    }

    /**
     * 修改数据
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void updateBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收表单提交的数据，封装为Book对象

        BufferedReader br = request.getReader();
        String params = br.readLine();//获取字符串
        String decode = URLDecoder.decode(params, "utf-8");
       // System.out.println(decode);
        String[] split = decode.split("&");
        Map<String,String>  map = new HashMap<>();
        for (String s : split) {
            String[]  split1 = s.split("=");
            map.put(split1[0],split1[1]);
        }
        String params1 = JSONObject.toJSONString(map);
        //System.out.println(params1);
        //2. 封装Book对象
        Book book = null;
        try {
            book = JSON.parseObject(params1, Book.class);
        } catch (Exception e) {
            // 处理异常情况
            e.printStackTrace();
        }

        //System.out.println("updateBook中");
        //3. 调用service,完成修改
        bookService.updateBook(book);
        //System.out.println("updateBook修改后");
        //4. 转发到findAllBook
        request.getRequestDispatcher("/pages/book/edit.jsp").forward(request, response);
        //System.out.println("updateBook转发后");
    }


    /**
     * 删除数据
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void deleteById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收id
        String id = request.getParameter("id");
        System.out.println(id );

        //2. 调用service删除
        bookService.deleteById(Integer.parseInt(id));
        //System.out.println("delete");

        //3. 重新查询数据,存储到request域中
        bookService.findAllBook();
        request.setAttribute("id", id);
        //4. 转发到findAllBook
        request.getRequestDispatcher("/pages/book/list.jsp").forward(request, response);
    }


    public void addBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. 接收表单提交的数据，封装为Book对象
        BufferedReader reader = request.getReader();
        String params = reader.readLine();//json字符串
       // System.out.println(params);
        String decode = URLDecoder.decode(params, "utf-8");
        //System.out.println(decode);
        String[] split = decode.split("&");
        HashMap<String, String> map = new HashMap<>();
        for (String s : split) {
            String[] split1 = s.split("=");
            map.put(split1[0],split1[1] );
        }
        String jsonString = JSONObject.toJSONString(map);
        //2. 封装Book对象
        Book book = JSON.parseObject(jsonString, Book.class);
        //System.out.println(book);

        //3. 调用service,完成添加
        bookService.addBook(book);
        //4. 转发到findAllBook
        request.getRequestDispatcher("/pages/book/list.jsp").forward(request, response);
    }

}
