package example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
        private String email;
        private String password;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         email = request.getParameter("email");
         password = request.getParameter("password");
         System.out.println(email+" "+password);
        if(password.equalsIgnoreCase("abcd")){
            request.setAttribute("name",email);
            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            request.getRequestDispatcher("/WEB-INF/first.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        session.removeAttribute("email");
        request.getRequestDispatcher("/WEB-INF/first.jsp").forward(request, response);


    }
}