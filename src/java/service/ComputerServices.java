package service;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import dbUtill.DbConnection;
import entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author P
 */
public class ComputerServices {

    DbConnection dc = new DbConnection();//create this object for use myConnection() method under DbConnection class
    Connection conn = null;

//=======================send a list to ganerate JSON=============================
    public List<Services> getAllService() {

        List<Services> al = new ArrayList<Services>();//make a list to return 
        try {
            conn = dc.myConnection();//get connection form DbConnection class
            String strQuery = "select * from services";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(strQuery);

            while (rs.next()) {
                Services l = new Services();
                l.setId(rs.getInt("sa_id"));
                l.setName(rs.getString("name"));
                l.setDesc(rs.getString("desc"));
                l.setImage(rs.getString("image"));
                al.add(l);//populate arrayList
            }
            rs.close();
            st.close();
            return al;//it return list by adding new value
        } catch (Exception e) {
            System.out.println(e);
            return al;//it return list whitout add new value
        }
    }

    public List<Contacts> getAllContact() {

        List<Contacts> alc = new ArrayList<Contacts>();//make a list to return 
        try {
            conn = dc.myConnection();//get connection form DbConnection class
            String strQuery = "select * from contacts";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(strQuery);

            while (rs.next()) {
                Contacts c = new Contacts();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setAddress(rs.getString("address"));
                c.setDistrict(rs.getString("district"));
                c.setZip(rs.getString("zip"));
                c.setImage(rs.getString("image"));
                c.setPhone(rs.getString("phone"));
                c.setEmail(rs.getString("email"));
                c.setImage(rs.getString("image"));
                alc.add(c);//populate arrayList
            }
            rs.close();
            st.close();
            return alc;//it return list by adding new value
        } catch (Exception e) {
            System.out.println(e);
            return alc;//it return list whitout add new value
        }
    }

    public List<Product> getAllProduct() {

        List<Product> alp = new ArrayList<Product>();//make a list to return 
        try {
            conn = dc.myConnection();//get connection form DbConnection class
            String strQuery = "select * from product";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(strQuery);

            while (rs.next()) {
                Product p = new Product();
                p.setPid(rs.getInt("p_id"));
                p.setPname(rs.getString("name"));
                p.setPprice(rs.getDouble("price"));
                p.setPdesc(rs.getString("desc"));
                p.setPimage(rs.getString("image"));
                alp.add(p);//populate arrayList
            }
            rs.close();
            st.close();
            return alp;//it return list by adding new value
        } catch (Exception e) {
            System.out.println(e);
            return alp;//it return list whitout add new value
        }
    }
    
    public Product addProduct(Product product) {//Course object recined form course controllere addCourse() method
        try {
            conn = dc.myConnection();//get connection form DbConnection class
            PreparedStatement pres = conn.prepareStatement("insert into product(name, price, desc, image) values (?,?,?,?,?)");
            pres.setString(1, product.getPname());
            pres.setDouble(2, product.getPprice());
            pres.setString(3, product.getPdesc());
            pres.setString(4, product.getPimage());
            pres.executeUpdate();
            return product;
        } catch (Exception e) {
            System.out.println(e);
            return product;
        }
    }
    
    public Product editProduct(Product product) {//Course object recined form course controllere addCourse() method
        try {
            conn = dc.myConnection();//get connection form DbConnection class
            PreparedStatement pres = conn.prepareStatement("update product set name = ?, price = ?, desc = ?, image = ? where p_id = ?");
            pres.setString(1, product.getPname());
            pres.setDouble(2, product.getPprice());
            pres.setString(3, product.getPdesc());
            pres.setString(4, product.getPimage());;
            pres.executeUpdate();
            return product;
        } catch (Exception e) {
            System.out.println(e);
            return product;
        }
    }
    
    public void deleteProduct(int id) {//id recive from course controllere deleteCourse() method
        try {
            conn = dc.myConnection();//get connection form DbConnection class
            PreparedStatement pres = conn.prepareStatement("delete from product where cou_id = ?");
            pres.setInt(1, id);
            pres.executeUpdate();
        }catch(MySQLIntegrityConstraintViolationException e){
            System.out.println(e);
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
}
