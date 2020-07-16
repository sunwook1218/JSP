package chap11;

import java.util.*;

public class MyUtil {
	public static int length(Object o) {
		Collection temp = null;
		if(o instanceof Collection) {
			temp = (Collection) o ;
		} else {
			return 0;
		}
		return temp.size();
	}
}
