import java.util.Vector;

public class CreditAccount {
    //espresso in centesimi
    public int limit;
    public int balance;
    public final person owner;
    public final long id;
    private Vector<Long> IdRegistered = new Vector<>();

    public static final int default_limit = 10000;

    private long CheckId(long id){
        for(long check : IdRegistered)
            if (check == id)
                throw new IllegalArgumentException("ID exited");
        IdRegistered.add(id);
        return id;
    }

    private static int maxLimit(int limit){
        return Math.min(limit, default_limit);
    }

    private int checkBalance(int balance){
        if(balance < this.limit)
            throw new IllegalArgumentException("Amount not reached limit minimum");
        return balance;
    }

    public CreditAccount(int limit, int balance, person owner, long id) {
        this.limit = maxLimit(limit);
        this.owner = owner;
        this.balance = checkBalance(balance);
        this.id = CheckId(id);
    }

    public int deposit(int amount){
        if(amount < 0){
            System.out.println("deposit failed of negative amount");
            return this.balance;
        }
        return (this.balance += amount);
    }

    public int withdraw(int amount){
        if(amount < 0 || this.balance - amount < this.limit){
            System.out.println("withdrawal amount exceeds the minimum limit");
            return this.balance;
        }
        return (this.balance -= amount);
    }

    public void setLimit(int limit){
        limit = maxLimit(limit);
        if(limit > this.balance) {
            System.out.println("balance is lower than new minimum limit");
        }
        else{
            this.limit = limit;
            System.out.println("option executed");
        }
    }

    public static CreditAccount newOfLimitBalanceOwner(int limit, int balance, person owner){
        return new CreditAccount(maxLimit(limit),balance, owner, 0);
    }

    public static CreditAccount newOfBalanceOwner(int balance, person owner){
        return new CreditAccount(balance, balance, owner, 0);
    }

}
