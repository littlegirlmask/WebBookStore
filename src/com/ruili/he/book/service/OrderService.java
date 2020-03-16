package com.ruili.he.book.service;

import com.ruili.he.book.pojo.Cart;

public interface OrderService {
    public String createOrder(Cart cart,Integer userId);
}
