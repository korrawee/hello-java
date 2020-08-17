public class HelloWorld
{
 public static void main(String []arg)
 {
  for(int w = 0 ; w < 5 ; w++ )
  {
   System.out.print(w + " ");
  }
  System.out.print("\n");


  int x = 0;
  while(x < 5)
  {
   System.out.print(x + " ");
   x++;
  }
  System.out.print("\n");


  int y = 0;
  do
  {
   System.out.print(y + " ");
   y++;
  }
  while(y < 5 );
  System.out.print("\n");



  String [] alphabet = {"H","e","l","l","o"," ","W","o","r","l","d"};
  for(String z : alphabet)
  {
   System.out.print(z);
  }
  System.out.print("\n");
 }
}
