package com.ecommerce.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserService
{
  private SessionFactory sessionFactory;
  
  private Session getCurrentSession()
  {
    return this.sessionFactory.getCurrentSession();
  }
  
  public User get(Integer id) {
    return (User)getCurrentSession().createQuery("FROM uye as u WHERE u.id=" + id).list().get(0);
  }
  
  public User get(String userName)
  {
    return (User)getCurrentSession().createQuery("FROM uye as u WHERE u.kullaniciAdi=" + userName).list().get(0);
  }
}