package lab05_12_16.shapes;

public class Circle extends AbstractShape {
	/* invariant radius > 0 */
	private double radius;

	// private object method to be used in the constructors
	private void setRadius(double radius) {
		this.radius = requirePositive(radius);
	}

	protected Circle(double radius, Point center) {
		super(center);
		setRadius(radius);
	}

    // factory methods

	public static Circle ofRadius(double radius) {
		return new Circle(radius,new PointClass());
	}

	public static Circle ofRadiusCenter(double radius, Point center) {
		return new Circle(radius, center);
	}

	public static Circle ofDefaultSize() {
		return new Circle(Circle.defaultSize, new PointClass());
	}

    // object methods
    
	public void scale(double factor) {
		this.radius *= requirePositive(factor);
	}

	public double perimeter() {
	    return 2 * Math.PI * radius;
	}

	public double area() {
	    return Math.PI * Math.pow(radius, 2);
	}

}
