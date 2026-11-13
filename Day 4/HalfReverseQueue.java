package Day 4;

public class HalfReverseQueue {


    public static void main(String[] args) {

        int a[] = {1, 2, 3, 4, 5, 6};

        Queue<Integer> q = new LinkedList<>();

        int n = a.length;
        int mid = n / 2;

        // Insert second half
        for (int i = mid; i < n; i++) {
            q.add(a[i]);
        }

        // Insert first half
        for (int i = 0; i < mid; i++) {
            q.add(a[i]);
        }

        System.out.println(q);
    }
}


    

