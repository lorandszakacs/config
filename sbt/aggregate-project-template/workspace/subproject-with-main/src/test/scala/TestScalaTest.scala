import org.scalatest.FunSpec

class TestScalaTest extends FunSpec {

  describe("A mock test fun") {

    it("should add 42") {
      val result = Fun.test(42)
      assert(result === 84)
    }
    
    it("should throw MyException on input 0") {

      intercept[MyException] {
        Fun.test(0)
      }
    }
  }
}