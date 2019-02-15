package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ProductController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String originCity=request.getParameter("origin_city"); 
		String portCity=request.getParameter("port_city"); 
		String portCityMode=request.getParameter("origin_port_mode"); 
		String originPortContainer=request.getParameter("origin_port_container"); 
		String portDestinationMode=request.getParameter("port_dest_mode"); 
		String portDestinationContainer=request.getParameter("port_dest_container"); 
		String manufacturingFare=request.getParameter("manufacturing_fare"); 
		String productCategory = request.getParameter("category");
		String destinationCity = request.getParameter("dest_city");
		
		System.out.println(originCity);
		System.out.println(portCity);
		System.out.println(portCityMode);
		System.out.println(originPortContainer);
		System.out.println(portDestinationMode);
		System.out.println(portDestinationContainer);
		System.out.println(manufacturingFare);
		System.out.println(productCategory);
		System.out.println(destinationCity);
		
		HttpSession session = request.getSession();
		session.setAttribute("originCity", originCity);
		session.setAttribute("portCity", portCity);
		session.setAttribute("portCityMode", portCityMode);
		session.setAttribute("originPortContainer", originPortContainer);
		session.setAttribute("portDestinationMode", portDestinationMode);
		session.setAttribute("portDestinationContainer", portDestinationContainer);
		session.setAttribute("manufacturingFare", manufacturingFare);
		session.setAttribute("productCategory", productCategory);
		session.setAttribute("destinationCity", destinationCity);
/*		Map<String, Double> map = new HashMap<String,Double>();
		map.put("origin_city", Math.floor(Double.parseDouble(originCity)));
		map.put("port_city",Math.floor(Double.parseDouble(portCity)));
		//destination_city
		map.put("origin_to_port_method",Math.floor(Double.parseDouble(portCityMode)));
		map.put("origin_to_port_container_type",Math.floor(Double.parseDouble(originPortContainer)));
		map.put("port_to_dest_method",Math.floor(Double.parseDouble(portDestinationMode)));
		map.put("port_to_dest_container_type",Math.floor(1D)Double.parseDouble(portDestinationContainer));
		map.put("manufacturing_fare",Math.floor(Double.parseDouble(manufacturingFare)));
		map.put("product_catagory",Math.floor(Double.parseDouble(productCategory)));
		map.put("destination_city",Math.floor(Double.parseDouble(destinationCity)));
		
		Gson gsonObj = new Gson();
		String jsonStr = gsonObj.toJson(map);*/
		//System.out.println(jsonStr);
		/*RestCall r=new RestCall();
		
		JSONObject obj=new JSONObject();  
		
		obj.put("origin_city",Integer.parseInt(originCity));
		obj.put("port_city",Integer.parseInt(portCity));
		obj.put("origin_to_port_method",Integer.parseInt(portCityMode));
		obj.put("port_to_dest_method",Integer.parseInt(originPortContainer));
		obj.put("port_to_dest_container_type",Integer.parseInt(portDestinationMode));
		obj.put("manufacturing_fare",1500D);
		obj.put("product_catagory",Integer.parseInt(productCategory));
		obj.put("destination_city",Integer.parseInt(destinationCity));
		obj.put("port_dest_container",Integer.parseInt(portDestinationContainer));
		
		
		
		String urlString="http://e155f452.ngrok.io/calc/";
		System.out.println(r.restApi(obj.toString(), urlString));*/
		response.sendRedirect("result.jsp");
	}

}
