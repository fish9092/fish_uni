public class TestPerson {
    public static void main(String[] args) {
        person angelo = new person("Weiwei", "Bello", 11111, null);
        person paolo = new person("Paolo", "Bello", 22222, null);
        System.out.println(angelo.check_name());
        System.out.println(angelo.getName());
        System.out.println(angelo.isSingle());
        person.join(angelo,paolo);
        System.out.println(angelo.isSingle());
        person.divorce(angelo, paolo);
        System.out.println(angelo.isSingle());
    }
}
