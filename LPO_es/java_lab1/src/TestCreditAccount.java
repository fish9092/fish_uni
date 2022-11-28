public class TestCreditAccount {
    public static void main(String[] args) {
        person angelo = new person("Angelo","Weiwei",111111, null);
        CreditAccount a = new CreditAccount(100, 120, angelo, 123456);
        System.out.println(a.deposit(10));
        a.setLimit(120);
        System.out.println(a.limit);
        System.out.println(a.withdraw(10));
        CreditAccount p = CreditAccount.newOfLimitBalanceOwner(100,130, angelo);

    }

}
