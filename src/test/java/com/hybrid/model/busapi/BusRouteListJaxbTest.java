package com.hybrid.model.busapi;

import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

public class BusRouteListJaxbTest {
	
	public static void main(String[] args) throws MalformedURLException {
		// JAXB (Java Architecture And Xml binding)
		try {
			JAXBContext ctx = JAXBContext.newInstance(ServiceResult.class);
			
			ServiceResult result = new ServiceResult();
			MsgHeader msgHeader = new MsgHeader();
				msgHeader.setHeaderCd("100");
				msgHeader.setHeaderMsg("정상처리...");
				msgHeader.setItemCount(999);
			result.setMsgHeader(msgHeader);
			
			/*
			 * Marshal 
			 */
			Marshaller marshaller = ctx.createMarshaller();
			marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			
			marshaller.marshal(result, System.out);
			
			/*
			 * UnMarshal
			 */
			
			Unmarshaller unmarshaller = ctx.createUnmarshaller();
			
			String str="http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch=6628&serviceKey=Jq5Hl7dxQSF%2FhP9RqEKIAIYs7xFrAYILyAcxnCaBHdQan1PKrD48aIA5yV4e5vJp0btk0rTSGznt5pMglppq6A%3D%3D";
			
			URL url = new URL(str);
			
			ServiceResult busResult = (ServiceResult) unmarshaller.unmarshal(url);
			
			marshaller.marshal(busResult, System.out);
			
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
	}
}
