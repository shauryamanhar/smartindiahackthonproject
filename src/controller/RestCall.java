package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;


import java.net.URL;

import org.json.simple.JSONObject;   

public class RestCall {
	HttpURLConnection conn;
	String jsonReturn="";
	public String restApi(String jsonString,String urlString){
		try{
			//URL url = new URL("http://localhost:8080/RESTfulExample/json/product/post");
			
			URL url = new URL(urlString);
			conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			
			//String input = "{\"qty\":100,\"name\":\"iPad 4\"}";
			String input = jsonString;
			
			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();
			
			if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) {
				throw new RuntimeException("Failed : HTTP error code : "
					+ conn.getResponseCode());
			}
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				jsonReturn=jsonReturn+output;
			}
			
			conn.disconnect();
			
		}catch (MalformedURLException e) {

			e.printStackTrace();

		  } 
		catch(Exception e){
			e.printStackTrace();
		}
		return jsonReturn;
	}
}//CLASS	

