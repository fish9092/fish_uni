package lab05_12_16.shapes;

/*
 * Implementa rettangoli con lati paralleli agli assi
 */
public class Rectangle extends AbstractShape {
	/* invariant width > 0 && height > 0 */
	private double width;
	private double height;

	private void setWidthHeight(double width, double height) {
		this.width = requirePositive(width);
		this.height = requirePositive(height);
	}

	/*
	 * Rettangolo con centro sull'origine degli assi
	 */

	protected Rectangle(double width, double height, Point center) {
		super(center);
		setWidthHeight(width,height);
	}

	
    // factory methods 
	
	public static Rectangle ofWidthHeight(double width, double height) {
		return new Rectangle(width, height, new PointClass());
	}

	public static Rectangle ofWidthHeightCenter(double width, double height, Point center) {
		return new Rectangle(width, height, center);
	}

	public static Rectangle ofDefaultSize() {
		return new Rectangle(Rectangle.defaultSize, Rectangle.defaultSize, new PointClass());
	}

    // object methods
    
	public void scale(double factor) {
		width *= requirePositive(factor);
		height *= requirePositive(factor);
	}

	public double perimeter() {
	    return 2*(width + height);
	}

	public double area() {
	    return width * height;
	}

}
