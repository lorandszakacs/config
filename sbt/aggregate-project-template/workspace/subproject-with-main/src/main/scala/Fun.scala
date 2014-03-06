class MyException extends Exception

object Fun {
  def test(x: Int) = {
    if(x == 0)
      throw new MyException
      else
    42 + x
    }
}