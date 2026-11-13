public class movenegativetoend {

    public static void main(String[] args) {

        int[] arr = {2, -3, 4, -1, 5, -6, 7};

        int[] temp = new int[arr.length];

        int k = 0;

        // First loop: Store positive numbers and zero
        for (int i = 0; i < arr.length; i++) {

            if (arr[i] >= 0) {
                temp[k] = arr[i];
                k++;
            }
        }

        // Second loop: Store negative numbers
        for (int i = 0; i < arr.length; i++) {

            if (arr[i] < 0) {
                temp[k] = arr[i];
                k++;
            }
        }

        // Copy temp array back to original array
        for (int i = 0; i < arr.length; i++) {
            arr[i] = temp[i];
        }

        // Print the result
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}

    

