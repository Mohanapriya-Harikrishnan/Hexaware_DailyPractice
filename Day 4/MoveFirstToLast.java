public class MoveFirstToLast {


    public static void main(String[] args) {

        int a[] = {1, 2, 3, 4, 5};

        Queue<Integer> q = new LinkedList<>();

        // Insert elements into queue
        for (int i = 0; i < a.length; i++) {
            q.add(a[i]);
        }

        // Remove first element
        int temp = q.remove();

        // Insert it at the end
        q.add(temp);

        // Display queue
        System.out.println(q);
    }
}

    

