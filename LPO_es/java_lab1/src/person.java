public class person {

    public static String regEXP = "[A-Z][a-z]+( [A-Z][a-z]+)*";

    public final String name;
    public final String surname;
    public final long socialSN;
    public person spouse;

    public person(String name, String surname, long socialSN, person spouse) {
        this.name = name;
        this.surname = surname;
        this.socialSN = socialSN;
        this.spouse = spouse;
    }

    public boolean check_name (){
        return (this.name.matches(regEXP) && this.surname.matches(regEXP));
    }

    public String getName() {
        return this.name;
    }

    public String getSurname() {
        return this.surname;
    }

    public long getSocialSN() {
        return this.socialSN;
    }

    public person getSpouse() {
        return this.spouse;
    }

    public boolean isSingle(){
        return (this.spouse == null);
    }

    public static void join(person p1, person p2){
        if(p1.isSingle() && p2.isSingle()) {
            p1.spouse = p2;
            p2.spouse = p1;
            System.out.println("happy marriage "+p1.name+"  "+p2.name);
        }
        else
            System.out.println("is not single p1 or/and p2");
    }

    public static void divorce (person p1 , person p2){
        if(p1.spouse == p2 && p2.spouse == p1){
            p1.spouse = null;
            p2.spouse = null;
            System.out.println("successful divorce with "+p1.name+" and "+p2.name);
        }
        else
            System.out.println("you are not a couple");
    }
}
