import java.util.concurrent.Semaphore;

public class TestOkolina {

    public static int NUM_RUN = 50;

    static Semaphore teacher;
    static Semaphore students;
    static Semaphore teacherEntered;
    static Semaphore studentEntered;
    static Semaphore studentCanLeave;

    public static void init() {

        teacher = new Semaphore(1);
        students = new Semaphore(50);
        teacherEntered = new Semaphore(0);
        studentEntered = new Semaphore(0);
        studentCanLeave = new Semaphore(0);

    }

    public static class Teacher extends Thread {

        public void distribute() {
            System.out.println("Teacher is distributing tests.");
        }

        public void examend() {
            System.out.println("Teacher takes the tests.");
        }

        public void teacherEnter() {
            System.out.println("Teacher entered the room.");
        }

        public void teacherLeave() {
            System.out.println("Teacher left the room.");
        }

        public void execute() throws InterruptedException {
                teacher.acquire();
                teacherEnter();
                teacherEntered.release(50);
                studentEntered.acquire(50);
                distribute();
                examend();
                studentCanLeave.release(50);
                teacherLeave();
                teacher.release();
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

    public static class Student extends Thread {

        public void studentEnter() {
            System.out.println("Student entered the room.");
        }

        public void studentLeave() {
            System.out.println("Student left the room.");
        }

        public void execute() throws InterruptedException {
               teacherEntered.acquire();
               studentEnter();
               studentEntered.release();
               studentCanLeave.acquire();
               studentLeave();
               teacherEntered.release();
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
        TestOkolina.init();

        // Create and start the silicon threads
        Teacher[] teacherThreads = new Teacher[2];
        for (int i = 0; i < 2; i++) {
            teacherThreads[i] = new Teacher();
            teacherThreads[i].start();
        }

        // Create and start the oxygen threads
        Student[] studentThreads = new Student[50];
        for (int i = 0; i < 50; i++) {
            studentThreads[i] = new Student();
            studentThreads[i].start();
        }

        for (int i = 0; i < 2; i++) {
            teacherThreads[i].join();
        }

        // Wait for all threads to finish executing
        for (int i = 0; i < 50; i++) {
            studentThreads[i].join();
        }
    }
}