public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = new String();
  word = word.toLowerCase();
  for(int i = 0; i < word.length(); i++){
    if (word.charAt(i) >= 97 && word.charAt(i) <= 122){
      newWord = newWord + word.charAt(i);
      }
    }
  for(int check = 0; check < (newWord.length() / 2); check++){
    if (newWord.charAt(check) != newWord.charAt(newWord.length() - check - 1)){
      return false;
    }
  }
  return true;
}

