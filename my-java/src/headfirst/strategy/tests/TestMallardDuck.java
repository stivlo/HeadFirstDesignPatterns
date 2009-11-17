package headfirst.strategy.tests;

import headfirst.strategy.MallardDuck;
import org.junit.*;
import static org.junit.Assert.*;

import java.util.*;


public class TestMallardDuck {
    public MallardDuck testDuck;

    public TestMallardDuck() {
        testDuck = new MallardDuck();
    }

    @Test
    public void testDisplay() {
        Collection coll = new ArrayList();
        assertTrue(coll.isEmpty());
    }

    public static junit.framework.Test suite() {
        return new junit.framework.JUnit4TestAdapter(TestMallardDuck.class);
    }

    public static void main(String args[]) {
        org.junit.runner.JUnitCore.main(
            "headfirst.strategy.tests.TestMallardDuck");
    }
}
