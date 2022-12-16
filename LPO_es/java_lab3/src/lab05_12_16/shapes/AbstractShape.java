package lab05_12_16.shapes;

public abstract class AbstractShape implements Shape {

	private final Point center = new PointClass();//center point

	protected static final double defaultSize = 1;

	protected static double requirePositive(double size) {
		if (size <= 0)
			throw new IllegalArgumentException();
		return size;
	}

	protected AbstractShape(Point center) {
	    move(center.getX(), center.getY());
	}

	public void move(double dx, double dy) {
		center.move(dx, dy);
	}

	public Point getCenter() {
		return center;
	}

}
