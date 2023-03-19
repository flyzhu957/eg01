package com.itheima.mapper;

import com.itheima.domain.Book;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface BookMapper {
    /**
     * 查询所有
     * @return
     */
    @Select("select * from books")
    List<Book> findAllBook();

    /**
     * 根据id查询
     * @param id
     * @return
     */
    @Select("select * from books where id =#{id} ")
    Book findBookById(int id);

    /**
     * 修改数据
     * @param book
     */
    @Update("update books set name=#{name},price=#{price},pnum=#{pnum},category=#{category} where id=#{id}")
    void updateBook(Book book);

    /**
     * 批量删除
     * @param id
     */
    @Delete(" delete from books where id =#{id}")
    void deleteById( int id);

    /**
     * 添加数据
     * @param book
     */
    @Insert("insert into books values(null,#{name},#{price},#{pnum},#{category})")
    void addBook(Book book);


}
