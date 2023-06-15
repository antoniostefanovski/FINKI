import java.util.concurrent.Semaphore;

public class Si2O4 {

    public static int NUM_RUN = 100;

    static Semaphore si;
    static Semaphore o;
    static Semaphore siHere;
    static Semaphore oHere;
    static Semaphore canBond;
    static Semaphore finishedBonding;
    static Semaphore canLeave;

    static Semaphore lock;
    static int count;

    public static void init() {
        si = new Semaphore(2);
        o = new Semaphore(4);
        siHere = new Semaphore(0);
        oHere = new Semaphore(0);
        canBond = new Semaphore(0);
        finishedBonding = new Semaphore(0);
        canLeave = new Semaphore(0);

        lock = new Semaphore(1);
        count = 0;

    }

    public static class Si extends Thread {

        public void bond() {
            System.out.println("Si is bonding now.");
        }

        public void execute() throws InterruptedException {
            si.acquire();
            lock.acquire();
            count++;
            if(count == 2) {
                count = 0;
                lock.release();
                oHere.acquire(4);
                canBond.release(5);
                bond();
                finishedBonding.acquire(5);
                canLeave.release(5);
            }
            else{
                lock.release();
                canBond.acquire(); //prviot Si ke blokira
                bond();
                finishedBonding.release();
                canLeave.acquire();
            }
            si.release();
        }

        @Override
        public void run() {
            for (int i = 0; i < NUM_RUN; i++) {
                try {
                    execute();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static class O extends Thread {

        public void bond() {
            System.out.println("O is bonding now.");
        }

        public void execute() throws InterruptedException {
            o.acquire();
            oHere.release();
            canBond.acquire();
            bond();
            finishedBonding.release();
            canLeave.acquire();
            o.release();
        }

        @Override
        public void run() {
            for (int i = 0; i < NUM_RUN; i++) {
                try {
                    execute();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    public static void main(String[] args) throws InterruptedException {
        // Initialize the semaphore variables
        Si2O4.init();

        // Create and start the silicon threads
        Si[] siThreads = new Si[2];
        for (int i = 0; i < 2; i++) {
            siThreads[i] = new Si();
            siThreads[i].start();
        }

        // Create and start the oxygen threads
        O[] oThreads = new O[4];
        for (int i = 0; i < 4; i++) {
            oThreads[i] = new O();
            oThreads[i].start();
        }

        for (int i = 0; i < 2; i++) {
            siThreads[i].join();
        }

        // Wait for all threads to finish executing
        for (int i = 0; i < 4; i++) {
            oThreads[i].join();
        }
    }
}