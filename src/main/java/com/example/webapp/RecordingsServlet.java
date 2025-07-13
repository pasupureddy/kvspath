
package com.example.webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/recordings")
public class RecordingsServlet extends HttpServlet {

    public static class Recording {
        public String title;
        public String url;

        public Recording(String title, String url) {
            this.title = title;
            this.url = url;
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Recording> recordings = new ArrayList<>();
        recordings.add(new Recording("AWS Intro - Class 1", "https://example.com/aws-class1"));
        recordings.add(new Recording("DevOps Basics - Class 2", "https://example.com/devops-class2"));
        recordings.add(new Recording("Kubernetes Deep Dive", "https://example.com/k8s-deepdive"));
        recordings.add(new Recording("Linux Crash Course", "https://example.com/linux-crash"));

        req.setAttribute("recordings", recordings);
        req.getRequestDispatcher("/recordings.jsp").forward(req, resp);
    }
}
