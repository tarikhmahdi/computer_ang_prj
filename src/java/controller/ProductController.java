package controller;

import entity.Contacts;
import entity.Product;
import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import service.ComputerServices;

/**
 *
 * @author P
 */
@Path("/product")
public class ProductController {
    
    ComputerServices cs = new ComputerServices();
    @GET
    @Produces(MediaType.APPLICATION_JSON)//for this or to generate jeson must be add genson1.4.jar in class path
    public List<Product> getContacts(){
        List<Product> listofProduct = cs.getAllProduct();
        return listofProduct;
    }
    
    
    //    ===============================add new course data======================================================
    @POST
    @Produces(MediaType.APPLICATION_JSON)//for this or to generate jeson must be add genson1.4.jar in class path
    public Product addProduct(Product product) {
        System.out.println("the sending course key is :" + product.getPid());
        return cs.addProduct(product);
    }
//    ===============================edit course data======================================================
    @PUT
    @Produces(MediaType.APPLICATION_JSON)//for this or to generate jeson must be add genson1.4.jar in class path
    public Product editProduct(Product product) {
        System.out.println("the sending course key for updat is :" + product.getPid());
        return cs.editProduct(product);
    }

//    ===============================delete course data======================================================
    @DELETE
    @Path("/{p_id}")//it change dinamicly url
    @Produces(MediaType.APPLICATION_JSON)//for this or to generate jeson must be add genson1.4.jar in class path
    public void deleteProduct(@PathParam("p_id") int id) {//pathParam get parametar from url path
        System.out.println("the sanding course key for delete :" + id);
        cs.deleteProduct(id);
    }
}
