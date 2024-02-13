package _04_rentcar;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class test {
	public static void main(String[] args) throws ParseException {
	 	Date d1 = new Date();
	 	Date d2 = new Date();
	 	System.out.println(d1);
	 	System.out.println(d2);
	 	CarReserveVO rbean = new CarReserveVO();
	 	rbean.getRday();
	 	System.out.println(rbean.getRday());
	 	// 
	 	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//	 	d1 = sdf.parse(rbean.getRday());
	 	d2 = sdf.parse(sdf.format(d2));	
	 	
//	 	System.out.println(d1);
	 	System.out.println(sdf.format(d2));
	}
}
