package com.example.webapp;

import com.example.webapp.CourseListServlet.Course;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CourseTest {

    @Test
    public void testCourseFields() {
        Course course = new Course("AWS Basics", "Intro to cloud services");
        assertEquals("AWS Basics", course.name);
        assertEquals("Intro to cloud services", course.description);
    }

    @Test
    public void testCourseWithNullDescription() {
        Course course = new Course("Docker", null);
        assertEquals("Docker", course.name);
        assertNull(course.description);
    }
}
