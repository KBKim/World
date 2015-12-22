package com.hybrid.model.busapi;

import java.net.URLDecoder;

import org.springframework.web.client.RestTemplate;

public class BusRouteListTest {

	public static void main(String[] args) {

		RestTemplate rest = new RestTemplate();
		
		String url="http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch={StrSrch}&serviceKey={servicekey}";
		String strSrch = "6628";
		String servicekey = URLDecoder.decode("Jq5Hl7dxQSF%2FhP9RqEKIAIYs7xFrAYILyAcxnCaBHdQan1PKrD48aIA5yV4e5vJp0btk0rTSGznt5pMglppq6A%3D%3D");
	
//		String result = rest.getForObject(url, String.class, strSrch, servicekey);
		ServiceResult result = rest.getForObject(url, ServiceResult.class, strSrch, servicekey);	
			
		System.out.println(result.getMsgHeader().getHeaderMsg());
		
		System.out.println(result.getMsgBody().getItemList().get(0).getBusRouteId());
		
		
	}

}
