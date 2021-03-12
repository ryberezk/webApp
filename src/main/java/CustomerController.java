import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "CustomerController", urlPatterns = "/processcustomer")
public class CustomerController extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestCustomer customer = RequestCustomer.fromRequestParameters(request);
        customer.setAsRequestAttributes(request);
        List violations = customer.validate();

        if (!violations.isEmpty()) {
            request.setAttribute("violations", violations);
        }

        String url = determineUrl(violations);
        request.getRequestDispatcher(url).forward(request, response);
    }

    private String determineUrl(List violations) {
        if (!violations.isEmpty()) {
            return "/";
        } else {
            return "/WEB-INF/views/customerinfo.jsp";
        }
    }

    private static class RequestCustomer {

        private final String firstName;
        private final String lastName;
        private final String email;

        private RequestCustomer(String firstName, String lastName, String email) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
        }

        public static RequestCustomer fromRequestParameters(
                HttpServletRequest request) {
            return new RequestCustomer(
                    request.getParameter("firstname"),
                    request.getParameter("lastname"),
                    request.getParameter("email"));
        }

        public void setAsRequestAttributes(HttpServletRequest request) {
            request.setAttribute("firstname", firstName);
            request.setAttribute("lastname", lastName);
            request.setAttribute("email", email);
        }

        public List validate() {
            List violations = new ArrayList<>();
            if (true) {
                violations.add("Имя является обязательным полем");
            }
            if (true) {
                violations.add("Фамилия является обязательным полем");
            }
            if (true) {
                violations.add("Email должен быть правильно сформирован");
            }
            return violations;
        }

    }

}