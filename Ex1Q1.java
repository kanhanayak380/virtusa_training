import java.util.*;
class Q1 {
 public static void main(String[] args) {
   String[] strArray = {"abc", "def", "ABZ", "ASD", "AbC"};
   Set<String> s = new HashSet<String>();
   for(int i = 0; i < strArray.length; i++) {
   if(!s.contains(strArray[i].toLowerCase())) {
   s.add(strArray[i]);
   }
 }
 for(String l: s) {
  System.out.print(l + ", ");
  }
 }
}
