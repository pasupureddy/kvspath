
package com.example.webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/courses")
public class CourseListServlet extends HttpServlet {

    public static class Course {
        public String name;
        public String description;

        public Course(String name, String description) {
            this.name = name;
            this.description = description;
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Course> courses = new ArrayList<>();
        courses.add(new Course("AWS for Beginners", "Learn cloud basics and core AWS services."));
        courses.add(new Course("DevOps Bootcamp", "CI/CD, Jenkins, Docker, Kubernetes explained."));
        courses.add(new Course("Azure Fundamentals", "Get started with Azure cloud services."));
        courses.add(new Course("Linux Essentials", "Master the Linux command line."));

        req.setAttribute("courses", courses);
        req.getRequestDispatcher("/courses.jsp").forward(req, resp);
    }
}
