package lab4_12_02;

public class Shapes {

	/*
	 * restituisce la prima figura maggiore o uguale alle altre in shapes rispetto al comparator comp,
	 * null se shapes e` vuoto
	 * requires shapes != null && comp != null
	 */    
	public static Shape max(Shape[] shapes, ShapeComparator comp) {
	    // completare
		Shape Max = shapes[0];
	    for(int i=1;i < shapes.length;i++){
          if(comp.compare(Max, shapes[i]) >= 0) 
				Max = shapes[i];
		}
		return Max;
	}

	/*
	 * trasla tutte le figure lungo il vettore (dx,dy)
	 * requires shapes != null
	 */
	public static void moveAll(Shape[] shapes, double dx, double dy) {
	    // completare
		for(Shape sp : shapes){
			sp.move(dx, dy);
		}
	}
    
	/*
	 * scala tutte le figure del fattore factor, senza traslare il loro centro
	 * requires shapes != null && factor > 0
	 */
	public static void scaleAll(Shape[] shapes, double factor) {
	    // completare
		for(Shape sp : shapes){
			sp.scale(factor);;
		}
	}
    
	/*
	 * restituisce l'area totale di tutte le figure in shapes
	 * requires shapes != null
	 */
	public static double totalArea(Shape[] shapes) {
	    // completare
		double sum = 0;
		for(Shape sp : shapes){
			sum += sp.area();
		}
		return sum;
	}
}
