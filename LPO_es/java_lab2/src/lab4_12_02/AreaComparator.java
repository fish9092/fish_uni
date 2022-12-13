package lab4_12_02;

import javax.lang.model.util.ElementScanner14;

/*
 * 
 * Confronta le figure basandosi sulle loro aree.
 */
/*

* Confronta shape1 con shape2.
* Restituisce un numero negativo se shape1 è minore di shape2; 
* zero se shape1 e shape2 sono considerate 
* equivalenti, ma non necessariamente uguali; 
* un numero positivo se shape1 è maggiore di shape2.
* 
* requires shape1 != null && shape2 != null
*/
public class AreaComparator implements ShapeComparator {

	public static ShapeComparator instance;

	/* requires shape1 != null && shape2 != null */
	public int compare(Shape shape1, Shape shape2) {
	    // completare
         if(shape1 == null || shape2 == null){
			throw new IllegalArgumentException();
		 }
         int n = 0;
		 double dif = shape1.area() - shape2.area();
		 if(dif < 0)
             n=-1;
		else if(dif > 0) 
		 	n=1; 
		
			return n;

	}

}
