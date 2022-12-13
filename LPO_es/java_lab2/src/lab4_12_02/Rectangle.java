package lab4_12_02;

/*
 * Implementa rettangoli con lati paralleli agli assi
 */
public class Rectangle implements Shape {
	
	/* invariant width > 0 && height > 0 */
	public static final double defaultSize = 1;
	private double width = Rectangle.defaultSize;
	private double height = Rectangle.defaultSize;

	private final Point center = new Point();



	/*
	 * Rettangolo con centro sull'origine degli assi
	 */
	private Rectangle(double width, double height) {
	    // completare
        this.height=height;
	    this.width=width;
	}

	private Rectangle(double width, double height, Point center) {
	         
       center.move(center.getX(), center.getY());
	    this.height=height;
		this.width=width;
	}


	/* .  //空参数构造
	 * Rettangolo con dimensioni di default e centro sull'origine degli assi
	 */
	public Rectangle() {

	}

	/*
	 * Factory method
	 */
	public static Rectangle ofWidthHeight(double width, double height) {
	    // completare
		return new Rectangle(width,height);
	}

	/*
	 * Factory method
	 */
	public static Rectangle ofWidthHeightCenter(double width, double height, Point center) {
	    // completare
		return new Rectangle(width,height,center);
	}

	public void move(double dx, double dy) {
	    // completare
		this.center.move(dx, dy);
	}

	public void scale(double factor) {
	    // completare
		this.width *= factor;
		this.height *=factor;
	}

	public Point getCenter() {
	    return this.center;
	}

	public double perimeter() {
	    return (width+height)*2;
	}

	public double area() {
	   return (width*height)/2;
	}
}
