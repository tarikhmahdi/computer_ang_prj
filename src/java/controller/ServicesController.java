
package controller;

import entity.Services;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import service.ComputerServices;


/**
 *
 * @author P
 */

@Path("/services")
public class ServicesController {
    
    ComputerServices cs = new ComputerServices();
    @GET
    @Produces(MediaType.APPLICATION_JSON)//for this or to generate jeson must be add genson1.4.jar in class path
    public List<Services> getServices(){
        List<Services> listofServices = cs.getAllService();
        return listofServices;
    }
}