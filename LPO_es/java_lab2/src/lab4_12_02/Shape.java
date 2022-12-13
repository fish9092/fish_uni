package lab4_12_02;

public interface Shape {
	/*
	 * restituisce una copia del centro della figura
	 */    
	Point getCenter();


	/*
	 * restituisce il perimetro della figura
	 */
	double perimeter();

	/*
	 * restituisce l'area della figura
	 */
	double area();

	/*
	 * trasla la figura lungo il vettore (dx,dy)
	 */
	void move(double dx, double dy);

	/*
	 * scala la figura del fattore, senza traslare il suo centro
	 * requires factor > 0
	 */
	void scale(double factor);

}
