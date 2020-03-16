package com.ruili.he.book.test;

import com.ruili.he.book.dao.OrderDao;
import com.ruili.he.book.dao.impl.OrderDaoImpl;
import com.ruili.he.book.pojo.Order;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

import static org.junit.Assert.*;

public class OrderDaoTest {

    @Test
    public void saveOrder() {

        OrderDao orderDao = new OrderDaoImpl();

        orderDao.saveOrder(new Order("1234567891",new Date(),new BigDecimal(100),0, 1));

    }
}