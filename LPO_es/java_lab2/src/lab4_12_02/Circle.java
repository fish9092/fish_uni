package lab4_12_02;

public class Circle implements Shape {
	/* invariant radius > 0 */
	public static final double defaultSize = 1;
	private double radius = Circle.defaultSize;
	private final Point center = new Point();

	/*
	 * Cerchio con centro sull'origine degli assi
	 */    
	private Circle(double radius) {
	    // completare
		this.radius=radius;
   
	}


	private Circle(double radius, Point center) {
	    // completare
		this.center.move(center.getX(), center.getY());
		this.radius=radius;
	}
    
	/*
	 * Cerchio con dimensioni di default e centro sull'origine degli assi
	 */
	public Circle() {
	}



	
	/*
	 * Factory method
	 */
	public static Circle ofRadius(double radius) {
	    // completare
		return new Circle(radius);
	}

	/*
	 * Factory method
	 */
	public static Circle ofRadiusCenter(double radius, Point center) {
	    // completare
		return new Circle(radius,center);
	}




	
	public void move(double dx, double dy) {
	    // completare
		center.move(dx, dy);
	}

	public void scale(double factor) {		
	    // completare
		
		this.radius*=factor;
}





	public Point getCenter() {
	    // completare
		return this.center;
	}

	public double perimeter() {
	    // completare
		return 2 * Math.PI * radius;
	}

	public double area() {
	    // completare
        return Math.PI * radius * radius;
      
	}
}
