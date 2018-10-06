package com.niit.ProjBackend.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.ProjBackend.Dao.AuthenticationDao;
import com.niit.ProjBackend.Dao.BestSellerDao;
import com.niit.ProjBackend.Dao.BillingDao;
import com.niit.ProjBackend.Dao.CardDao;
import com.niit.ProjBackend.Dao.CartDao;
import com.niit.ProjBackend.Dao.CartItemsDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Dao.OrderItemsDao;
import com.niit.ProjBackend.Dao.PayDao;
import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Dao.ShippingDao;
import com.niit.ProjBackend.Dao.SupplierDao;
import com.niit.ProjBackend.Dao.UserDao;
import com.niit.ProjBackend.DaoImpl.AuthenticationDaoImpl;
import com.niit.ProjBackend.DaoImpl.BestSellerDaoImpl;
import com.niit.ProjBackend.DaoImpl.BillingDaoImpl;
import com.niit.ProjBackend.DaoImpl.CardDaoImpl;
import com.niit.ProjBackend.DaoImpl.CartDaoImpl;
import com.niit.ProjBackend.DaoImpl.CartItemsDaoImpl;
import com.niit.ProjBackend.DaoImpl.CategoryDapImpl;
import com.niit.ProjBackend.DaoImpl.OrderDaoImpl;
import com.niit.ProjBackend.DaoImpl.OrderItemsDaoImpl;
import com.niit.ProjBackend.DaoImpl.PayDaoImpl;
import com.niit.ProjBackend.DaoImpl.ProductDaoImpl;
import com.niit.ProjBackend.DaoImpl.ShippingDaoImpl;
import com.niit.ProjBackend.DaoImpl.SupplierDaoImpl;
import com.niit.ProjBackend.DaoImpl.UserDaoImpl;
import com.niit.ProjBackend.Model.Authentication;
import com.niit.ProjBackend.Model.BestSeller;
import com.niit.ProjBackend.Model.Billing;
import com.niit.ProjBackend.Model.Card;
import com.niit.ProjBackend.Model.Cart;
import com.niit.ProjBackend.Model.CartItems;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Order;
import com.niit.ProjBackend.Model.OrderItems;
import com.niit.ProjBackend.Model.Pay;
import com.niit.ProjBackend.Model.Product;
import com.niit.ProjBackend.Model.Shipping;
import com.niit.ProjBackend.Model.Supplier;
import com.niit.ProjBackend.Model.User;



@Configuration
@ComponentScan("com.niit.*")
@EnableTransactionManagement

public class ApplicationContext 
{
	@Bean("dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test/projectname1");
		dataSource.setUsername("Prabhudev");
		dataSource.setPassword("prabhu123");
		return dataSource;
}
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.connection.pool_size", "10");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		return properties;
	}
	
	@Autowired
	@Bean("sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Authentication.class);
		sessionBuilder.addAnnotatedClass(Billing.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		sessionBuilder.addAnnotatedClass(Card.class);
		sessionBuilder.addAnnotatedClass(Pay.class);
		sessionBuilder.addAnnotatedClass(CartItems.class);
		sessionBuilder.addAnnotatedClass(Order.class);
		sessionBuilder.addAnnotatedClass(OrderItems.class);
		sessionBuilder.addAnnotatedClass(Shipping.class);
		sessionBuilder.addAnnotatedClass(BestSeller.class);

		return sessionBuilder.buildSessionFactory();
	}
	
	@Autowired
	@Bean("transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	@Autowired
	@Bean("categoryDao")
	public CategoryDao getCategoryDao(SessionFactory sessionFactory) {
		return new CategoryDapImpl(sessionFactory);
	}
	@Autowired
	@Bean("productDao")
	public ProductDao getProductDao(SessionFactory sessionFactory) {
		return new ProductDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("supplierDao")
	public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
		return new SupplierDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("userDao")
	public UserDao getUserDao(SessionFactory sessionFactory) {
		return new UserDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("cardDao")
	public CardDao getCardDao(SessionFactory sessionFactory) {
		return new CardDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("payDao")
	public PayDao getPayDao(SessionFactory sessionFactory) {
		return new PayDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("authenticationDao")
	public AuthenticationDao getAuthenticationDao(SessionFactory sessionFactory) {
		return new AuthenticationDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("billingDao")
	public BillingDao getBillingDao(SessionFactory sessionFactory) {
		return new BillingDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("cartDao")
	public CartDao getCartDao(SessionFactory sessionFactory) {
		return new CartDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("cartItemsDao")
	public CartItemsDao getCartItemsDao(SessionFactory sessionFactory) {
		return new CartItemsDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("orderDao")
	public OrderDao getOrderDao(SessionFactory sessionFactory) {
		return new OrderDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("orderItemsDao")
	public OrderItemsDao getOrderItemsDao(SessionFactory sessionFactory) {
		return new OrderItemsDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("shippingDao")
	public ShippingDao getShippingDao(SessionFactory sessionFactory) {
		return new ShippingDaoImpl(sessionFactory);
	}
	@Autowired
	@Bean("bestSellerDao")
	public BestSellerDao getBestSellerDao(SessionFactory sessionFactory) {
		return new BestSellerDaoImpl(sessionFactory);
	}

	
}
