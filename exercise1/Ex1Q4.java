class HelloWorld {
  public static void main(String[] args) {
    int arr[] = {2, 5, 8, 9, 0, 1, 7, 10};
    for(int i = 0; i < arr.length - 1; i++) {
      for(int j = i + 1; j < arr.length; j++) {
        for(int k = 0; k < arr.length; k++) {
          if((i != j) && (arr[i] + arr[j] == arr[k])) {
            System.out.println("(" + arr[i] + ", " + arr[j] + ")");
          }
        }
      }
    }
  }
}
