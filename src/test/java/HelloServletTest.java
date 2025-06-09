import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class HelloServletTest {

    @Test
    public void testBasicAssertion() {
        // Simple test to verify the testing framework is working
        assertTrue(true, "Basic assertion should pass");
        assertEquals("Hello", "Hello", "String equality test");
    }
    
    @Test
    public void testStringConcatenation() {
        String result = "Hello" + ", " + "World";
        assertEquals("Hello, World", result, "String concatenation test");
    }
}

