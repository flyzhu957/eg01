package com.itheima.service.impl;


import com.itheima.domain.Book;
import com.itheima.mapper.BookMapper;
import com.itheima.service.BookService;
import com.itheima.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class BookServiceImpl implements BookService {
    //1. 创建SqlSessionFactory 工厂对象
   SqlSessionFactory factory= SqlSessionFactoryUtils.getSqlSessionFactory();

    @Override
    public List<Book> findAllBook() {
        //2. 获取SqlSession对象
        SqlSession sqlSession=factory.openSession();
        //3. 获取BookMapper
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);

        //4. 调用方法
        List<Book> books = mapper.findAllBook();

        //5. 释放资源
        sqlSession.close();
        return books;
    }

    @Override
    public Book findBookById(int id) {
        //2. 获取SqlSession对象
        SqlSession sqlSession=factory.openSession();
        //3. 获取BookMapper
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);
        //4. 调用方法
        Book book=mapper.findBookById(id);
        //5. 释放资源
        sqlSession.close();
        return book;
    }

    @Override
    public void updateBook(Book book) {
        //2. 获取SqlSession对象
        SqlSession sqlSession=factory.openSession();
        //3. 获取BookMapper
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);

        //4. 调用方法
        mapper.updateBook(book);

        sqlSession.commit();//提交事务

        //5. 释放资源
        sqlSession.close();
    }

    @Override
    public void deleteById(int id) {
        //2. 获取SqlSession对象
        SqlSession sqlSession=factory.openSession();
        //3. 获取BookMapper
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);
        //4. 调用方法
        mapper.deleteById(id);

        sqlSession.commit();//提交事务

        //5. 释放资源
        sqlSession.close();
    }

    @Override
    public void addBook(Book book) {
        //2. 获取SqlSession对象
        SqlSession sqlSession=factory.openSession();
        //3. 获取BookMapper
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);
        //4. 调用方法
        mapper.addBook(book);

        sqlSession.commit();//提交事务

        //5. 释放资源
        sqlSession.close();
    }


}
