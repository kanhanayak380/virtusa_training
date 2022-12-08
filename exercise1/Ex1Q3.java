class Q3 {
  public static void main(String[] args) {
    int arr[] = {9, 7, 5, 3, 1, 2, 4, 6, 8, 0};
    for(int i = 0; i < arr.length; i++) {
      for(int j = i + 1; j < arr.length; j++) {
        if(arr[i] > arr[j]) {
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }
    System.out.println("Second Largest Number: " + arr[arr.length - 2]);
  }
}