package com.itheima.service;

import com.itheima.domain.Book;

import java.util.List;

public interface BookService {
    /**
     * 查询所有
     * @return
     */
    List<Book> findAllBook() ;

    /**
     * 根据id查询
     * @return
     */
   Book findBookById(int id);

    /**
     *修改数据
     * @param book
     */
    void updateBook(Book book);

    /**
     * 删除数据
     * @param id
     */
    void deleteById( int id);

    /**
     * 添加数据
     * @param book
     */
    void addBook(Book book);
}
