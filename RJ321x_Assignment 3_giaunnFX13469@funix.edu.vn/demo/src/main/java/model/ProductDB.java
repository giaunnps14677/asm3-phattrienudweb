package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import controller.Cart;
public class ProductDB {
	// getUsers
			public Users getUser(String user) {

				String query = "select * from Account where user_mail=?";

				Connection conn = null;
				PreparedStatement ps = null;
				ResultSet rs = null;

				Users u = null;
				try {
					conn = db.Util.getConnection();
					ps = conn.prepareStatement(query);
					ps.setString(1, user);

					rs = ps.executeQuery();

					while (rs.next()) {
						u = new Users(rs.getString(1), rs.getString(2), rs.getInt(3));
					}

				} catch (Exception e) {
					System.out.print(e.getMessage());
				}

				return u;

			}

			// ham lay tat ca du lieu
			public static List<Product> getAll() {

				List<Product> ls = new ArrayList();
				String sql = "select * from Products";
				Connection con = db.Util.getConnection();
				try {
					PreparedStatement pre = con.prepareStatement(sql);
					ResultSet rs = pre.executeQuery();
					while (rs.next()) {
						Product pro = new Product();
						pro.setId(rs.getInt("product_id"));
						pro.setName(rs.getString("product_name"));
						pro.setDescription(rs.getString("product_des"));
						pro.setPrice(rs.getFloat("product_price"));
						pro.setSrc(rs.getString("product_img_source"));
						pro.setType(rs.getString("product_type"));
						pro.setBrand(rs.getString("product_brand"));
						ls.add(pro);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return ls;
			}

			// lay san pham bang id
			public Product getProductById(int id) {

				String sql = "select * from Products where product_id = ?";
				Connection con = db.Util.getConnection();
				try {
					PreparedStatement pre = con.prepareStatement(sql);
					pre.setInt(1, id);
					ResultSet rs = pre.executeQuery();
					while (rs.next()) {
						Product pro = new Product();
						pro.setId(rs.getInt("product_id"));
						pro.setName(rs.getString("product_name"));
						pro.setDescription(rs.getString("product_des"));
						pro.setPrice(rs.getFloat("product_price"));
						pro.setSrc(rs.getString("product_img_source"));
						pro.setType(rs.getString("product_type"));
						pro.setBrand(rs.getString("product_brand"));
						return pro;
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
				return null;
			}

			// ham tim kiem theo ten
			public static List<Product> searchByName(String name) {

				List<Product> ls = new ArrayList<Product>();
				String sql = "select * from Products";
				sql += " where product_name like '%" + name + "%'";
				Connection con = db.Util.getConnection();
				try {
					PreparedStatement pre = con.prepareStatement(sql);
					ResultSet rs = pre.executeQuery();
					while (rs.next()) {
						Product pro = new Product();
						pro.setId(rs.getInt("product_id"));
						pro.setName(rs.getString("product_name"));
						pro.setDescription(rs.getString("product_des"));
						pro.setPrice(rs.getFloat("product_price"));
						pro.setSrc(rs.getString("product_img_source"));
						pro.setType(rs.getString("product_type"));
						pro.setBrand(rs.getString("product_brand"));

						ls.add(pro);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return ls;
			}
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			public List<Users> getAllUsers(){
				
				List<Users> list = new ArrayList<Users>();
				String query = "select * from Users";
				try {
					con = db.Util.getConnection();
					ps = con.prepareStatement(query);
					rs = ps.executeQuery();
					while(rs.next()) {
						list.add(new Users(rs.getString(1),
								rs.getString(2), rs.getInt(3)));
					}
					
				} catch (Exception e) {
					// TODO: handle exception
				}
				return list;
			}
			public void deleteOrder(int id) {
				String query = "delete from Orders where order_id = ?";
				try {
					con = db.Util.getConnection();
					ps = con.prepareStatement(query);
					ps.setInt(1, id);
					ps.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			public void insertOrder(Order o, Cart c) {
				//insert order
				try {
					String query = "insert into Orders (order_price, order_status, order_date, order_address, order_phoneNumber, user_mail, receiveDate, order_discount_code) values"
							+ "	(?, ?, ?, ?, ?, ?, ?, ?)";
					
					con = db.Util.getConnection();
					ps = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
					ps.setFloat(1, o.getPrice());
					ps.setInt(2, o.getStatus());
					//ps.setDate(3, (java.sql.Date) o.getOrderDate());
					ps.setDate(3, new java.sql.Date(Calendar.getInstance().getTime().getTime()));
					ps.setString(4, o.getAddress());
					ps.setString(5, o.getPhoneNumber());
					ps.setString(6, o.getUserMail());
					ps.setDate(7, (java.sql.Date) o.getReceiveDate());
					ps.setString(8, o.getDiscount());
					
					int affectedRows = ps.executeUpdate();
					
					if (affectedRows == 0) {
			            throw new SQLException("Creating user failed, no rows affected.");
			        }

			        try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
			            if (generatedKeys.next()) {
			            	o.setOrderId(generatedKeys.getInt(1));
			            }
			            else {
			                throw new SQLException("Creating user failed, no ID obtained.");
			            }
			        }
			        
					//con = db.Util.getConnection();
					for(Product p : c.getItems()) {
						String query2 = "insert into Orders_detail values"
								+ "	(?, ?, ?, ?)";		
							ps = con.prepareStatement(query2);
							ps.setInt(1, o.getOrderId());
							ps.setInt(2, p.getId());
							ps.setInt(3, p.getNumber());
							ps.setString(4, p.getName());
							ps.execute();
					}
					System.out.print("done");
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
			public void insertAccount(Account a) {
				//insert order
				try {
					String query = "insert into Account (user_mail, password,account_role,user_name,user_address,user_phone) values"
							+ "	(?, ?, ?, ?, ?, ?)";
					
					con = db.Util.getConnection();
					ps = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, a.getUserMail());
					ps.setString(2, a.getPassword());
					//ps.setDate(3, (java.sql.Date) o.getOrderDate());
					ps.setInt(3, a.getAccountRole());
					ps.setString(4, a.getUserName());
					ps.setString(5, a.getUserAddress());
					ps.setString(6, a.getUserPhone());
					
					int affectedRows = ps.executeUpdate();
					
					if (affectedRows == 0) {
			            throw new SQLException("Creating user failed, no rows affected.");
			        }

			        try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
			            if (generatedKeys.next()) {
			            	a.setUserMail(generatedKeys.getString(1));
			            }
			            else {
			                throw new SQLException("Creating user failed, no ID obtained.");
			            }
			        }
			        
					System.out.print("done");
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
			public void insertOrder(float price, int status, Date dateOrder, String address, String number, String mail, Date dateReceive, String code) {
				String query = "insert into Orders (order_price, order_status, order_date, order_address, order_phoneNumber, user_mail, receiveDate, order_discount_code) values"
						+ "	(?, ?, ?, ?, ?, ?, ?, ?)";
				try {
					con = db.Util.getConnection();
					ps = con.prepareStatement(query);
					ps.setFloat(1, price);
					ps.setInt(2, status);
					ps.setDate(3, (java.sql.Date) dateOrder);
					ps.setString(4, address);
					ps.setString(5, number);
					ps.setString(6, mail);
					ps.setDate(7, (java.sql.Date) dateReceive);
					ps.setString(8, code);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
}
